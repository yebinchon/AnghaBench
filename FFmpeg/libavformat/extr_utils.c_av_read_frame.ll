; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_read_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_20__**, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i32, i32 }

@AVFMT_FLAG_GENPTS = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@AVFMT_GENERIC_INDEX = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@RELATIVE_TS_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_read_frame(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AVFMT_FLAG_GENPTS, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = icmp ne %struct.TYPE_21__* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = call i32 @ff_packet_list_get(%struct.TYPE_21__** %32, i32* %36, %struct.TYPE_22__* %37)
  br label %43

39:                                               ; preds = %21
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = call i32 @read_frame_internal(%struct.TYPE_23__* %40, %struct.TYPE_22__* %41)
  br label %43

43:                                               ; preds = %39, %28
  %44 = phi i32 [ %38, %28 ], [ %42, %39 ]
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %323

49:                                               ; preds = %43
  br label %258

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %257, %237, %50
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %10, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %58 = icmp ne %struct.TYPE_21__* %57, null
  br i1 %58, label %59, label %223

59:                                               ; preds = %51
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %11, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %182

67:                                               ; preds = %59
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %69, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %70, i64 %73
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %13, align 8
  %81 = load i32, i32* %12, align 4
  %82 = icmp sle i32 %81, 64
  %83 = zext i1 %82 to i32
  %84 = call i32 @av_assert2(i32 %83)
  br label %85

85:                                               ; preds = %151, %67
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %87 = icmp ne %struct.TYPE_21__* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %93 = icmp eq i64 %91, %92
  br label %94

94:                                               ; preds = %88, %85
  %95 = phi i1 [ false, %85 ], [ %93, %88 ]
  br i1 %95, label %96, label %155

96:                                               ; preds = %94
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %151

105:                                              ; preds = %96
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = shl i64 2, %115
  %117 = call i64 @av_compare_mod(i64 %108, i64 %112, i64 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %105
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sub nsw i32 %128, 1
  %130 = zext i32 %129 to i64
  %131 = shl i64 2, %130
  %132 = call i64 @av_compare_mod(i64 %123, i64 %127, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %119
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %134, %119
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %13, align 8
  br label %150

150:                                              ; preds = %145, %141
  br label %151

151:                                              ; preds = %150, %105, %96
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %153, align 8
  store %struct.TYPE_21__* %154, %struct.TYPE_21__** %10, align 8
  br label %85

155:                                              ; preds = %94
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %158
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load i64, i64* %13, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %169, %172
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %168, %164, %158, %155
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  store %struct.TYPE_21__* %181, %struct.TYPE_21__** %10, align 8
  br label %182

182:                                              ; preds = %176, %59
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %184, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %185, i64 %188
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  store %struct.TYPE_20__* %190, %struct.TYPE_20__** %9, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %182
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @AVDISCARD_ALL, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %196
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %208, %202, %196, %182
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %221 = call i32 @ff_packet_list_get(%struct.TYPE_21__** %215, i32* %219, %struct.TYPE_22__* %220)
  store i32 %221, i32* %8, align 4
  br label %258

222:                                              ; preds = %208
  br label %223

223:                                              ; preds = %222, %51
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %226 = call i32 @read_frame_internal(%struct.TYPE_23__* %224, %struct.TYPE_22__* %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %223
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %231 = icmp ne %struct.TYPE_21__* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* @EAGAIN, align 4
  %235 = call i32 @AVERROR(i32 %234)
  %236 = icmp ne i32 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  store i32 1, i32* %7, align 4
  br label %51

238:                                              ; preds = %232, %229
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %3, align 4
  br label %323

240:                                              ; preds = %223
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %250 = call i32 @ff_packet_list_put(%struct.TYPE_21__** %244, i32* %248, %struct.TYPE_22__* %249, i32 0)
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %8, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %240
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %255 = call i32 @av_packet_unref(%struct.TYPE_22__* %254)
  %256 = load i32, i32* %8, align 4
  store i32 %256, i32* %3, align 4
  br label %323

257:                                              ; preds = %240
  br label %51

258:                                              ; preds = %211, %49
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %260, align 8
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %261, i64 %264
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %265, align 8
  store %struct.TYPE_20__* %266, %struct.TYPE_20__** %9, align 8
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @AVFMT_GENERIC_INDEX, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %297

275:                                              ; preds = %258
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %297

282:                                              ; preds = %275
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @ff_reduce_index(%struct.TYPE_23__* %283, i32 %286)
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %296 = call i32 @av_add_index_entry(%struct.TYPE_20__* %288, i32 %291, i64 %294, i32 0, i32 0, i32 %295)
  br label %297

297:                                              ; preds = %282, %275, %258
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = call i64 @is_relative(i64 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %297
  %304 = load i64, i64* @RELATIVE_TS_BASE, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = sub nsw i64 %307, %304
  store i64 %308, i64* %306, align 8
  br label %309

309:                                              ; preds = %303, %297
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = call i64 @is_relative(i64 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %309
  %316 = load i64, i64* @RELATIVE_TS_BASE, align 8
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = sub nsw i64 %319, %316
  store i64 %320, i64* %318, align 8
  br label %321

321:                                              ; preds = %315, %309
  %322 = load i32, i32* %8, align 4
  store i32 %322, i32* %3, align 4
  br label %323

323:                                              ; preds = %321, %253, %238, %47
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local i32 @ff_packet_list_get(%struct.TYPE_21__**, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @read_frame_internal(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i64 @av_compare_mod(i64, i64, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_packet_list_put(%struct.TYPE_21__**, i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_22__*) #1

declare dso_local i32 @ff_reduce_index(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @av_add_index_entry(%struct.TYPE_20__*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @is_relative(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
