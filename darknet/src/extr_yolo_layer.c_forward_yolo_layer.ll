; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_forward_yolo_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_forward_yolo_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, float, float, i32*, i32, i64*, i64*, i64* }
%struct.TYPE_12__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }

@LOGISTIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Region %d Avg IOU: %f, Class: %f, Obj: %f, No Obj: %f, .5R: %f, .75R: %f,  count: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_yolo_layer(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__, align 8
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_14__, align 8
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_14__, align 8
  %27 = alloca %struct.TYPE_14__, align 8
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_14__, align 8
  %31 = alloca %struct.TYPE_14__, align 8
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(i64* %40, i32 %42, i32 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %115, %2
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %118

57:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %111, %57
  %59 = load i32, i32* %7, align 4
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %65, %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %68, %70
  %72 = call i32 @entry_index(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0, i32 %64, i32 %71, i32 0)
  store i32 %72, i32* %8, align 4
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 2, %79
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %80, %82
  %84 = load i32, i32* @LOGISTIC, align 4
  %85 = call i32 @activate_array(i64* %77, i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %7, align 4
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %87, %89
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %90, %92
  %94 = call i32 @entry_index(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0, i32 %86, i32 %93, i32 4)
  store i32 %94, i32* %8, align 4
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 1, %101
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %102, %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %105, %107
  %109 = load i32, i32* @LOGISTIC, align 4
  %110 = call i32 @activate_array(i64* %99, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %63
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %58

114:                                              ; preds = %58
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %52

118:                                              ; preds = %52
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %122, %124
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memset(i64* %120, i32 0, i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %118
  br label %721

134:                                              ; preds = %118
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 15
  %136 = load i64*, i64** %135, align 8
  store i64 0, i64* %136, align 8
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %668, %134
  %138 = load i32, i32* %5, align 4
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %671

142:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %413, %142
  %144 = load i32, i32* %4, align 4
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %416

148:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %409, %148
  %150 = load i32, i32* %3, align 4
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %412

154:                                              ; preds = %149
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %405, %154
  %156 = load i32, i32* %7, align 4
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %408

160:                                              ; preds = %155
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %7, align 4
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %162, %164
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %165, %167
  %169 = load i32, i32* %4, align 4
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %169, %171
  %173 = add nsw i32 %168, %172
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %173, %174
  %176 = call i32 @entry_index(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0, i32 %161, i32 %175, i32 0)
  store i32 %176, i32* %17, align 4
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 6
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 7
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* %4, align 4
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %199, %201
  call void @get_yolo_box(%struct.TYPE_14__* sret %18, i64* %178, i32* %180, i32 %186, i32 %187, i32 %188, i32 %189, i32 %191, i32 %193, i32 %195, i32 %197, i32 %202)
  store float 0.000000e+00, float* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %234, %160
  %204 = load i32, i32* %6, align 4
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 8
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %204, %206
  br i1 %207, label %208, label %237

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = mul nsw i32 %211, 5
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %5, align 4
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 9
  %217 = load i32, i32* %216, align 4
  %218 = mul nsw i32 %215, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %214, i64 %219
  call void @float_to_box(%struct.TYPE_14__* sret %21, i32* %220, i32 1)
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %208
  br label %237

225:                                              ; preds = %208
  %226 = call float @box_iou(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %18, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %21)
  store float %226, float* %22, align 4
  %227 = load float, float* %22, align 4
  %228 = load float, float* %19, align 4
  %229 = fcmp ogt float %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load float, float* %22, align 4
  store float %231, float* %19, align 4
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %20, align 4
  br label %233

233:                                              ; preds = %230, %225
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  br label %203

237:                                              ; preds = %224, %203
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* %7, align 4
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %239, %241
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = mul nsw i32 %242, %244
  %246 = load i32, i32* %4, align 4
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %246, %248
  %250 = add nsw i32 %245, %249
  %251 = load i32, i32* %3, align 4
  %252 = add nsw i32 %250, %251
  %253 = call i32 @entry_index(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0, i32 %238, i32 %252, i32 4)
  store i32 %253, i32* %23, align 4
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* %23, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = sitofp i64 %259 to float
  %261 = load float, float* %14, align 4
  %262 = fadd float %261, %260
  store float %262, float* %14, align 4
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %264 = load i64*, i64** %263, align 8
  %265 = load i32, i32* %23, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 0, %268
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %271 = load i64*, i64** %270, align 8
  %272 = load i32, i32* %23, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  store i64 %269, i64* %274, align 8
  %275 = load float, float* %19, align 4
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 10
  %277 = load float, float* %276, align 8
  %278 = fcmp ogt float %275, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %237
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %281 = load i64*, i64** %280, align 8
  %282 = load i32, i32* %23, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  store i64 0, i64* %284, align 8
  br label %285

285:                                              ; preds = %279, %237
  %286 = load float, float* %19, align 4
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 11
  %288 = load float, float* %287, align 4
  %289 = fcmp ogt float %286, %288
  br i1 %289, label %290, label %404

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %292 = load i64*, i64** %291, align 8
  %293 = load i32, i32* %23, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = sub nsw i64 1, %296
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %299 = load i64*, i64** %298, align 8
  %300 = load i32, i32* %23, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  store i64 %297, i64* %302, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %20, align 4
  %306 = mul nsw i32 %305, 5
  %307 = load i32, i32* %5, align 4
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 9
  %309 = load i32, i32* %308, align 4
  %310 = mul nsw i32 %307, %309
  %311 = add nsw i32 %306, %310
  %312 = add nsw i32 %311, 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %304, i64 %313
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %24, align 4
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 12
  %317 = load i32*, i32** %316, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %319, label %326

319:                                              ; preds = %290
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 12
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %24, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %24, align 4
  br label %326

326:                                              ; preds = %319, %290
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* %7, align 4
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = mul nsw i32 %328, %330
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = mul nsw i32 %331, %333
  %335 = load i32, i32* %4, align 4
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = mul nsw i32 %335, %337
  %339 = add nsw i32 %334, %338
  %340 = load i32, i32* %3, align 4
  %341 = add nsw i32 %339, %340
  %342 = call i32 @entry_index(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0, i32 %327, i32 %341, i32 5)
  store i32 %342, i32* %25, align 4
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %344 = load i64*, i64** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %346 = load i64*, i64** %345, align 8
  %347 = load i32, i32* %25, align 4
  %348 = load i32, i32* %24, align 4
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 5
  %350 = load i32, i32* %349, align 4
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = mul nsw i32 %352, %354
  %356 = call i32 @delta_yolo_class(i64* %344, i64* %346, i32 %347, i32 %348, i32 %350, i32 %355, float* null)
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %20, align 4
  %360 = mul nsw i32 %359, 5
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  %363 = load i32, i32* %5, align 4
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 9
  %365 = load i32, i32* %364, align 4
  %366 = mul nsw i32 %363, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %362, i64 %367
  call void @float_to_box(%struct.TYPE_14__* sret %26, i32* %368, i32 1)
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %370 = load i64*, i64** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 6
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 7
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %7, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %17, align 4
  %380 = load i32, i32* %3, align 4
  %381 = load i32, i32* %4, align 4
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %391 = load i64*, i64** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = mul nsw i32 %393, %395
  %397 = sub nsw i32 2, %396
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = mul nsw i32 %399, %401
  %403 = call float @delta_yolo_box(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %26, i64* %370, i32* %372, i32 %378, i32 %379, i32 %380, i32 %381, i32 %383, i32 %385, i32 %387, i32 %389, i64* %391, i32 %397, i32 %402)
  br label %404

404:                                              ; preds = %326, %285
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %7, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %7, align 4
  br label %155

408:                                              ; preds = %155
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %3, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %3, align 4
  br label %149

412:                                              ; preds = %149
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %4, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %4, align 4
  br label %143

416:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  br label %417

417:                                              ; preds = %664, %416
  %418 = load i32, i32* %6, align 4
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 8
  %420 = load i32, i32* %419, align 8
  %421 = icmp slt i32 %418, %420
  br i1 %421, label %422, label %667

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %6, align 4
  %426 = mul nsw i32 %425, 5
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %424, i64 %427
  %429 = load i32, i32* %5, align 4
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 9
  %431 = load i32, i32* %430, align 4
  %432 = mul nsw i32 %429, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %428, i64 %433
  call void @float_to_box(%struct.TYPE_14__* sret %27, i32* %434, i32 1)
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %439, label %438

438:                                              ; preds = %422
  br label %667

439:                                              ; preds = %422
  store float 0.000000e+00, float* %28, align 4
  store i32 0, i32* %29, align 4
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %443 = load i32, i32* %442, align 4
  %444 = mul nsw i32 %441, %443
  store i32 %444, i32* %3, align 4
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  %446 = load i32, i32* %445, align 4
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %448 = load i32, i32* %447, align 8
  %449 = mul nsw i32 %446, %448
  store i32 %449, i32* %4, align 4
  %450 = bitcast %struct.TYPE_14__* %30 to i8*
  %451 = bitcast %struct.TYPE_14__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %450, i8* align 4 %451, i64 20, i1 false)
  %452 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  store i32 0, i32* %452, align 4
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i32 0, i32* %453, align 4
  store i32 0, i32* %7, align 4
  br label %454

454:                                              ; preds = %492, %439
  %455 = load i32, i32* %7, align 4
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 13
  %457 = load i32, i32* %456, align 8
  %458 = icmp slt i32 %455, %457
  br i1 %458, label %459, label %495

459:                                              ; preds = %454
  %460 = bitcast %struct.TYPE_14__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %460, i8 0, i64 20, i1 false)
  %461 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 6
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %7, align 4
  %464 = mul nsw i32 2, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %462, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = sdiv i32 %467, %469
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  store i32 %470, i32* %471, align 4
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 6
  %473 = load i32*, i32** %472, align 8
  %474 = load i32, i32* %7, align 4
  %475 = mul nsw i32 2, %474
  %476 = add nsw i32 %475, 1
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %473, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = sdiv i32 %479, %481
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  store i32 %482, i32* %483, align 4
  %484 = call float @box_iou(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %31, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %30)
  store float %484, float* %32, align 4
  %485 = load float, float* %32, align 4
  %486 = load float, float* %28, align 4
  %487 = fcmp ogt float %485, %486
  br i1 %487, label %488, label %491

488:                                              ; preds = %459
  %489 = load float, float* %32, align 4
  store float %489, float* %28, align 4
  %490 = load i32, i32* %7, align 4
  store i32 %490, i32* %29, align 4
  br label %491

491:                                              ; preds = %488, %459
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %7, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %7, align 4
  br label %454

495:                                              ; preds = %454
  %496 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 7
  %497 = load i32*, i32** %496, align 8
  %498 = load i32, i32* %29, align 4
  %499 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  %500 = load i32, i32* %499, align 8
  %501 = call i32 @int_index(i32* %497, i32 %498, i32 %500)
  store i32 %501, i32* %33, align 4
  %502 = load i32, i32* %33, align 4
  %503 = icmp sge i32 %502, 0
  br i1 %503, label %504, label %663

504:                                              ; preds = %495
  %505 = load i32, i32* %5, align 4
  %506 = load i32, i32* %33, align 4
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %508 = load i32, i32* %507, align 4
  %509 = mul nsw i32 %506, %508
  %510 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %511 = load i32, i32* %510, align 8
  %512 = mul nsw i32 %509, %511
  %513 = load i32, i32* %4, align 4
  %514 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = mul nsw i32 %513, %515
  %517 = add nsw i32 %512, %516
  %518 = load i32, i32* %3, align 4
  %519 = add nsw i32 %517, %518
  %520 = call i32 @entry_index(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0, i32 %505, i32 %519, i32 0)
  store i32 %520, i32* %34, align 4
  %521 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %522 = load i64*, i64** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 6
  %524 = load i32*, i32** %523, align 8
  %525 = load i32, i32* %29, align 4
  %526 = load i32, i32* %34, align 4
  %527 = load i32, i32* %3, align 4
  %528 = load i32, i32* %4, align 4
  %529 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %530 = load i32, i32* %529, align 4
  %531 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %532 = load i32, i32* %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %538 = load i64*, i64** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %542 = load i32, i32* %541, align 4
  %543 = mul nsw i32 %540, %542
  %544 = sub nsw i32 2, %543
  %545 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %546 = load i32, i32* %545, align 4
  %547 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %548 = load i32, i32* %547, align 8
  %549 = mul nsw i32 %546, %548
  %550 = call float @delta_yolo_box(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %27, i64* %522, i32* %524, i32 %525, i32 %526, i32 %527, i32 %528, i32 %530, i32 %532, i32 %534, i32 %536, i64* %538, i32 %544, i32 %549)
  store float %550, float* %35, align 4
  %551 = load i32, i32* %5, align 4
  %552 = load i32, i32* %33, align 4
  %553 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %554 = load i32, i32* %553, align 4
  %555 = mul nsw i32 %552, %554
  %556 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %557 = load i32, i32* %556, align 8
  %558 = mul nsw i32 %555, %557
  %559 = load i32, i32* %4, align 4
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %561 = load i32, i32* %560, align 4
  %562 = mul nsw i32 %559, %561
  %563 = add nsw i32 %558, %562
  %564 = load i32, i32* %3, align 4
  %565 = add nsw i32 %563, %564
  %566 = call i32 @entry_index(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0, i32 %551, i32 %565, i32 4)
  store i32 %566, i32* %36, align 4
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %568 = load i64*, i64** %567, align 8
  %569 = load i32, i32* %36, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i64, i64* %568, i64 %570
  %572 = load i64, i64* %571, align 8
  %573 = sitofp i64 %572 to float
  %574 = load float, float* %13, align 4
  %575 = fadd float %574, %573
  store float %575, float* %13, align 4
  %576 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %577 = load i64*, i64** %576, align 8
  %578 = load i32, i32* %36, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i64, i64* %577, i64 %579
  %581 = load i64, i64* %580, align 8
  %582 = sub nsw i64 1, %581
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %584 = load i64*, i64** %583, align 8
  %585 = load i32, i32* %36, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i64, i64* %584, i64 %586
  store i64 %582, i64* %587, align 8
  %588 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %589 = load i32*, i32** %588, align 8
  %590 = load i32, i32* %6, align 4
  %591 = mul nsw i32 %590, 5
  %592 = load i32, i32* %5, align 4
  %593 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 9
  %594 = load i32, i32* %593, align 4
  %595 = mul nsw i32 %592, %594
  %596 = add nsw i32 %591, %595
  %597 = add nsw i32 %596, 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %589, i64 %598
  %600 = load i32, i32* %599, align 4
  store i32 %600, i32* %37, align 4
  %601 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 12
  %602 = load i32*, i32** %601, align 8
  %603 = icmp ne i32* %602, null
  br i1 %603, label %604, label %611

604:                                              ; preds = %504
  %605 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 12
  %606 = load i32*, i32** %605, align 8
  %607 = load i32, i32* %37, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i32, i32* %606, i64 %608
  %610 = load i32, i32* %609, align 4
  store i32 %610, i32* %37, align 4
  br label %611

611:                                              ; preds = %604, %504
  %612 = load i32, i32* %5, align 4
  %613 = load i32, i32* %33, align 4
  %614 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %615 = load i32, i32* %614, align 4
  %616 = mul nsw i32 %613, %615
  %617 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %618 = load i32, i32* %617, align 8
  %619 = mul nsw i32 %616, %618
  %620 = load i32, i32* %4, align 4
  %621 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %622 = load i32, i32* %621, align 4
  %623 = mul nsw i32 %620, %622
  %624 = add nsw i32 %619, %623
  %625 = load i32, i32* %3, align 4
  %626 = add nsw i32 %624, %625
  %627 = call i32 @entry_index(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0, i32 %612, i32 %626, i32 5)
  store i32 %627, i32* %38, align 4
  %628 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %629 = load i64*, i64** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %631 = load i64*, i64** %630, align 8
  %632 = load i32, i32* %38, align 4
  %633 = load i32, i32* %37, align 4
  %634 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 5
  %635 = load i32, i32* %634, align 4
  %636 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %637 = load i32, i32* %636, align 4
  %638 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %639 = load i32, i32* %638, align 8
  %640 = mul nsw i32 %637, %639
  %641 = call i32 @delta_yolo_class(i64* %629, i64* %631, i32 %632, i32 %633, i32 %635, i32 %640, float* %12)
  %642 = load i32, i32* %15, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %15, align 4
  %644 = load i32, i32* %16, align 4
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %16, align 4
  %646 = load float, float* %35, align 4
  %647 = fpext float %646 to double
  %648 = fcmp ogt double %647, 5.000000e-01
  br i1 %648, label %649, label %652

649:                                              ; preds = %611
  %650 = load float, float* %10, align 4
  %651 = fadd float %650, 1.000000e+00
  store float %651, float* %10, align 4
  br label %652

652:                                              ; preds = %649, %611
  %653 = load float, float* %35, align 4
  %654 = fpext float %653 to double
  %655 = fcmp ogt double %654, 7.500000e-01
  br i1 %655, label %656, label %659

656:                                              ; preds = %652
  %657 = load float, float* %11, align 4
  %658 = fadd float %657, 1.000000e+00
  store float %658, float* %11, align 4
  br label %659

659:                                              ; preds = %656, %652
  %660 = load float, float* %35, align 4
  %661 = load float, float* %9, align 4
  %662 = fadd float %661, %660
  store float %662, float* %9, align 4
  br label %663

663:                                              ; preds = %659, %495
  br label %664

664:                                              ; preds = %663
  %665 = load i32, i32* %6, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %6, align 4
  br label %417

667:                                              ; preds = %438, %417
  br label %668

668:                                              ; preds = %667
  %669 = load i32, i32* %5, align 4
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* %5, align 4
  br label %137

671:                                              ; preds = %137
  %672 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %673 = load i64*, i64** %672, align 8
  %674 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %677 = load i32, i32* %676, align 4
  %678 = mul nsw i32 %675, %677
  %679 = call i32 @mag_array(i64* %673, i32 %678)
  %680 = call i64 @pow(i32 %679, i32 2)
  %681 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 15
  %682 = load i64*, i64** %681, align 8
  store i64 %680, i64* %682, align 8
  %683 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 3
  %684 = load i32, i32* %683, align 8
  %685 = load float, float* %9, align 4
  %686 = load i32, i32* %15, align 4
  %687 = sitofp i32 %686 to float
  %688 = fdiv float %685, %687
  %689 = load float, float* %12, align 4
  %690 = load i32, i32* %16, align 4
  %691 = sitofp i32 %690 to float
  %692 = fdiv float %689, %691
  %693 = load float, float* %13, align 4
  %694 = load i32, i32* %15, align 4
  %695 = sitofp i32 %694 to float
  %696 = fdiv float %693, %695
  %697 = load float, float* %14, align 4
  %698 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  %699 = load i32, i32* %698, align 4
  %700 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  %701 = load i32, i32* %700, align 8
  %702 = mul nsw i32 %699, %701
  %703 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  %704 = load i32, i32* %703, align 8
  %705 = mul nsw i32 %702, %704
  %706 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %707 = load i32, i32* %706, align 4
  %708 = mul nsw i32 %705, %707
  %709 = sitofp i32 %708 to float
  %710 = fdiv float %697, %709
  %711 = load float, float* %10, align 4
  %712 = load i32, i32* %15, align 4
  %713 = sitofp i32 %712 to float
  %714 = fdiv float %711, %713
  %715 = load float, float* %11, align 4
  %716 = load i32, i32* %15, align 4
  %717 = sitofp i32 %716 to float
  %718 = fdiv float %715, %717
  %719 = load i32, i32* %15, align 4
  %720 = call i32 @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %684, float %688, float %692, float %696, float %710, float %714, float %718, i32 %719)
  br label %721

721:                                              ; preds = %671, %133
  ret void
}

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @entry_index(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8, i32, i32, i32) #1

declare dso_local i32 @activate_array(i64*, i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local void @get_yolo_box(%struct.TYPE_14__* sret, i64*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local void @float_to_box(%struct.TYPE_14__* sret, i32*, i32) #1

declare dso_local float @box_iou(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @delta_yolo_class(i64*, i64*, i32, i32, i32, i32, float*) #1

declare dso_local float @delta_yolo_box(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i64*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @int_index(i32*, i32, i32) #1

declare dso_local i64 @pow(i32, i32) #1

declare dso_local i32 @mag_array(i64*, i32) #1

declare dso_local i32 @printf(i8*, i32, float, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
