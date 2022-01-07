; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@AV_LOG_SKIP_REPEATED = common dso_local global i32 0, align 4
@ffprobe_cleanup = common dso_local global i32 0, align 4
@real_options = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@opt_input_file = common dso_local global i32 0, align 4
@do_show_log = common dso_local global i64 0, align 8
@log_callback = common dso_local global i32 0, align 4
@CHAPTERS = common dso_local global i32 0, align 4
@chapters = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@error = common dso_local global i32 0, align 4
@FORMAT = common dso_local global i32 0, align 4
@format = common dso_local global i32 0, align 4
@FRAMES = common dso_local global i32 0, align 4
@frames = common dso_local global i32 0, align 4
@LIBRARY_VERSIONS = common dso_local global i32 0, align 4
@library_versions = common dso_local global i32 0, align 4
@PACKETS = common dso_local global i32 0, align 4
@packets = common dso_local global i32 0, align 4
@PIXEL_FORMATS = common dso_local global i32 0, align 4
@pixel_formats = common dso_local global i32 0, align 4
@PIXEL_FORMAT_FLAGS = common dso_local global i32 0, align 4
@pixel_format_flags = common dso_local global i32 0, align 4
@PIXEL_FORMAT_COMPONENTS = common dso_local global i32 0, align 4
@pixel_format_components = common dso_local global i32 0, align 4
@PROGRAM_VERSION = common dso_local global i32 0, align 4
@program_version = common dso_local global i32 0, align 4
@PROGRAMS = common dso_local global i32 0, align 4
@programs = common dso_local global i32 0, align 4
@STREAMS = common dso_local global i32 0, align 4
@streams = common dso_local global i32 0, align 4
@STREAM_DISPOSITION = common dso_local global i32 0, align 4
@stream_disposition = common dso_local global i32 0, align 4
@PROGRAM_STREAM_DISPOSITION = common dso_local global i32 0, align 4
@CHAPTER_TAGS = common dso_local global i32 0, align 4
@chapter_tags = common dso_local global i32 0, align 4
@FORMAT_TAGS = common dso_local global i32 0, align 4
@format_tags = common dso_local global i32 0, align 4
@FRAME_TAGS = common dso_local global i32 0, align 4
@frame_tags = common dso_local global i32 0, align 4
@PROGRAM_TAGS = common dso_local global i32 0, align 4
@program_tags = common dso_local global i32 0, align 4
@STREAM_TAGS = common dso_local global i32 0, align 4
@stream_tags = common dso_local global i32 0, align 4
@PROGRAM_STREAM_TAGS = common dso_local global i32 0, align 4
@PACKET_TAGS = common dso_local global i32 0, align 4
@packet_tags = common dso_local global i32 0, align 4
@do_bitexact = common dso_local global i64 0, align 8
@do_show_program_version = common dso_local global i64 0, align 8
@do_show_library_versions = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"-bitexact and -show_program_version or -show_library_versions options are incompatible\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@print_format = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"No name specified for the output format\0A\00", align 1
@show_data_hash = common dso_local global i8* null, align 8
@hash = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Unknown hash algorithm '%s'\0AKnown algorithms:\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Unknown output format with name '%s'\0A\00", align 1
@sections = common dso_local global %struct.TYPE_15__* null, align 8
@xml_writer = common dso_local global i32 0, align 4
@AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES = common dso_local global i32 0, align 4
@SECTION_ID_ROOT = common dso_local global i32 0, align 4
@do_show_pixel_formats = common dso_local global i64 0, align 8
@input_filename = common dso_local global i64 0, align 8
@do_show_format = common dso_local global i64 0, align 8
@do_show_programs = common dso_local global i64 0, align 8
@do_show_streams = common dso_local global i64 0, align 8
@do_show_chapters = common dso_local global i64 0, align 8
@do_show_packets = common dso_local global i64 0, align 8
@do_show_error = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"You have to specify one input file.\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Use -h to get full help or, even better, run 'man %s'.\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@read_intervals = common dso_local global i64 0, align 8
@log_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = call i32 (...) @init_dynload()
  %15 = load i32, i32* @AV_LOG_SKIP_REPEATED, align 4
  %16 = call i32 @av_log_set_flags(i32 %15)
  %17 = load i32, i32* @ffprobe_cleanup, align 4
  %18 = call i32 @register_exit(i32 %17)
  %19 = load i32, i32* @real_options, align 4
  store i32 %19, i32* @options, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* @options, align 4
  %23 = call i32 @parse_loglevel(i32 %20, i8** %21, i32 %22)
  %24 = call i32 (...) @avformat_network_init()
  %25 = call i32 (...) @init_opts()
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* @options, align 4
  %29 = call i32 @show_banner(i32 %26, i8** %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* @options, align 4
  %33 = load i32, i32* @opt_input_file, align 4
  %34 = call i32 @parse_options(i32* null, i32 %30, i8** %31, i32 %32, i32 %33)
  %35 = load i64, i64* @do_show_log, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @log_callback, align 4
  %39 = call i32 @av_log_set_callback(i32 %38)
  br label %40

40:                                               ; preds = %37, %2
  %41 = load i32, i32* @CHAPTERS, align 4
  %42 = load i32, i32* @chapters, align 4
  %43 = call i32 @SET_DO_SHOW(i32 %41, i32 %42)
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @error, align 4
  %46 = call i32 @SET_DO_SHOW(i32 %44, i32 %45)
  %47 = load i32, i32* @FORMAT, align 4
  %48 = load i32, i32* @format, align 4
  %49 = call i32 @SET_DO_SHOW(i32 %47, i32 %48)
  %50 = load i32, i32* @FRAMES, align 4
  %51 = load i32, i32* @frames, align 4
  %52 = call i32 @SET_DO_SHOW(i32 %50, i32 %51)
  %53 = load i32, i32* @LIBRARY_VERSIONS, align 4
  %54 = load i32, i32* @library_versions, align 4
  %55 = call i32 @SET_DO_SHOW(i32 %53, i32 %54)
  %56 = load i32, i32* @PACKETS, align 4
  %57 = load i32, i32* @packets, align 4
  %58 = call i32 @SET_DO_SHOW(i32 %56, i32 %57)
  %59 = load i32, i32* @PIXEL_FORMATS, align 4
  %60 = load i32, i32* @pixel_formats, align 4
  %61 = call i32 @SET_DO_SHOW(i32 %59, i32 %60)
  %62 = load i32, i32* @PIXEL_FORMAT_FLAGS, align 4
  %63 = load i32, i32* @pixel_format_flags, align 4
  %64 = call i32 @SET_DO_SHOW(i32 %62, i32 %63)
  %65 = load i32, i32* @PIXEL_FORMAT_COMPONENTS, align 4
  %66 = load i32, i32* @pixel_format_components, align 4
  %67 = call i32 @SET_DO_SHOW(i32 %65, i32 %66)
  %68 = load i32, i32* @PROGRAM_VERSION, align 4
  %69 = load i32, i32* @program_version, align 4
  %70 = call i32 @SET_DO_SHOW(i32 %68, i32 %69)
  %71 = load i32, i32* @PROGRAMS, align 4
  %72 = load i32, i32* @programs, align 4
  %73 = call i32 @SET_DO_SHOW(i32 %71, i32 %72)
  %74 = load i32, i32* @STREAMS, align 4
  %75 = load i32, i32* @streams, align 4
  %76 = call i32 @SET_DO_SHOW(i32 %74, i32 %75)
  %77 = load i32, i32* @STREAM_DISPOSITION, align 4
  %78 = load i32, i32* @stream_disposition, align 4
  %79 = call i32 @SET_DO_SHOW(i32 %77, i32 %78)
  %80 = load i32, i32* @PROGRAM_STREAM_DISPOSITION, align 4
  %81 = load i32, i32* @stream_disposition, align 4
  %82 = call i32 @SET_DO_SHOW(i32 %80, i32 %81)
  %83 = load i32, i32* @CHAPTER_TAGS, align 4
  %84 = load i32, i32* @chapter_tags, align 4
  %85 = call i32 @SET_DO_SHOW(i32 %83, i32 %84)
  %86 = load i32, i32* @FORMAT_TAGS, align 4
  %87 = load i32, i32* @format_tags, align 4
  %88 = call i32 @SET_DO_SHOW(i32 %86, i32 %87)
  %89 = load i32, i32* @FRAME_TAGS, align 4
  %90 = load i32, i32* @frame_tags, align 4
  %91 = call i32 @SET_DO_SHOW(i32 %89, i32 %90)
  %92 = load i32, i32* @PROGRAM_TAGS, align 4
  %93 = load i32, i32* @program_tags, align 4
  %94 = call i32 @SET_DO_SHOW(i32 %92, i32 %93)
  %95 = load i32, i32* @STREAM_TAGS, align 4
  %96 = load i32, i32* @stream_tags, align 4
  %97 = call i32 @SET_DO_SHOW(i32 %95, i32 %96)
  %98 = load i32, i32* @PROGRAM_STREAM_TAGS, align 4
  %99 = load i32, i32* @stream_tags, align 4
  %100 = call i32 @SET_DO_SHOW(i32 %98, i32 %99)
  %101 = load i32, i32* @PACKET_TAGS, align 4
  %102 = load i32, i32* @packet_tags, align 4
  %103 = call i32 @SET_DO_SHOW(i32 %101, i32 %102)
  %104 = load i64, i64* @do_bitexact, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %40
  %107 = load i64, i64* @do_show_program_version, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* @do_show_library_versions, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109, %106
  %113 = load i32, i32* @AV_LOG_ERROR, align 4
  %114 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %113, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %11, align 4
  br label %283

117:                                              ; preds = %109, %40
  %118 = call i32 (...) @writer_register_all()
  %119 = load i64, i64* @print_format, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = call i64 @av_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i64 %122, i64* @print_format, align 8
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i64, i64* @print_format, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = call i32 @AVERROR(i32 %127)
  store i32 %128, i32* %11, align 4
  br label %283

129:                                              ; preds = %123
  %130 = load i64, i64* @print_format, align 8
  %131 = call i8* @av_strtok(i64 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  store i8* %131, i8** %9, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = call i32 @AVERROR(i32 %137)
  store i32 %138, i32* %11, align 4
  br label %283

139:                                              ; preds = %129
  %140 = load i8*, i8** %8, align 8
  store i8* %140, i8** %10, align 8
  %141 = load i8*, i8** @show_data_hash, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %172

143:                                              ; preds = %139
  %144 = load i8*, i8** @show_data_hash, align 8
  %145 = call i32 @av_hash_alloc(i32* @hash, i8* %144)
  store i32 %145, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %143
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @EINVAL, align 4
  %150 = call i32 @AVERROR(i32 %149)
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %147
  %153 = load i32, i32* @AV_LOG_ERROR, align 4
  %154 = load i8*, i8** @show_data_hash, align 8
  %155 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %153, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %154)
  store i32 0, i32* %12, align 4
  br label %156

156:                                              ; preds = %164, %152
  %157 = load i32, i32* %12, align 4
  %158 = call i8* @av_hash_names(i32 %157)
  store i8* %158, i8** %13, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i32, i32* @AV_LOG_ERROR, align 4
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %156

167:                                              ; preds = %156
  %168 = load i32, i32* @AV_LOG_ERROR, align 4
  %169 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %147
  br label %283

171:                                              ; preds = %143
  br label %172

172:                                              ; preds = %171, %139
  %173 = load i8*, i8** %9, align 8
  %174 = call i32* @writer_get_by_name(i8* %173)
  store i32* %174, i32** %6, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %183, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = load i8*, i8** %9, align 8
  %180 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %178, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %179)
  %181 = load i32, i32* @EINVAL, align 4
  %182 = call i32 @AVERROR(i32 %181)
  store i32 %182, i32* %11, align 4
  br label %283

183:                                              ; preds = %172
  %184 = load i32*, i32** %6, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sections, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sections, align 8
  %188 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_15__* %187)
  %189 = call i32 @writer_open(%struct.TYPE_14__** %7, i32* %184, i8* %185, %struct.TYPE_15__* %186, i32 %188)
  store i32 %189, i32* %11, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %282

191:                                              ; preds = %183
  %192 = load i32*, i32** %6, align 8
  %193 = icmp eq i32* %192, @xml_writer
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i32, i32* @AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %194, %191
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %202 = load i32, i32* @SECTION_ID_ROOT, align 4
  %203 = call i32 @writer_print_section_header(%struct.TYPE_14__* %201, i32 %202)
  %204 = load i64, i64* @do_show_program_version, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %208 = call i32 @ffprobe_show_program_version(%struct.TYPE_14__* %207)
  br label %209

209:                                              ; preds = %206, %200
  %210 = load i64, i64* @do_show_library_versions, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %214 = call i32 @ffprobe_show_library_versions(%struct.TYPE_14__* %213)
  br label %215

215:                                              ; preds = %212, %209
  %216 = load i64, i64* @do_show_pixel_formats, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %220 = call i32 @ffprobe_show_pixel_formats(%struct.TYPE_14__* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i64, i64* @input_filename, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %260, label %224

224:                                              ; preds = %221
  %225 = load i64, i64* @do_show_format, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %251, label %227

227:                                              ; preds = %224
  %228 = load i64, i64* @do_show_programs, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %251, label %230

230:                                              ; preds = %227
  %231 = load i64, i64* @do_show_streams, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %251, label %233

233:                                              ; preds = %230
  %234 = load i64, i64* @do_show_chapters, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %251, label %236

236:                                              ; preds = %233
  %237 = load i64, i64* @do_show_packets, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %251, label %239

239:                                              ; preds = %236
  %240 = load i64, i64* @do_show_error, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %239
  %243 = load i64, i64* @do_show_program_version, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %260, label %245

245:                                              ; preds = %242
  %246 = load i64, i64* @do_show_library_versions, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %260, label %248

248:                                              ; preds = %245
  %249 = load i64, i64* @do_show_pixel_formats, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %260, label %251

251:                                              ; preds = %248, %239, %236, %233, %230, %227, %224
  %252 = call i32 (...) @show_usage()
  %253 = load i32, i32* @AV_LOG_ERROR, align 4
  %254 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %253, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %255 = load i32, i32* @AV_LOG_ERROR, align 4
  %256 = load i8*, i8** @program_name, align 8
  %257 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %255, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i8* %256)
  %258 = load i32, i32* @EINVAL, align 4
  %259 = call i32 @AVERROR(i32 %258)
  store i32 %259, i32* %11, align 4
  br label %278

260:                                              ; preds = %248, %245, %242, %221
  %261 = load i64, i64* @input_filename, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %277

263:                                              ; preds = %260
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %265 = load i64, i64* @input_filename, align 8
  %266 = call i32 @probe_file(%struct.TYPE_14__* %264, i64 %265)
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %263
  %270 = load i64, i64* @do_show_error, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %274 = load i32, i32* %11, align 4
  %275 = call i32 @show_error(%struct.TYPE_14__* %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %269, %263
  br label %277

277:                                              ; preds = %276, %260
  br label %278

278:                                              ; preds = %277, %251
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %280 = call i32 @writer_print_section_footer(%struct.TYPE_14__* %279)
  %281 = call i32 @writer_close(%struct.TYPE_14__** %7)
  br label %282

282:                                              ; preds = %278, %183
  br label %283

283:                                              ; preds = %282, %177, %170, %134, %126, %112
  %284 = call i32 @av_freep(i64* @print_format)
  %285 = call i32 @av_freep(i64* @read_intervals)
  %286 = call i32 @av_hash_freep(i32* @hash)
  %287 = call i32 (...) @uninit_opts()
  store i32 0, i32* %12, align 4
  br label %288

288:                                              ; preds = %300, %283
  %289 = load i32, i32* %12, align 4
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sections, align 8
  %291 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_15__* %290)
  %292 = icmp slt i32 %289, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %288
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sections, align 8
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = call i32 @av_dict_free(i32* %298)
  br label %300

300:                                              ; preds = %293
  %301 = load i32, i32* %12, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %12, align 4
  br label %288

303:                                              ; preds = %288
  %304 = call i32 (...) @avformat_network_deinit()
  %305 = load i32, i32* %11, align 4
  %306 = icmp slt i32 %305, 0
  %307 = zext i1 %306 to i32
  ret i32 %307
}

declare dso_local i32 @init_dynload(...) #1

declare dso_local i32 @av_log_set_flags(i32) #1

declare dso_local i32 @register_exit(i32) #1

declare dso_local i32 @parse_loglevel(i32, i8**, i32) #1

declare dso_local i32 @avformat_network_init(...) #1

declare dso_local i32 @init_opts(...) #1

declare dso_local i32 @show_banner(i32, i8**, i32) #1

declare dso_local i32 @parse_options(i32*, i32, i8**, i32, i32) #1

declare dso_local i32 @av_log_set_callback(i32) #1

declare dso_local i32 @SET_DO_SHOW(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @writer_register_all(...) #1

declare dso_local i64 @av_strdup(i8*) #1

declare dso_local i8* @av_strtok(i64, i8*, i8**) #1

declare dso_local i32 @av_hash_alloc(i32*, i8*) #1

declare dso_local i8* @av_hash_names(i32) #1

declare dso_local i32* @writer_get_by_name(i8*) #1

declare dso_local i32 @writer_open(%struct.TYPE_14__**, i32*, i8*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_15__*) #1

declare dso_local i32 @writer_print_section_header(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ffprobe_show_program_version(%struct.TYPE_14__*) #1

declare dso_local i32 @ffprobe_show_library_versions(%struct.TYPE_14__*) #1

declare dso_local i32 @ffprobe_show_pixel_formats(%struct.TYPE_14__*) #1

declare dso_local i32 @show_usage(...) #1

declare dso_local i32 @probe_file(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @show_error(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @writer_print_section_footer(%struct.TYPE_14__*) #1

declare dso_local i32 @writer_close(%struct.TYPE_14__**) #1

declare dso_local i32 @av_freep(i64*) #1

declare dso_local i32 @av_hash_freep(i32*) #1

declare dso_local i32 @uninit_opts(...) #1

declare dso_local i32 @av_dict_free(i32*) #1

declare dso_local i32 @avformat_network_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
