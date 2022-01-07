; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_context.c__glfwChooseFBConfig.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_context.c__glfwChooseFBConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@GLFW_DONT_CARE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @_glfwChooseFBConfig(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @UINT_MAX, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @UINT_MAX, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @UINT_MAX, align 4
  store i32 %18, i32* %13, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %458, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %461

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %14, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %458

38:                                               ; preds = %32, %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %458

47:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %52, %47
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %65, %60
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %78, %73
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %91
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %102, %105
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %99, %91, %86
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %121, %116, %111
  store i32 0, i32* %10, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @GLFW_DONT_CARE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %124
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %140, %143
  %145 = mul nsw i64 %137, %144
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %130, %124
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @GLFW_DONT_CARE, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %150
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 8
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %159, %162
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 8
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %166, %169
  %171 = mul nsw i64 %163, %170
  %172 = load i32, i32* %10, align 4
  %173 = zext i32 %172 to i64
  %174 = add nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %156, %150
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 9
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @GLFW_DONT_CARE, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %176
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 9
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 9
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %185, %188
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 9
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %192, %195
  %197 = mul nsw i64 %189, %196
  %198 = load i32, i32* %10, align 4
  %199 = zext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %182, %176
  store i32 0, i32* %12, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @GLFW_DONT_CARE, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %228

208:                                              ; preds = %202
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = sub nsw i64 %211, %214
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = sub nsw i64 %218, %221
  %223 = mul nsw i64 %215, %222
  %224 = load i32, i32* %12, align 4
  %225 = zext i32 %224 to i64
  %226 = add nsw i64 %225, %223
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %208, %202
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @GLFW_DONT_CARE, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %254

234:                                              ; preds = %228
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %237, %240
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = sub nsw i64 %244, %247
  %249 = mul nsw i64 %241, %248
  %250 = load i32, i32* %12, align 4
  %251 = zext i32 %250 to i64
  %252 = add nsw i64 %251, %249
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %12, align 4
  br label %254

254:                                              ; preds = %234, %228
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @GLFW_DONT_CARE, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %280

260:                                              ; preds = %254
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = sub nsw i64 %263, %266
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = sub nsw i64 %270, %273
  %275 = mul nsw i64 %267, %274
  %276 = load i32, i32* %12, align 4
  %277 = zext i32 %276 to i64
  %278 = add nsw i64 %277, %275
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %12, align 4
  br label %280

280:                                              ; preds = %260, %254
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 10
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @GLFW_DONT_CARE, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %306

286:                                              ; preds = %280
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 10
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 10
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %289, %292
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 10
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 10
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %296, %299
  %301 = mul nsw i64 %293, %300
  %302 = load i32, i32* %12, align 4
  %303 = zext i32 %302 to i64
  %304 = add nsw i64 %303, %301
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %12, align 4
  br label %306

306:                                              ; preds = %286, %280
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 11
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @GLFW_DONT_CARE, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %332

312:                                              ; preds = %306
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 11
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 11
  %318 = load i64, i64* %317, align 8
  %319 = sub nsw i64 %315, %318
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 11
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 11
  %325 = load i64, i64* %324, align 8
  %326 = sub nsw i64 %322, %325
  %327 = mul nsw i64 %319, %326
  %328 = load i32, i32* %12, align 4
  %329 = zext i32 %328 to i64
  %330 = add nsw i64 %329, %327
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %12, align 4
  br label %332

332:                                              ; preds = %312, %306
  %333 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 12
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @GLFW_DONT_CARE, align 8
  %337 = icmp ne i64 %335, %336
  br i1 %337, label %338, label %358

338:                                              ; preds = %332
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 12
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 12
  %344 = load i64, i64* %343, align 8
  %345 = sub nsw i64 %341, %344
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 12
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 12
  %351 = load i64, i64* %350, align 8
  %352 = sub nsw i64 %348, %351
  %353 = mul nsw i64 %345, %352
  %354 = load i32, i32* %12, align 4
  %355 = zext i32 %354 to i64
  %356 = add nsw i64 %355, %353
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %12, align 4
  br label %358

358:                                              ; preds = %338, %332
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 13
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @GLFW_DONT_CARE, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %364, label %384

364:                                              ; preds = %358
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 13
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 13
  %370 = load i64, i64* %369, align 8
  %371 = sub nsw i64 %367, %370
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 13
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 13
  %377 = load i64, i64* %376, align 8
  %378 = sub nsw i64 %374, %377
  %379 = mul nsw i64 %371, %378
  %380 = load i32, i32* %12, align 4
  %381 = zext i32 %380 to i64
  %382 = add nsw i64 %381, %379
  %383 = trunc i64 %382 to i32
  store i32 %383, i32* %12, align 4
  br label %384

384:                                              ; preds = %364, %358
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 6
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @GLFW_DONT_CARE, align 8
  %389 = icmp ne i64 %387, %388
  br i1 %389, label %390, label %410

390:                                              ; preds = %384
  %391 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 6
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 6
  %396 = load i64, i64* %395, align 8
  %397 = sub nsw i64 %393, %396
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 6
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 6
  %403 = load i64, i64* %402, align 8
  %404 = sub nsw i64 %400, %403
  %405 = mul nsw i64 %397, %404
  %406 = load i32, i32* %12, align 4
  %407 = zext i32 %406 to i64
  %408 = add nsw i64 %407, %405
  %409 = trunc i64 %408 to i32
  store i32 %409, i32* %12, align 4
  br label %410

410:                                              ; preds = %390, %384
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 14
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %423

415:                                              ; preds = %410
  %416 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 14
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %423, label %420

420:                                              ; preds = %415
  %421 = load i32, i32* %12, align 4
  %422 = add i32 %421, 1
  store i32 %422, i32* %12, align 4
  br label %423

423:                                              ; preds = %420, %415, %410
  %424 = load i32, i32* %8, align 4
  %425 = load i32, i32* %9, align 4
  %426 = icmp ult i32 %424, %425
  br i1 %426, label %427, label %429

427:                                              ; preds = %423
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %428, %struct.TYPE_5__** %15, align 8
  br label %449

429:                                              ; preds = %423
  %430 = load i32, i32* %8, align 4
  %431 = load i32, i32* %9, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %448

433:                                              ; preds = %429
  %434 = load i32, i32* %10, align 4
  %435 = load i32, i32* %11, align 4
  %436 = icmp ult i32 %434, %435
  br i1 %436, label %445, label %437

437:                                              ; preds = %433
  %438 = load i32, i32* %10, align 4
  %439 = load i32, i32* %11, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %447

441:                                              ; preds = %437
  %442 = load i32, i32* %12, align 4
  %443 = load i32, i32* %13, align 4
  %444 = icmp ult i32 %442, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %441, %433
  %446 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %446, %struct.TYPE_5__** %15, align 8
  br label %447

447:                                              ; preds = %445, %441, %437
  br label %448

448:                                              ; preds = %447, %429
  br label %449

449:                                              ; preds = %448, %427
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %451 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %452 = icmp eq %struct.TYPE_5__* %450, %451
  br i1 %452, label %453, label %457

453:                                              ; preds = %449
  %454 = load i32, i32* %8, align 4
  store i32 %454, i32* %9, align 4
  %455 = load i32, i32* %10, align 4
  store i32 %455, i32* %11, align 4
  %456 = load i32, i32* %12, align 4
  store i32 %456, i32* %13, align 4
  br label %457

457:                                              ; preds = %453, %449
  br label %458

458:                                              ; preds = %457, %46, %37
  %459 = load i32, i32* %7, align 4
  %460 = add i32 %459, 1
  store i32 %460, i32* %7, align 4
  br label %19

461:                                              ; preds = %19
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  ret %struct.TYPE_5__* %462
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
