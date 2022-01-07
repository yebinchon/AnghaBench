; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_image.c_task_image_load_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_image.c_task_image_load_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.nbio_image_handle = type { i32, i32 (%struct.TYPE_10__*, i64)*, i64, %struct.TYPE_11__, i64, i32, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i64 }
%struct.texture_image = type { i32, i32, i32, i32, i64, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_image_load_handler(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.nbio_image_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.texture_image*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.texture_image, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.nbio_image_handle*
  store %struct.nbio_image_handle* %21, %struct.nbio_image_handle** %5, align 8
  %22 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %23 = icmp ne %struct.nbio_image_handle* %22, null
  br i1 %23, label %24, label %129

24:                                               ; preds = %1
  %25 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %26 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %128 [
    i32 128, label %28
    i32 132, label %29
    i32 129, label %37
    i32 130, label %66
    i32 131, label %101
  ]

28:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %297

29:                                               ; preds = %24
  %30 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %31 = call i32 @task_image_iterate_process_transfer(%struct.nbio_image_handle* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %35 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %34, i32 0, i32 0
  store i32 131, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %29
  br label %128

37:                                               ; preds = %24
  %38 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %39 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %44 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %43, i32 0, i32 1
  %45 = load i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, i64)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_10__*, i64)* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  store i64 0, i64* %6, align 8
  %48 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %49 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, i64)** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 %50(%struct.TYPE_10__* %51, i64 %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %297

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %42, %37
  %58 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %59 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %64 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %63, i32 0, i32 0
  store i32 132, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %57
  br label %128

66:                                               ; preds = %24
  %67 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %68 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %66
  %72 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %73 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %71
  %77 = call i64 (...) @cpu_features_get_time_usec()
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %91, %76
  %79 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %80 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %83 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @image_transfer_iterate(i32 %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %89 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %88, i32 0, i32 0
  store i32 129, i32* %89, align 8
  br label %99

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = call i64 (...) @cpu_features_get_time_usec()
  %93 = load i64, i64* %7, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %96 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %78, label %99

99:                                               ; preds = %91, %87
  br label %100

100:                                              ; preds = %99, %71, %66
  br label %128

101:                                              ; preds = %24
  %102 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %103 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %108 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %107, i32 0, i32 1
  %109 = load i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, i64)** %108, align 8
  %110 = icmp ne i32 (%struct.TYPE_10__*, i64)* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  store i64 0, i64* %8, align 8
  %112 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %113 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %112, i32 0, i32 1
  %114 = load i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, i64)** %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i32 %114(%struct.TYPE_10__* %115, i64 %116)
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %297

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %106, %101
  %122 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %123 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  br label %128

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %24, %126, %100, %65, %36
  br label %129

129:                                              ; preds = %128, %1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %296

134:                                              ; preds = %129
  %135 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %136 = icmp ne %struct.nbio_image_handle* %135, null
  br i1 %136, label %137, label %296

137:                                              ; preds = %134
  %138 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %139 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %296

142:                                              ; preds = %137
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = call i32 @task_get_cancelled(%struct.TYPE_9__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %296, label %146

146:                                              ; preds = %142
  %147 = call i64 @malloc(i32 40)
  %148 = inttoptr i64 %147 to %struct.texture_image*
  store %struct.texture_image* %148, %struct.texture_image** %9, align 8
  %149 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %150 = icmp ne %struct.texture_image* %149, null
  br i1 %150, label %151, label %292

151:                                              ; preds = %146
  %152 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %153 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %265

156:                                              ; preds = %151
  %157 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %158 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %264

162:                                              ; preds = %156
  %163 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %164 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %264

168:                                              ; preds = %162
  %169 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %170 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %174 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp slt i64 %172, %175
  br i1 %176, label %186, label %177

177:                                              ; preds = %168
  %178 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %179 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %183 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %181, %184
  br i1 %185, label %186, label %264

186:                                              ; preds = %177, %168
  %187 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %188 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %192 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp slt i64 %190, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %186
  %197 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %198 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  br label %206

201:                                              ; preds = %186
  %202 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %203 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  br label %206

206:                                              ; preds = %201, %196
  %207 = phi i64 [ %200, %196 ], [ %205, %201 ]
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %10, align 4
  %209 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %210 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = sitofp i64 %211 to float
  %213 = load i32, i32* %10, align 4
  %214 = uitofp i32 %213 to float
  %215 = fdiv float %212, %214
  store float %215, float* %11, align 4
  %216 = load float, float* %11, align 4
  %217 = fptoui float %216 to i32
  store i32 %217, i32* %12, align 4
  %218 = bitcast %struct.texture_image* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %218, i8 0, i64 40, i1 false)
  %219 = load float, float* %11, align 4
  %220 = load i32, i32* %12, align 4
  %221 = uitofp i32 %220 to float
  %222 = fsub float %219, %221
  %223 = fcmp ogt float %222, 0.000000e+00
  br i1 %223, label %224, label %227

224:                                              ; preds = %206
  %225 = load i32, i32* %12, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %224, %206
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %230 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %229, i32 0, i32 3
  %231 = call i64 @upscale_image(i32 %228, %struct.TYPE_11__* %230, %struct.texture_image* %13)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %263

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %13, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  %237 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %238 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  store i64 %236, i64* %239, align 8
  %240 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %13, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = zext i32 %241 to i64
  %243 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %244 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  store i64 %242, i64* %245, align 8
  %246 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %247 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %233
  %252 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %253 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @free(i64 %255)
  br label %257

257:                                              ; preds = %251, %233
  %258 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %13, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %261 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 3
  store i64 %259, i64* %262, align 8
  br label %263

263:                                              ; preds = %257, %227
  br label %264

264:                                              ; preds = %263, %177, %162, %156
  br label %265

265:                                              ; preds = %264, %151
  %266 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %267 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = trunc i64 %269 to i32
  %271 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %272 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %274 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = trunc i64 %276 to i32
  %278 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %279 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %281 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %285 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %284, i32 0, i32 4
  store i64 %283, i64* %285, align 8
  %286 = load %struct.nbio_image_handle*, %struct.nbio_image_handle** %5, align 8
  %287 = getelementptr inbounds %struct.nbio_image_handle, %struct.nbio_image_handle* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %291 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %290, i32 0, i32 3
  store i32 %289, i32* %291, align 4
  br label %292

292:                                              ; preds = %265, %146
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %294 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %295 = call i32 @task_set_data(%struct.TYPE_9__* %293, %struct.texture_image* %294)
  store i32 0, i32* %2, align 4
  br label %297

296:                                              ; preds = %142, %137, %134, %129
  store i32 1, i32* %2, align 4
  br label %297

297:                                              ; preds = %296, %292, %119, %55, %28
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local i32 @task_image_iterate_process_transfer(%struct.nbio_image_handle*) #1

declare dso_local i64 @cpu_features_get_time_usec(...) #1

declare dso_local i32 @image_transfer_iterate(i32, i32) #1

declare dso_local i32 @task_get_cancelled(%struct.TYPE_9__*) #1

declare dso_local i64 @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @upscale_image(i32, %struct.TYPE_11__*, %struct.texture_image*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @task_set_data(%struct.TYPE_9__*, %struct.texture_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
