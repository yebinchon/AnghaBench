; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_ff_cavs_mv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_ff_cavs_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i32* }

@NOT_AVAIL = common dso_local global i64 0, align 8
@MV_FWD_X3 = common dso_local global i32 0, align 4
@MV_BWD_X3 = common dso_local global i32 0, align 4
@MV_PRED_PSKIP = common dso_local global i32 0, align 4
@un_mv = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@MV_PRED_LEFT = common dso_local global i32 0, align 4
@MV_PRED_TOP = common dso_local global i32 0, align 4
@MV_PRED_TOPRIGHT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"MV %d %d out of supported range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_cavs_mv(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %24
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %13, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %31
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %14, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sub i32 %36, 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %38
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %15, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %44
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %17, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @NOT_AVAIL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %6
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @MV_FWD_X3, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @MV_BWD_X3, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70, %66, %6
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sub i32 %78, 5
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %80
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %16, align 8
  br label %82

82:                                               ; preds = %74, %70
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @MV_PRED_PSKIP, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %127

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @NOT_AVAIL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %126, label %93

93:                                               ; preds = %86
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @NOT_AVAIL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %126, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %103, %106
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %107, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %100
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %116, %119
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %120, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113, %100, %93, %86
  store %struct.TYPE_11__* @un_mv, %struct.TYPE_11__** %17, align 8
  br label %220

127:                                              ; preds = %113, %82
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %17, align 8
  br label %219

144:                                              ; preds = %137, %132, %127
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %17, align 8
  br label %218

161:                                              ; preds = %154, %149, %144
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %177, %struct.TYPE_11__** %17, align 8
  br label %217

178:                                              ; preds = %171, %166, %161
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @MV_PRED_LEFT, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %189, %struct.TYPE_11__** %17, align 8
  br label %216

190:                                              ; preds = %182, %178
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @MV_PRED_TOP, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %201, %struct.TYPE_11__** %17, align 8
  br label %215

202:                                              ; preds = %194, %190
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @MV_PRED_TOPRIGHT, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %12, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %213, %struct.TYPE_11__** %17, align 8
  br label %214

214:                                              ; preds = %212, %206, %202
  br label %215

215:                                              ; preds = %214, %200
  br label %216

216:                                              ; preds = %215, %188
  br label %217

217:                                              ; preds = %216, %176
  br label %218

218:                                              ; preds = %217, %159
  br label %219

219:                                              ; preds = %218, %142
  br label %220

220:                                              ; preds = %219, %126
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %222 = icmp ne %struct.TYPE_11__* %221, null
  br i1 %222, label %223, label %234

223:                                              ; preds = %220
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 4
  br label %241

234:                                              ; preds = %220
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %240 = call i32 @mv_pred_median(%struct.TYPE_12__* %235, %struct.TYPE_11__* %236, %struct.TYPE_11__* %237, %struct.TYPE_11__* %238, %struct.TYPE_11__* %239)
  br label %241

241:                                              ; preds = %234, %223
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* @MV_PRED_PSKIP, align 4
  %244 = icmp ult i32 %242, %243
  br i1 %244, label %245, label %283

245:                                              ; preds = %241
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = call i32 @get_se_golomb(i32* %247)
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = add i32 %248, %251
  store i32 %252, i32* %18, align 4
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = call i32 @get_se_golomb(i32* %254)
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = add i32 %255, %258
  store i32 %259, i32* %19, align 4
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %18, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %267, label %263

263:                                              ; preds = %245
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %19, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %275

267:                                              ; preds = %263, %245
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @AV_LOG_ERROR, align 4
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* %19, align 4
  %274 = call i32 @av_log(i32 %270, i32 %271, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %272, i32 %273)
  br label %282

275:                                              ; preds = %263
  %276 = load i32, i32* %18, align 4
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %19, align 4
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 4
  br label %282

282:                                              ; preds = %275, %267
  br label %283

283:                                              ; preds = %282, %241
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %285 = load i32, i32* %11, align 4
  %286 = call i32 @set_mvs(%struct.TYPE_11__* %284, i32 %285)
  ret void
}

declare dso_local i32 @mv_pred_median(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @get_se_golomb(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @set_mvs(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
