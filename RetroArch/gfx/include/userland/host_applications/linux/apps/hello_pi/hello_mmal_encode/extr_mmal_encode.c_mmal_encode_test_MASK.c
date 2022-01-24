#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_19__ ;

/* Type definitions */
struct TYPE_26__ {int alloc_size; int length; int flags; int /*<<< orphan*/  data; } ;
struct TYPE_25__ {TYPE_4__* format; int /*<<< orphan*/  buffer_num_recommended; int /*<<< orphan*/  buffer_num; int /*<<< orphan*/  buffer_size_recommended; int /*<<< orphan*/  buffer_size; scalar_t__ is_enabled; } ;
struct TYPE_24__ {TYPE_3__* es; int /*<<< orphan*/  encoding; } ;
struct TYPE_21__ {void* height; void* width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_22__ {int width; int height; TYPE_1__ crop; } ;
struct TYPE_23__ {TYPE_2__ video; } ;
struct TYPE_20__ {TYPE_5__** output; scalar_t__ status; TYPE_5__** input; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_5__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_FOURCC_T ;
typedef  TYPE_6__ MMAL_BUFFER_HEADER_T ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* HEIGHT ; 
 int /*<<< orphan*/  INPUT_ENC ; 
 int MMAL_BUFFER_HEADER_FLAG_EOS ; 
 scalar_t__ MMAL_EAGAIN ; 
 int /*<<< orphan*/  MMAL_PARAMETER_JPEG_Q_FACTOR ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE ; 
 void* FUNC0 (void*,int) ; 
 void* WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_19__* encoder ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (TYPE_5__*,TYPE_6__*) ; 
 scalar_t__ FUNC12 (TYPE_5__*,TYPE_6__**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_5__*,TYPE_6__**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_5__*) ; 
 scalar_t__ FUNC15 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  sem ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

void FUNC19(MMAL_FOURCC_T encoding, // Encoding
                      const char* filename) // File name
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

   FUNC16("Encoding test image %s\n", filename);

   // Configure input

   portIn = encoder->input[0];
   encoder->status = MMAL_SUCCESS;

   if (portIn->is_enabled) {
      if (FUNC14(portIn) != MMAL_SUCCESS) {
         FUNC5(stderr, "Failed to disable input port\n");
         FUNC2(1);
      }
   }

   portIn->format->encoding = INPUT_ENC;
   portIn->format->es->video.width = FUNC0(WIDTH, 32);
   portIn->format->es->video.height = FUNC0(HEIGHT, 16);
   portIn->format->es->video.crop.x = 0;
   portIn->format->es->video.crop.y = 0;
   portIn->format->es->video.crop.width = WIDTH;
   portIn->format->es->video.crop.height = HEIGHT;
   if (FUNC9(portIn) != MMAL_SUCCESS) {
      FUNC5(stderr, "Failed to commit input port format\n");
      FUNC2(1);
   }

   portIn->buffer_size = portIn->buffer_size_recommended;
   portIn->buffer_num = portIn->buffer_num_recommended;

   if (FUNC15(portIn, MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE)
       != MMAL_SUCCESS) {
      FUNC5(stderr, "Failed to enable input port\n");
      FUNC2(1);
   }

   FUNC16("- input %4.4s %ux%u\n",
          (char*)&portIn->format->encoding,
          portIn->format->es->video.width, portIn->format->es->video.height);

   // Configure output

   portOut = encoder->output[0];

   if (portOut->is_enabled) {
      if (FUNC14(portOut) != MMAL_SUCCESS) {
         FUNC5(stderr, "Failed to disable output port\n");
         FUNC2(1);
      }
   }

   portOut->format->encoding = encoding;
   if (FUNC9(portOut) != MMAL_SUCCESS) {
      FUNC5(stderr, "Failed to commit output port format\n");
      FUNC2(1);
   }

   FUNC10(portOut, MMAL_PARAMETER_JPEG_Q_FACTOR, 100);

   portOut->buffer_size = portOut->buffer_size_recommended;
   portOut->buffer_num = portOut->buffer_num_recommended;

   if (FUNC15(portOut, MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE)
       != MMAL_SUCCESS) {
      FUNC5(stderr, "Failed to enable output port\n");
      FUNC2(1);
   }

   FUNC16("- output %4.4s\n", (char*)&encoding);

   // Perform the encoding

   outFile = FUNC4(filename, "w");
   if (!outFile) {
      FUNC5(stderr, "Failed to open file %s (%s)\n", filename, FUNC17(errno));
      FUNC2(1);
   }

   while (!eos) {

      // Send output buffers to be filled with encoded image.
      while (FUNC12(portOut, &out, 0) == MMAL_SUCCESS) {
         if (FUNC11(portOut, out) != MMAL_SUCCESS) {
            FUNC5(stderr, "Failed to send buffer\n");
            break;
         }
      }

      // Send image to be encoded.
      if (!sent && FUNC12(portIn, &in, 0) == MMAL_SUCCESS) {
         FUNC16("- sending %u bytes to encoder\n", in->alloc_size);
         FUNC1(in->data, in->alloc_size, portIn->format->es->video.width);
         in->length = in->alloc_size;
         in->flags = MMAL_BUFFER_HEADER_FLAG_EOS;
         if (FUNC11(portIn, in) != MMAL_SUCCESS) {
            FUNC5(stderr, "Failed to send buffer\n");
            break;
         }
         sent = 1;
      }

      // Get filled output buffers.
      status = FUNC13(portOut, &out, 0);
      if (status == MMAL_EAGAIN) {
         // No buffer available, wait for callback and loop.
         FUNC18(&sem);
         continue;
      } else if (status != MMAL_SUCCESS) {
         FUNC5(stderr, "Failed to get full buffer\n");
         FUNC2(1);
      }

      FUNC16("- received %i bytes\n", out->length);
      eos = out->flags & MMAL_BUFFER_HEADER_FLAG_EOS;

      nw = FUNC6(out->data, 1, out->length, outFile);
      if (nw != out->length) {
         FUNC5(stderr, "Failed to write complete buffer\n");
         FUNC2(1);
      }
      outputWritten += nw;

      FUNC7(out);
   }

   FUNC8(portOut);

   FUNC3(outFile);
   FUNC16("- written %u bytes to %s\n\n", outputWritten, filename);
}