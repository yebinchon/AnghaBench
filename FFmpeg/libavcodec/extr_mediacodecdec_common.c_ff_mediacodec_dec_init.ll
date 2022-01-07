; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodecdec_common.c_ff_mediacodec_dec_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodecdec_common.c_ff_mediacodec_dec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i32, i8*, i64, i8*, i8*, i32, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64 }

@ff_mediacodec_dec_init.pix_fmts = internal constant [2 x i32] [i32 129, i32 128], align 4
@AV_HWDEVICE_TYPE_MEDIACODEC = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Using surface %p\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported or unknown profile\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Found decoder %s\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Failed to create media decoder for type %s and name %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Failed to configure codec %s (status = %d) with format %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Failed to start codec %s (status = %d) with format %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to configure context\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"MediaCodec %p started successfully\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"MediaCodec %p failed to start\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mediacodec_dec_init(%struct.TYPE_23__* %0, %struct.TYPE_19__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %21, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 7
  %24 = call i32 @atomic_init(i32* %23, i32 1)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 6
  %27 = call i32 @atomic_init(i32* %26, i32 0)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 5
  %30 = call i32 @atomic_init(i32* %29, i32 1)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = call i32 @ff_get_format(%struct.TYPE_23__* %33, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ff_mediacodec_dec_init.pix_fmts, i64 0, i64 0))
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 129
  br i1 %36, label %37, label %110

37:                                               ; preds = %4
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %14, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = icmp ne %struct.TYPE_18__* %43, null
  br i1 %44, label %45, label %82

45:                                               ; preds = %37
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %51, %struct.TYPE_22__** %15, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AV_HWDEVICE_TYPE_MEDIACODEC, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %45
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %66, %struct.TYPE_20__** %16, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %71 = call i8* @ff_mediacodec_surface_ref(i64 %69, %struct.TYPE_23__* %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = load i32, i32* @AV_LOG_INFO, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %74, i32 %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %62, %57
  br label %81

81:                                               ; preds = %80, %45
  br label %82

82:                                               ; preds = %81, %37
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %109, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %89 = icmp ne %struct.TYPE_21__* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %100 = call i8* @ff_mediacodec_surface_ref(i64 %98, %struct.TYPE_23__* %99)
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %104 = load i32, i32* @AV_LOG_INFO, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %103, i32 %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %95, %90, %87, %82
  br label %110

110:                                              ; preds = %109, %4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %112 = call i32 @ff_AMediaCodecProfile_getProfileFromAVCodecContext(%struct.TYPE_23__* %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %117 = load i32, i32* @AV_LOG_WARNING, align 4
  %118 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %116, i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %123 = call i8* @ff_AMediaCodecList_getCodecNameByType(i8* %120, i32 %121, i32 0, %struct.TYPE_23__* %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  %131 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %131, i32* %10, align 4
  br label %230

132:                                              ; preds = %119
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %134 = load i32, i32* @AV_LOG_DEBUG, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %133, i32 %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %137)
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @ff_AMediaCodec_createCodecByName(i8* %141)
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %158, label %149

149:                                              ; preds = %132
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %151 = load i32, i32* @AV_LOG_ERROR, align 4
  %152 = load i8*, i8** %8, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %150, i32 %151, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %152, i8* %155)
  %157 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %157, i32* %10, align 4
  br label %230

158:                                              ; preds = %132
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @ff_AMediaCodec_configure(i8* %161, i32* %162, i8* %165, i32* null, i32 0)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %158
  %170 = load i32*, i32** %9, align 8
  %171 = call i8* @ff_AMediaFormat_toString(i32* %170)
  store i8* %171, i8** %17, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %173 = load i32, i32* @AV_LOG_ERROR, align 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load i8*, i8** %17, align 8
  %179 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %172, i32 %173, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %176, i32 %177, i8* %178)
  %180 = call i32 @av_freep(i8** %17)
  %181 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %181, i32* %10, align 4
  br label %230

182:                                              ; preds = %158
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @ff_AMediaCodec_start(i8* %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %182
  %190 = load i32*, i32** %9, align 8
  %191 = call i8* @ff_AMediaFormat_toString(i32* %190)
  store i8* %191, i8** %18, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %193 = load i32, i32* @AV_LOG_ERROR, align 4
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load i8*, i8** %18, align 8
  %199 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %192, i32 %193, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %196, i32 %197, i8* %198)
  %200 = call i32 @av_freep(i8** %18)
  %201 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %201, i32* %10, align 4
  br label %230

202:                                              ; preds = %182
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @ff_AMediaCodec_getOutputFormat(i8* %205)
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %202
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %216 = call i32 @mediacodec_dec_parse_format(%struct.TYPE_23__* %214, %struct.TYPE_19__* %215)
  store i32 %216, i32* %10, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %220 = load i32, i32* @AV_LOG_ERROR, align 4
  %221 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %219, i32 %220, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %230

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %202
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %225 = load i32, i32* @AV_LOG_DEBUG, align 4
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %224, i32 %225, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %228)
  store i32 0, i32* %5, align 4
  br label %241

230:                                              ; preds = %218, %189, %169, %149, %130
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %232 = load i32, i32* @AV_LOG_ERROR, align 4
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %231, i32 %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %235)
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %239 = call i32 @ff_mediacodec_dec_close(%struct.TYPE_23__* %237, %struct.TYPE_19__* %238)
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %230, %223
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @ff_get_format(%struct.TYPE_23__*, i32*) #1

declare dso_local i8* @ff_mediacodec_surface_ref(i64, %struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i32 @ff_AMediaCodecProfile_getProfileFromAVCodecContext(%struct.TYPE_23__*) #1

declare dso_local i8* @ff_AMediaCodecList_getCodecNameByType(i8*, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i8* @ff_AMediaCodec_createCodecByName(i8*) #1

declare dso_local i32 @ff_AMediaCodec_configure(i8*, i32*, i8*, i32*, i32) #1

declare dso_local i8* @ff_AMediaFormat_toString(i32*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @ff_AMediaCodec_start(i8*) #1

declare dso_local i64 @ff_AMediaCodec_getOutputFormat(i8*) #1

declare dso_local i32 @mediacodec_dec_parse_format(%struct.TYPE_23__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ff_mediacodec_dec_close(%struct.TYPE_23__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
