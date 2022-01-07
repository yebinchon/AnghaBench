; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegdec.c_libopenjpeg_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegdec.c_libopenjpeg_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64, i32, i32, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { %struct.TYPE_38__, i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_46__ = type { i8*, i32 }
%struct.TYPE_42__ = type { i8* }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_45__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_41__ = type { i32, i32, i32, i32, i32, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64, i32 }
%struct.TYPE_44__ = type { i32, i8*, i32 }

@JP2_SIG_TYPE = common dso_local global i32 0, align 4
@JP2_SIG_VALUE = common dso_local global i32 0, align 4
@OPJ_CODEC_JP2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"jp2c\00", align 1
@OPJ_CODEC_J2K = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error initializing decoder.\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@error_callback = common dso_local global i32 0, align 4
@warning_callback = common dso_local global i32 0, align 4
@info_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Error setting decoder handlers.\0A\00", align 1
@OPJ_STREAM_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Codestream could not be opened for reading.\0A\00", align 1
@stream_read = common dso_local global i32 0, align 4
@stream_skip = common dso_local global i32 0, align 4
@stream_seek = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Error decoding codestream header.\0A\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Unable to determine pixel format.\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Error decoding codestream.\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Image component %d contains no data.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Pixel size %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_37__*, i8*, i32*, %struct.TYPE_46__*)* @libopenjpeg_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libopenjpeg_decode_frame(%struct.TYPE_37__* %0, i8* %1, i32* %2, %struct.TYPE_46__* %3) #0 {
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_46__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_43__*, align 8
  %12 = alloca %struct.TYPE_42__, align 8
  %13 = alloca %struct.TYPE_47__*, align 8
  %14 = alloca %struct.TYPE_45__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_41__*, align 8
  %22 = alloca %struct.TYPE_44__, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_46__* %3, %struct.TYPE_46__** %8, align 8
  %25 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  store %struct.TYPE_43__* %33, %struct.TYPE_43__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 0
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_47__*
  store %struct.TYPE_47__* %37, %struct.TYPE_47__** %13, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %22, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %22, i32 0, i32 1
  %40 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %39, align 8
  %45 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %22, i32 0, i32 2
  %46 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %45, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %50 = load i32*, i32** %7, align 8
  store i32 0, i32* %50, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @AV_RB32(i8* %51)
  %53 = icmp eq i32 %52, 12
  br i1 %53, label %54, label %69

54:                                               ; preds = %4
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = call i32 @AV_RB32(i8* %56)
  %58 = load i32, i32* @JP2_SIG_TYPE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 8
  %63 = call i32 @AV_RB32(i8* %62)
  %64 = load i32, i32* @JP2_SIG_VALUE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @OPJ_CODEC_JP2, align 4
  %68 = call i32* @opj_create_decompress(i32 %67)
  store i32* %68, i32** %23, align 8
  br label %81

69:                                               ; preds = %60, %54, %4
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = call i32 @AV_RB32(i8* %71)
  %73 = call i32 @AV_RB32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 8
  store i8* %77, i8** %9, align 8
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* @OPJ_CODEC_J2K, align 4
  %80 = call i32* @opj_create_decompress(i32 %79)
  store i32* %80, i32** %23, align 8
  br label %81

81:                                               ; preds = %78, %66
  %82 = load i32*, i32** %23, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @av_log(%struct.TYPE_37__* %85, i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %88, i32* %17, align 4
  br label %381

89:                                               ; preds = %81
  %90 = load i32*, i32** %23, align 8
  %91 = load i32, i32* @error_callback, align 4
  %92 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %93 = call i32 @opj_set_error_handler(i32* %90, i32 %91, %struct.TYPE_37__* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i32*, i32** %23, align 8
  %97 = load i32, i32* @warning_callback, align 4
  %98 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %99 = call i32 @opj_set_warning_handler(i32* %96, i32 %97, %struct.TYPE_37__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i32*, i32** %23, align 8
  %103 = load i32, i32* @info_callback, align 4
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %105 = call i32 @opj_set_info_handler(i32* %102, i32 %103, %struct.TYPE_37__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %101, %95, %89
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @av_log(%struct.TYPE_37__* %108, i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %111, i32* %17, align 4
  br label %381

112:                                              ; preds = %101
  %113 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 4
  %125 = load i32*, i32** %23, align 8
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %126, i32 0, i32 0
  %128 = call i32 @opj_setup_decoder(i32* %125, %struct.TYPE_38__* %127)
  %129 = load i32, i32* @OPJ_STREAM_READ, align 4
  %130 = call i32* @opj_stream_default_create(i32 %129)
  store i32* %130, i32** %24, align 8
  %131 = load i32*, i32** %24, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %112
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @av_log(%struct.TYPE_37__* %134, i32 %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %137, i32* %17, align 4
  br label %381

138:                                              ; preds = %112
  %139 = load i32*, i32** %24, align 8
  %140 = load i32, i32* @stream_read, align 4
  %141 = call i32 @opj_stream_set_read_function(i32* %139, i32 %140)
  %142 = load i32*, i32** %24, align 8
  %143 = load i32, i32* @stream_skip, align 4
  %144 = call i32 @opj_stream_set_skip_function(i32* %142, i32 %143)
  %145 = load i32*, i32** %24, align 8
  %146 = load i32, i32* @stream_seek, align 4
  %147 = call i32 @opj_stream_set_seek_function(i32* %145, i32 %146)
  %148 = load i32*, i32** %24, align 8
  %149 = call i32 @opj_stream_set_user_data(i32* %148, %struct.TYPE_44__* %22, i32* null)
  %150 = load i32*, i32** %24, align 8
  %151 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @opj_stream_set_user_data_length(i32* %150, i32 %153)
  %155 = load i32*, i32** %24, align 8
  %156 = load i32*, i32** %23, align 8
  %157 = call i32 @opj_read_header(i32* %155, i32* %156, %struct.TYPE_41__** %21)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %138
  %164 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %165 = load i32, i32* @AV_LOG_ERROR, align 4
  %166 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @av_log(%struct.TYPE_37__* %164, i32 %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %167 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %167, i32* %17, align 4
  br label %381

168:                                              ; preds = %138
  %169 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %170 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %171, %174
  store i32 %175, i32* %15, align 4
  %176 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %177 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %180 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %178, %181
  store i32 %182, i32* %16, align 4
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @ff_set_dimensions(%struct.TYPE_37__* %183, i32 %184, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %168
  br label %381

190:                                              ; preds = %168
  %191 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %190
  %197 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %198 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @libopenjpeg_matches_pix_fmt(%struct.TYPE_41__* %197, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %205 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %203, %196
  br label %208

208:                                              ; preds = %207, %190
  %209 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %216 = call i32 @libopenjpeg_guess_pix_fmt(%struct.TYPE_41__* %215)
  %217 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %214, %208
  %220 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %219
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %227 = load i32, i32* @AV_LOG_ERROR, align 4
  %228 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @av_log(%struct.TYPE_37__* %226, i32 %227, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %229 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %229, i32* %17, align 4
  br label %381

230:                                              ; preds = %219
  store i32 0, i32* %20, align 4
  br label %231

231:                                              ; preds = %262, %230
  %232 = load i32, i32* %20, align 4
  %233 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %234 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %265

237:                                              ; preds = %231
  %238 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %239 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %238, i32 0, i32 5
  %240 = load %struct.TYPE_39__*, %struct.TYPE_39__** %239, align 8
  %241 = load i32, i32* %20, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp sgt i64 %245, %248
  br i1 %249, label %250, label %261

250:                                              ; preds = %237
  %251 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %252 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %251, i32 0, i32 5
  %253 = load %struct.TYPE_39__*, %struct.TYPE_39__** %252, align 8
  %254 = load i32, i32* %20, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 0
  store i64 %258, i64* %260, align 8
  br label %261

261:                                              ; preds = %250, %237
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %20, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %20, align 4
  br label %231

265:                                              ; preds = %231
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %267 = call i32 @ff_thread_get_buffer(%struct.TYPE_37__* %266, %struct.TYPE_42__* %12, i32 0)
  store i32 %267, i32* %17, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  br label %381

270:                                              ; preds = %265
  %271 = load i32*, i32** %23, align 8
  %272 = load i32*, i32** %24, align 8
  %273 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %274 = call i32 @opj_decode(i32* %271, i32* %272, %struct.TYPE_41__* %273)
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  store i32 %277, i32* %17, align 4
  %278 = load i32, i32* %17, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %270
  %281 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %282 = load i32, i32* @AV_LOG_ERROR, align 4
  %283 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @av_log(%struct.TYPE_37__* %281, i32 %282, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %284 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %284, i32* %17, align 4
  br label %381

285:                                              ; preds = %270
  store i32 0, i32* %20, align 4
  br label %286

286:                                              ; preds = %309, %285
  %287 = load i32, i32* %20, align 4
  %288 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %289 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = icmp slt i32 %287, %290
  br i1 %291, label %292, label %312

292:                                              ; preds = %286
  %293 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %294 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %293, i32 0, i32 5
  %295 = load %struct.TYPE_39__*, %struct.TYPE_39__** %294, align 8
  %296 = load i32, i32* %20, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %308, label %302

302:                                              ; preds = %292
  %303 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %304 = load i32, i32* @AV_LOG_ERROR, align 4
  %305 = load i32, i32* %20, align 4
  %306 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @av_log(%struct.TYPE_37__* %303, i32 %304, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %307, i32* %17, align 4
  br label %381

308:                                              ; preds = %292
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %20, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %20, align 4
  br label %286

312:                                              ; preds = %286
  %313 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = call %struct.TYPE_45__* @av_pix_fmt_desc_get(i32 %315)
  store %struct.TYPE_45__* %316, %struct.TYPE_45__** %14, align 8
  %317 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_40__*, %struct.TYPE_40__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %319, i64 0
  %321 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %18, align 4
  %323 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @libopenjpeg_ispacked(i32 %325)
  store i32 %326, i32* %19, align 4
  %327 = load i32, i32* %18, align 4
  switch i32 %327, label %368 [
    i32 1, label %328
    i32 2, label %340
    i32 3, label %352
    i32 4, label %352
    i32 6, label %360
    i32 8, label %360
  ]

328:                                              ; preds = %312
  %329 = load i32, i32* %19, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %328
  %332 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %333 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %334 = call i32 @libopenjpeg_copy_to_packed8(%struct.TYPE_47__* %332, %struct.TYPE_41__* %333)
  br label %339

335:                                              ; preds = %328
  %336 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %337 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %338 = call i32 @libopenjpeg_copyto8(%struct.TYPE_47__* %336, %struct.TYPE_41__* %337)
  br label %339

339:                                              ; preds = %335, %331
  br label %373

340:                                              ; preds = %312
  %341 = load i32, i32* %19, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %345 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %346 = call i32 @libopenjpeg_copy_to_packed8(%struct.TYPE_47__* %344, %struct.TYPE_41__* %345)
  br label %351

347:                                              ; preds = %340
  %348 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %349 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %350 = call i32 @libopenjpeg_copyto16(%struct.TYPE_47__* %348, %struct.TYPE_41__* %349)
  br label %351

351:                                              ; preds = %347, %343
  br label %373

352:                                              ; preds = %312, %312
  %353 = load i32, i32* %19, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %352
  %356 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %357 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %358 = call i32 @libopenjpeg_copy_to_packed8(%struct.TYPE_47__* %356, %struct.TYPE_41__* %357)
  br label %359

359:                                              ; preds = %355, %352
  br label %373

360:                                              ; preds = %312, %312
  %361 = load i32, i32* %19, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %360
  %364 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %365 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %366 = call i32 @libopenjpeg_copy_to_packed16(%struct.TYPE_47__* %364, %struct.TYPE_41__* %365)
  br label %367

367:                                              ; preds = %363, %360
  br label %373

368:                                              ; preds = %312
  %369 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %370 = load i32, i32* %18, align 4
  %371 = call i32 @avpriv_report_missing_feature(%struct.TYPE_37__* %369, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %372, i32* %17, align 4
  br label %381

373:                                              ; preds = %367, %359, %351, %339
  %374 = load i32*, i32** %7, align 8
  store i32 1, i32* %374, align 4
  %375 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %376 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %377 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %376, i32 0, i32 1
  store i32 %375, i32* %377, align 4
  %378 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %379 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %378, i32 0, i32 0
  store i32 1, i32* %379, align 4
  %380 = load i32, i32* %10, align 4
  store i32 %380, i32* %17, align 4
  br label %381

381:                                              ; preds = %373, %368, %302, %280, %269, %225, %189, %163, %133, %107, %84
  %382 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %383 = call i32 @opj_image_destroy(%struct.TYPE_41__* %382)
  %384 = load i32*, i32** %24, align 8
  %385 = call i32 @opj_stream_destroy(i32* %384)
  %386 = load i32*, i32** %23, align 8
  %387 = call i32 @opj_destroy_codec(i32* %386)
  %388 = load i32, i32* %17, align 4
  ret i32 %388
}

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i32* @opj_create_decompress(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_37__*, i32, i8*, ...) #1

declare dso_local i32 @opj_set_error_handler(i32*, i32, %struct.TYPE_37__*) #1

declare dso_local i32 @opj_set_warning_handler(i32*, i32, %struct.TYPE_37__*) #1

declare dso_local i32 @opj_set_info_handler(i32*, i32, %struct.TYPE_37__*) #1

declare dso_local i32 @opj_setup_decoder(i32*, %struct.TYPE_38__*) #1

declare dso_local i32* @opj_stream_default_create(i32) #1

declare dso_local i32 @opj_stream_set_read_function(i32*, i32) #1

declare dso_local i32 @opj_stream_set_skip_function(i32*, i32) #1

declare dso_local i32 @opj_stream_set_seek_function(i32*, i32) #1

declare dso_local i32 @opj_stream_set_user_data(i32*, %struct.TYPE_44__*, i32*) #1

declare dso_local i32 @opj_stream_set_user_data_length(i32*, i32) #1

declare dso_local i32 @opj_read_header(i32*, i32*, %struct.TYPE_41__**) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_37__*, i32, i32) #1

declare dso_local i32 @libopenjpeg_matches_pix_fmt(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @libopenjpeg_guess_pix_fmt(%struct.TYPE_41__*) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_37__*, %struct.TYPE_42__*, i32) #1

declare dso_local i32 @opj_decode(i32*, i32*, %struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_45__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @libopenjpeg_ispacked(i32) #1

declare dso_local i32 @libopenjpeg_copy_to_packed8(%struct.TYPE_47__*, %struct.TYPE_41__*) #1

declare dso_local i32 @libopenjpeg_copyto8(%struct.TYPE_47__*, %struct.TYPE_41__*) #1

declare dso_local i32 @libopenjpeg_copyto16(%struct.TYPE_47__*, %struct.TYPE_41__*) #1

declare dso_local i32 @libopenjpeg_copy_to_packed16(%struct.TYPE_47__*, %struct.TYPE_41__*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_37__*, i8*, i32) #1

declare dso_local i32 @opj_image_destroy(%struct.TYPE_41__*) #1

declare dso_local i32 @opj_stream_destroy(i32*) #1

declare dso_local i32 @opj_destroy_codec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
