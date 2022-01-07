; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_ff_init_me.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_ff_init_me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_10__, i64, %struct.TYPE_9__, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i8**, i8**, i8**, i8** }
%struct.TYPE_10__ = type { i32**, i32**, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i8*, i32**, %struct.TYPE_14__*, i32, i32, i32, i8*, i8*, i8* }

@ME_MAP_SIZE = common dso_local global i32 0, align 4
@ME_MAP_SHIFT = common dso_local global i32 0, align 4
@MAX_SAB_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ME_MAP size is too small for SAB diamond\0A\00", align 1
@AV_CODEC_ID_H261 = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"ME_MAP size may be a little small for the selected diamond size\0A\00", align 1
@FF_CMP_CHROMA = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_QPEL = common dso_local global i32 0, align 4
@qpel_motion_search = common dso_local global i8* null, align 8
@hpel_motion_search = common dso_local global i8* null, align 8
@FF_CMP_SAD = common dso_local global i32 0, align 4
@sad_hpel_motion_search = common dso_local global i8* null, align 8
@AV_CODEC_ID_SNOW = common dso_local global i64 0, align 8
@zero_cmp = common dso_local global i8* null, align 8
@zero_hpel = common dso_local global i32 0, align 4
@no_sub_motion_search = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_init_me(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 9
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %4, align 8
  %9 = load i32, i32* @ME_MAP_SIZE, align 4
  %10 = load i32, i32* @ME_MAP_SHIFT, align 4
  %11 = ashr i32 %9, %10
  %12 = load i32, i32* @ME_MAP_SHIFT, align 4
  %13 = shl i32 1, %12
  %14 = call i32 @FFMIN(i32 %11, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FFABS(i32 %19)
  %21 = and i32 %20, 255
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @FFABS(i32 %26)
  %28 = and i32 %27, 255
  %29 = call i32 @FFMAX(i32 %21, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FFMIN(i32 %34, i32 %39)
  %41 = load i32, i32* @ME_MAP_SIZE, align 4
  %42 = load i32, i32* @MAX_SAB_SIZE, align 4
  %43 = call i32 @FFMIN(i32 %41, i32 %42)
  %44 = sub nsw i32 0, %43
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 @av_log(%struct.TYPE_14__* %49, i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %394

52:                                               ; preds = %1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AV_CODEC_ID_H261, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %52
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %52
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 2, %75
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i32, i32* @AV_LOG_INFO, align 4
  %88 = call i32 @av_log(%struct.TYPE_14__* %86, i32 %87, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %83, %78, %73
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  %95 = load i8**, i8*** %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ff_set_cmp(%struct.TYPE_13__* %91, i8** %95, i32 %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ff_set_cmp(%struct.TYPE_13__* %103, i8** %107, i32 %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ff_set_cmp(%struct.TYPE_13__* %115, i8** %119, i32 %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i8**, i8*** %130, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ff_set_cmp(%struct.TYPE_13__* %127, i8** %131, i32 %136)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @FF_CMP_CHROMA, align 4
  %145 = and i32 %143, %144
  %146 = call i8* @get_flags(%struct.TYPE_12__* %138, i32 0, i32 %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 10
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @FF_CMP_CHROMA, align 4
  %156 = and i32 %154, %155
  %157 = call i8* @get_flags(%struct.TYPE_12__* %149, i32 0, i32 %156)
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 9
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @FF_CMP_CHROMA, align 4
  %167 = and i32 %165, %166
  %168 = call i8* @get_flags(%struct.TYPE_12__* %160, i32 0, i32 %167)
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 8
  store i8* %168, i8** %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @AV_CODEC_FLAG_QPEL, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %208

179:                                              ; preds = %89
  %180 = load i8*, i8** @qpel_motion_search, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 7
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %179
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 4
  br label %207

200:                                              ; preds = %179
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %200, %193
  br label %255

208:                                              ; preds = %89
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @FF_CMP_CHROMA, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %208
  %218 = load i8*, i8** @hpel_motion_search, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  br label %254

221:                                              ; preds = %208
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @FF_CMP_SAD, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %249

229:                                              ; preds = %221
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @FF_CMP_SAD, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %229
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 4
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @FF_CMP_SAD, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %237
  %246 = load i8*, i8** @sad_hpel_motion_search, align 8
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  br label %253

249:                                              ; preds = %237, %229, %221
  %250 = load i8*, i8** @hpel_motion_search, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  store i8* %250, i8** %252, align 8
  br label %253

253:                                              ; preds = %249, %245
  br label %254

254:                                              ; preds = %253, %217
  br label %255

255:                                              ; preds = %254, %207
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 5
  store i32 %259, i32* %261, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %255
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = load i32**, i32*** %269, align 8
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 3
  store i32** %270, i32*** %272, align 8
  br label %280

273:                                              ; preds = %255
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i32**, i32*** %276, align 8
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 3
  store i32** %277, i32*** %279, align 8
  br label %280

280:                                              ; preds = %273, %266
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %280
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 4
  br label %311

296:                                              ; preds = %280
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = mul nsw i32 16, %299
  %301 = add nsw i32 %300, 32
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = mul nsw i32 8, %306
  %308 = add nsw i32 %307, 16
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  br label %311

311:                                              ; preds = %296, %285
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @AV_CODEC_ID_SNOW, align 8
  %316 = icmp ne i64 %314, %315
  br i1 %316, label %317, label %383

317:                                              ; preds = %311
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 4
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @FF_CMP_CHROMA, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %317
  %327 = load i8*, i8** @zero_cmp, align 8
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 4
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 1
  %331 = load i8**, i8*** %330, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i64 2
  store i8* %327, i8** %332, align 8
  br label %333

333:                                              ; preds = %326, %317
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 4
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @FF_CMP_CHROMA, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %357

342:                                              ; preds = %333
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 4
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 0
  %346 = load i8**, i8*** %345, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 2
  %348 = load i8*, i8** %347, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %357, label %350

350:                                              ; preds = %342
  %351 = load i8*, i8** @zero_cmp, align 8
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 4
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 0
  %355 = load i8**, i8*** %354, align 8
  %356 = getelementptr inbounds i8*, i8** %355, i64 2
  store i8* %351, i8** %356, align 8
  br label %357

357:                                              ; preds = %350, %342, %333
  %358 = load i32, i32* @zero_hpel, align 4
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 3
  %361 = load i32**, i32*** %360, align 8
  %362 = getelementptr inbounds i32*, i32** %361, i64 2
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 3
  store i32 %358, i32* %364, align 4
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 3
  %367 = load i32**, i32*** %366, align 8
  %368 = getelementptr inbounds i32*, i32** %367, i64 2
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 2
  store i32 %358, i32* %370, align 4
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 3
  %373 = load i32**, i32*** %372, align 8
  %374 = getelementptr inbounds i32*, i32** %373, i64 2
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 1
  store i32 %358, i32* %376, align 4
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 3
  %379 = load i32**, i32*** %378, align 8
  %380 = getelementptr inbounds i32*, i32** %379, i64 2
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  store i32 %358, i32* %382, align 4
  br label %383

383:                                              ; preds = %357, %311
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @AV_CODEC_ID_H261, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %393

389:                                              ; preds = %383
  %390 = load i8*, i8** @no_sub_motion_search, align 8
  %391 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 2
  store i8* %390, i8** %392, align 8
  br label %393

393:                                              ; preds = %389, %383
  store i32 0, i32* %2, align 4
  br label %394

394:                                              ; preds = %393, %46
  %395 = load i32, i32* %2, align 4
  ret i32 %395
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @ff_set_cmp(%struct.TYPE_13__*, i8**, i32) #1

declare dso_local i8* @get_flags(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
