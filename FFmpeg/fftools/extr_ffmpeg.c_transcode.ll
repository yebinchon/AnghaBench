; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_transcode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_transcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 (i32)*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i64, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }

@stdin_interaction = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Press [q] to stop, [?] for help\0A\00", align 1
@received_sigterm = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"No more output streams to write to, finishing.\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Error while filtering: %s\0A\00", align 1
@nb_input_streams = common dso_local global i32 0, align 4
@input_streams = common dso_local global %struct.TYPE_13__** null, align 8
@input_files = common dso_local global %struct.TYPE_16__** null, align 8
@nb_output_files = common dso_local global i32 0, align 4
@output_files = common dso_local global %struct.TYPE_15__** null, align 8
@.str.3 = private unnamed_addr constant [104 x i8] c"Nothing was written into output file %d (%s), because at least one of its streams received no packets.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error writing trailer of %s: %s\0A\00", align 1
@exit_on_error = common dso_local global i64 0, align 8
@nb_output_streams = common dso_local global i32 0, align 4
@output_streams = common dso_local global %struct.TYPE_12__** null, align 8
@abort_on_flags = common dso_local global i32 0, align 4
@ABORT_ON_FLAG_EMPTY_OUTPUT = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Empty output\0A\00", align 1
@hw_device_ctx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"Error closing logfile, loss of information possible: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @transcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transcode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 0, i64* %7, align 8
  %9 = call i32 (...) @transcode_init()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %221

13:                                               ; preds = %0
  %14 = load i64, i64* @stdin_interaction, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @AV_LOG_INFO, align 4
  %18 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  %20 = call i64 (...) @av_gettime_relative()
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %54, %19
  %22 = load i32, i32* @received_sigterm, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = call i64 (...) @av_gettime_relative()
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* @stdin_interaction, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @check_keyboard_interaction(i64 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %58

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %25
  %36 = call i32 (...) @need_output()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %40 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %58

41:                                               ; preds = %35
  %42 = call i32 (...) @transcode_step()
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @AVERROR_EOF, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @av_err2str(i32 %51)
  %53 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %58

54:                                               ; preds = %45, %41
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @print_report(i32 0, i64 %55, i64 %56)
  br label %21

58:                                               ; preds = %49, %38, %33, %21
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %82, %58
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @nb_input_streams, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @input_streams, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %64, i64 %66
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %5, align 8
  %69 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @input_files, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %69, i64 %72
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %63
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = call i32 @process_input_packet(%struct.TYPE_13__* %79, i32* null, i32 0)
  br label %81

81:                                               ; preds = %78, %63
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %59

85:                                               ; preds = %59
  %86 = call i32 (...) @flush_encoders()
  %87 = call i32 (...) @term_exit()
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %133, %85
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @nb_output_files, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %88
  %93 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @output_files, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %93, i64 %95
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %3, align 8
  %100 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @output_files, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %100, i64 %102
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %92
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = load i32, i32* %2, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %109, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %113)
  br label %133

115:                                              ; preds = %92
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = call i32 @av_write_trailer(%struct.TYPE_14__* %116)
  store i32 %117, i32* %1, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %1, align 4
  %125 = call i32 @av_err2str(i32 %124)
  %126 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %125)
  %127 = load i64, i64* @exit_on_error, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = call i32 @exit_program(i32 1)
  br label %131

131:                                              ; preds = %129, %119
  br label %132

132:                                              ; preds = %131, %115
  br label %133

133:                                              ; preds = %132, %108
  %134 = load i32, i32* %2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %2, align 4
  br label %88

136:                                              ; preds = %88
  %137 = load i64, i64* %6, align 8
  %138 = call i64 (...) @av_gettime_relative()
  %139 = call i32 @print_report(i32 1, i64 %137, i64 %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %166, %136
  %141 = load i32, i32* %2, align 4
  %142 = load i32, i32* @nb_output_streams, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %169

144:                                              ; preds = %140
  %145 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @output_streams, align 8
  %146 = load i32, i32* %2, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %145, i64 %147
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  store %struct.TYPE_12__* %149, %struct.TYPE_12__** %4, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 10
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 9
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = call i32 @av_freep(i32* %158)
  br label %160

160:                                              ; preds = %154, %144
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 8
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %7, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %7, align 8
  br label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %2, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %2, align 4
  br label %140

169:                                              ; preds = %140
  %170 = load i64, i64* %7, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* @abort_on_flags, align 4
  %174 = load i32, i32* @ABORT_ON_FLAG_EMPTY_OUTPUT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load i32, i32* @AV_LOG_FATAL, align 4
  %179 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %180 = call i32 @exit_program(i32 1)
  br label %181

181:                                              ; preds = %177, %172, %169
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %215, %181
  %183 = load i32, i32* %2, align 4
  %184 = load i32, i32* @nb_input_streams, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %218

186:                                              ; preds = %182
  %187 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @input_streams, align 8
  %188 = load i32, i32* %2, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %187, i64 %189
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  store %struct.TYPE_13__* %191, %struct.TYPE_13__** %5, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %214

196:                                              ; preds = %186
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @avcodec_close(i32 %199)
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  %203 = load i32 (i32)*, i32 (i32)** %202, align 8
  %204 = icmp ne i32 (i32)* %203, null
  br i1 %204, label %205, label %213

205:                                              ; preds = %196
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 2
  %208 = load i32 (i32)*, i32 (i32)** %207, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 %208(i32 %211)
  br label %213

213:                                              ; preds = %205, %196
  br label %214

214:                                              ; preds = %213, %186
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %2, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %2, align 4
  br label %182

218:                                              ; preds = %182
  %219 = call i32 @av_buffer_unref(i32* @hw_device_ctx)
  %220 = call i32 (...) @hw_device_free_all()
  store i32 0, i32* %1, align 4
  br label %221

221:                                              ; preds = %218, %12
  %222 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @output_streams, align 8
  %223 = icmp ne %struct.TYPE_12__** %222, null
  br i1 %223, label %224, label %284

224:                                              ; preds = %221
  store i32 0, i32* %2, align 4
  br label %225

225:                                              ; preds = %280, %224
  %226 = load i32, i32* %2, align 4
  %227 = load i32, i32* @nb_output_streams, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %283

229:                                              ; preds = %225
  %230 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @output_streams, align 8
  %231 = load i32, i32* %2, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %230, i64 %232
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  store %struct.TYPE_12__* %234, %struct.TYPE_12__** %4, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %236 = icmp ne %struct.TYPE_12__* %235, null
  br i1 %236, label %237, label %279

237:                                              ; preds = %229
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %257

242:                                              ; preds = %237
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 7
  %245 = load i32*, i32** %244, align 8
  %246 = call i64 @fclose(i32* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = load i32, i32* @AV_LOG_ERROR, align 4
  %250 = load i32, i32* @errno, align 4
  %251 = call i32 @AVERROR(i32 %250)
  %252 = call i32 @av_err2str(i32 %251)
  %253 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %249, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %248, %242
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 7
  store i32* null, i32** %256, align 8
  br label %257

257:                                              ; preds = %254, %237
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 6
  %260 = call i32 @av_freep(i32* %259)
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 5
  %263 = call i32 @av_freep(i32* %262)
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 4
  %266 = call i32 @av_freep(i32* %265)
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 3
  %269 = call i32 @av_dict_free(i32* %268)
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 2
  %272 = call i32 @av_dict_free(i32* %271)
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = call i32 @av_dict_free(i32* %274)
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = call i32 @av_dict_free(i32* %277)
  br label %279

279:                                              ; preds = %257, %229
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %2, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %2, align 4
  br label %225

283:                                              ; preds = %225
  br label %284

284:                                              ; preds = %283, %221
  %285 = load i32, i32* %1, align 4
  ret i32 %285
}

declare dso_local i32 @transcode_init(...) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i64 @av_gettime_relative(...) #1

declare dso_local i64 @check_keyboard_interaction(i64) #1

declare dso_local i32 @need_output(...) #1

declare dso_local i32 @transcode_step(...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @print_report(i32, i64, i64) #1

declare dso_local i32 @process_input_packet(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @flush_encoders(...) #1

declare dso_local i32 @term_exit(...) #1

declare dso_local i32 @av_write_trailer(%struct.TYPE_14__*) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @avcodec_close(i32) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @hw_device_free_all(...) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
