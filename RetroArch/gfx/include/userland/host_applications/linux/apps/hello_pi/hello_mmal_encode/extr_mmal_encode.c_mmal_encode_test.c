
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


struct TYPE_26__ {int alloc_size; int length; int flags; int data; } ;
struct TYPE_25__ {TYPE_4__* format; int buffer_num_recommended; int buffer_num; int buffer_size_recommended; int buffer_size; scalar_t__ is_enabled; } ;
struct TYPE_24__ {TYPE_3__* es; int encoding; } ;
struct TYPE_21__ {void* height; void* width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_22__ {int width; int height; TYPE_1__ crop; } ;
struct TYPE_23__ {TYPE_2__ video; } ;
struct TYPE_20__ {TYPE_5__** output; scalar_t__ status; TYPE_5__** input; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_5__ MMAL_PORT_T ;
typedef int MMAL_FOURCC_T ;
typedef TYPE_6__ MMAL_BUFFER_HEADER_T ;
typedef int FILE ;


 void* HEIGHT ;
 int INPUT_ENC ;
 int MMAL_BUFFER_HEADER_FLAG_EOS ;
 scalar_t__ MMAL_EAGAIN ;
 int MMAL_PARAMETER_JPEG_Q_FACTOR ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE ;
 void* VCOS_ALIGN_UP (void*,int) ;
 void* WIDTH ;
 int create_rgba_test_image (int ,int,int) ;
 TYPE_19__* encoder ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int fwrite (int ,int,int,int *) ;
 int mmal_buffer_header_release (TYPE_6__*) ;
 int mmal_port_flush (TYPE_5__*) ;
 scalar_t__ mmal_port_format_commit (TYPE_5__*) ;
 int mmal_port_parameter_set_uint32 (TYPE_5__*,int ,int) ;
 scalar_t__ mmal_port_send_buffer (TYPE_5__*,TYPE_6__*) ;
 scalar_t__ mmal_wrapper_buffer_get_empty (TYPE_5__*,TYPE_6__**,int ) ;
 scalar_t__ mmal_wrapper_buffer_get_full (TYPE_5__*,TYPE_6__**,int ) ;
 scalar_t__ mmal_wrapper_port_disable (TYPE_5__*) ;
 scalar_t__ mmal_wrapper_port_enable (TYPE_5__*,int ) ;
 int printf (char*,...) ;
 int sem ;
 int stderr ;
 char* strerror (int ) ;
 int vcos_semaphore_wait (int *) ;

void mmal_encode_test(MMAL_FOURCC_T encoding,
                      const char* filename)
{
   MMAL_PORT_T* portIn;
   MMAL_PORT_T* portOut;
   MMAL_BUFFER_HEADER_T* in;
   MMAL_BUFFER_HEADER_T* out;
   MMAL_STATUS_T status;
   int eos = 0;
   int sent = 0;
   int outputWritten = 0;
   FILE* outFile;
   int nw;

   printf("Encoding test image %s\n", filename);



   portIn = encoder->input[0];
   encoder->status = MMAL_SUCCESS;

   if (portIn->is_enabled) {
      if (mmal_wrapper_port_disable(portIn) != MMAL_SUCCESS) {
         fprintf(stderr, "Failed to disable input port\n");
         exit(1);
      }
   }

   portIn->format->encoding = INPUT_ENC;
   portIn->format->es->video.width = VCOS_ALIGN_UP(WIDTH, 32);
   portIn->format->es->video.height = VCOS_ALIGN_UP(HEIGHT, 16);
   portIn->format->es->video.crop.x = 0;
   portIn->format->es->video.crop.y = 0;
   portIn->format->es->video.crop.width = WIDTH;
   portIn->format->es->video.crop.height = HEIGHT;
   if (mmal_port_format_commit(portIn) != MMAL_SUCCESS) {
      fprintf(stderr, "Failed to commit input port format\n");
      exit(1);
   }

   portIn->buffer_size = portIn->buffer_size_recommended;
   portIn->buffer_num = portIn->buffer_num_recommended;

   if (mmal_wrapper_port_enable(portIn, MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE)
       != MMAL_SUCCESS) {
      fprintf(stderr, "Failed to enable input port\n");
      exit(1);
   }

   printf("- input %4.4s %ux%u\n",
          (char*)&portIn->format->encoding,
          portIn->format->es->video.width, portIn->format->es->video.height);



   portOut = encoder->output[0];

   if (portOut->is_enabled) {
      if (mmal_wrapper_port_disable(portOut) != MMAL_SUCCESS) {
         fprintf(stderr, "Failed to disable output port\n");
         exit(1);
      }
   }

   portOut->format->encoding = encoding;
   if (mmal_port_format_commit(portOut) != MMAL_SUCCESS) {
      fprintf(stderr, "Failed to commit output port format\n");
      exit(1);
   }

   mmal_port_parameter_set_uint32(portOut, MMAL_PARAMETER_JPEG_Q_FACTOR, 100);

   portOut->buffer_size = portOut->buffer_size_recommended;
   portOut->buffer_num = portOut->buffer_num_recommended;

   if (mmal_wrapper_port_enable(portOut, MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE)
       != MMAL_SUCCESS) {
      fprintf(stderr, "Failed to enable output port\n");
      exit(1);
   }

   printf("- output %4.4s\n", (char*)&encoding);



   outFile = fopen(filename, "w");
   if (!outFile) {
      fprintf(stderr, "Failed to open file %s (%s)\n", filename, strerror(errno));
      exit(1);
   }

   while (!eos) {


      while (mmal_wrapper_buffer_get_empty(portOut, &out, 0) == MMAL_SUCCESS) {
         if (mmal_port_send_buffer(portOut, out) != MMAL_SUCCESS) {
            fprintf(stderr, "Failed to send buffer\n");
            break;
         }
      }


      if (!sent && mmal_wrapper_buffer_get_empty(portIn, &in, 0) == MMAL_SUCCESS) {
         printf("- sending %u bytes to encoder\n", in->alloc_size);
         create_rgba_test_image(in->data, in->alloc_size, portIn->format->es->video.width);
         in->length = in->alloc_size;
         in->flags = MMAL_BUFFER_HEADER_FLAG_EOS;
         if (mmal_port_send_buffer(portIn, in) != MMAL_SUCCESS) {
            fprintf(stderr, "Failed to send buffer\n");
            break;
         }
         sent = 1;
      }


      status = mmal_wrapper_buffer_get_full(portOut, &out, 0);
      if (status == MMAL_EAGAIN) {

         vcos_semaphore_wait(&sem);
         continue;
      } else if (status != MMAL_SUCCESS) {
         fprintf(stderr, "Failed to get full buffer\n");
         exit(1);
      }

      printf("- received %i bytes\n", out->length);
      eos = out->flags & MMAL_BUFFER_HEADER_FLAG_EOS;

      nw = fwrite(out->data, 1, out->length, outFile);
      if (nw != out->length) {
         fprintf(stderr, "Failed to write complete buffer\n");
         exit(1);
      }
      outputWritten += nw;

      mmal_buffer_header_release(out);
   }

   mmal_port_flush(portOut);

   fclose(outFile);
   printf("- written %u bytes to %s\n\n", outputWritten, filename);
}
