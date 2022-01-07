; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_on2avc_reconstruct_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_on2avc_reconstruct_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float**, float**, float*, float*, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_8__ = type { i32 (float*, float*, float*, i32, i32)* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, float*, float*)* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, float*, float*)* }
%struct.TYPE_10__ = type { i64* }

@ON2AVC_SUBFRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32)* @on2avc_reconstruct_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on2avc_reconstruct_channel(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to float*
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  store float* %26, float** %10, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load float**, float*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float*, float** %29, i64 %31
  %33 = load float*, float** %32, align 8
  store float* %33, float** %11, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load float**, float*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float*, float** %36, i64 %38
  %40 = load float*, float** %39, align 8
  store float* %40, float** %12, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load float*, float** %42, align 8
  store float* %43, float** %13, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load float*, float** %45, align 8
  store float* %46, float** %14, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %87 [
    i32 129, label %50
    i32 128, label %50
    i32 130, label %50
    i32 131, label %60
  ]

50:                                               ; preds = %4, %4, %4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 10
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_12__*, float*, float*)*, i32 (%struct.TYPE_12__*, float*, float*)** %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 10
  %57 = load float*, float** %13, align 8
  %58 = load float*, float** %11, align 8
  %59 = call i32 %54(%struct.TYPE_12__* %56, float* %57, float* %58)
  br label %87

60:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ON2AVC_SUBFRAME_SIZE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 9
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_11__*, float*, float*)*, i32 (%struct.TYPE_11__*, float*, float*)** %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 9
  %72 = load float*, float** %13, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float*, float** %11, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = call i32 %69(%struct.TYPE_11__* %71, float* %75, float* %79)
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* @ON2AVC_SUBFRAME_SIZE, align 4
  %83 = sdiv i32 %82, 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %61

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %4, %86, %50
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 130
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 128
  br i1 %96, label %97, label %120

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 130
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 129
  br i1 %106, label %107, label %120

107:                                              ; preds = %102, %97
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 7
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %111, align 8
  %113 = load float*, float** %10, align 8
  %114 = load float*, float** %12, align 8
  %115 = load float*, float** %13, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = call i32 %112(float* %113, float* %114, float* %115, i32 %118, i32 512)
  br label %233

120:                                              ; preds = %102, %92
  %121 = load float*, float** %10, align 8
  %122 = getelementptr inbounds float, float* %121, i64 448
  store float* %122, float** %15, align 8
  %123 = load float*, float** %10, align 8
  %124 = load float*, float** %12, align 8
  %125 = call i32 @memcpy(float* %123, float* %124, i32 1792)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 131
  br i1 %129, label %130, label %213

130:                                              ; preds = %120
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %134, align 8
  %136 = load float*, float** %15, align 8
  %137 = getelementptr inbounds float, float* %136, i64 0
  %138 = load float*, float** %12, align 8
  %139 = getelementptr inbounds float, float* %138, i64 448
  %140 = load float*, float** %13, align 8
  %141 = getelementptr inbounds float, float* %140, i64 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %135(float* %137, float* %139, float* %141, i32 %144, i32 64)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 7
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %149, align 8
  %151 = load float*, float** %15, align 8
  %152 = getelementptr inbounds float, float* %151, i64 128
  %153 = load float*, float** %13, align 8
  %154 = getelementptr inbounds float, float* %153, i64 0
  %155 = getelementptr inbounds float, float* %154, i64 64
  %156 = load float*, float** %13, align 8
  %157 = getelementptr inbounds float, float* %156, i64 128
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = call i32 %150(float* %152, float* %155, float* %157, i32 %160, i32 64)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 7
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %165, align 8
  %167 = load float*, float** %15, align 8
  %168 = getelementptr inbounds float, float* %167, i64 256
  %169 = load float*, float** %13, align 8
  %170 = getelementptr inbounds float, float* %169, i64 128
  %171 = getelementptr inbounds float, float* %170, i64 64
  %172 = load float*, float** %13, align 8
  %173 = getelementptr inbounds float, float* %172, i64 256
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = call i32 %166(float* %168, float* %171, float* %173, i32 %176, i32 64)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %181, align 8
  %183 = load float*, float** %15, align 8
  %184 = getelementptr inbounds float, float* %183, i64 384
  %185 = load float*, float** %13, align 8
  %186 = getelementptr inbounds float, float* %185, i64 256
  %187 = getelementptr inbounds float, float* %186, i64 64
  %188 = load float*, float** %13, align 8
  %189 = getelementptr inbounds float, float* %188, i64 384
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = call i32 %182(float* %184, float* %187, float* %189, i32 %192, i32 64)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 7
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %197, align 8
  %199 = load float*, float** %14, align 8
  %200 = load float*, float** %13, align 8
  %201 = getelementptr inbounds float, float* %200, i64 384
  %202 = getelementptr inbounds float, float* %201, i64 64
  %203 = load float*, float** %13, align 8
  %204 = getelementptr inbounds float, float* %203, i64 512
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = call i32 %198(float* %199, float* %202, float* %204, i32 %207, i32 64)
  %209 = load float*, float** %15, align 8
  %210 = getelementptr inbounds float, float* %209, i64 512
  %211 = load float*, float** %14, align 8
  %212 = call i32 @memcpy(float* %210, float* %211, i32 256)
  br label %232

213:                                              ; preds = %120
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 7
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %217, align 8
  %219 = load float*, float** %15, align 8
  %220 = load float*, float** %12, align 8
  %221 = getelementptr inbounds float, float* %220, i64 448
  %222 = load float*, float** %13, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = call i32 %218(float* %219, float* %221, float* %222, i32 %225, i32 64)
  %227 = load float*, float** %15, align 8
  %228 = getelementptr inbounds float, float* %227, i64 128
  %229 = load float*, float** %13, align 8
  %230 = getelementptr inbounds float, float* %229, i64 64
  %231 = call i32 @memcpy(float* %228, float* %230, i32 1792)
  br label %232

232:                                              ; preds = %213, %130
  br label %233

233:                                              ; preds = %232, %107
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  switch i32 %236, label %312 [
    i32 131, label %237
    i32 129, label %296
    i32 128, label %307
    i32 130, label %307
  ]

237:                                              ; preds = %233
  %238 = load float*, float** %12, align 8
  %239 = load float*, float** %14, align 8
  %240 = getelementptr inbounds float, float* %239, i64 64
  %241 = call i32 @memcpy(float* %238, float* %240, i32 256)
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 7
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %245, align 8
  %247 = load float*, float** %12, align 8
  %248 = getelementptr inbounds float, float* %247, i64 64
  %249 = load float*, float** %13, align 8
  %250 = getelementptr inbounds float, float* %249, i64 512
  %251 = getelementptr inbounds float, float* %250, i64 64
  %252 = load float*, float** %13, align 8
  %253 = getelementptr inbounds float, float* %252, i64 640
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 8
  %257 = call i32 %246(float* %248, float* %251, float* %253, i32 %256, i32 64)
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 7
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %261, align 8
  %263 = load float*, float** %12, align 8
  %264 = getelementptr inbounds float, float* %263, i64 192
  %265 = load float*, float** %13, align 8
  %266 = getelementptr inbounds float, float* %265, i64 640
  %267 = getelementptr inbounds float, float* %266, i64 64
  %268 = load float*, float** %13, align 8
  %269 = getelementptr inbounds float, float* %268, i64 768
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = call i32 %262(float* %264, float* %267, float* %269, i32 %272, i32 64)
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 7
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %277, align 8
  %279 = load float*, float** %12, align 8
  %280 = getelementptr inbounds float, float* %279, i64 320
  %281 = load float*, float** %13, align 8
  %282 = getelementptr inbounds float, float* %281, i64 768
  %283 = getelementptr inbounds float, float* %282, i64 64
  %284 = load float*, float** %13, align 8
  %285 = getelementptr inbounds float, float* %284, i64 896
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = call i32 %278(float* %280, float* %283, float* %285, i32 %288, i32 64)
  %290 = load float*, float** %12, align 8
  %291 = getelementptr inbounds float, float* %290, i64 448
  %292 = load float*, float** %13, align 8
  %293 = getelementptr inbounds float, float* %292, i64 896
  %294 = getelementptr inbounds float, float* %293, i64 64
  %295 = call i32 @memcpy(float* %291, float* %294, i32 256)
  br label %312

296:                                              ; preds = %233
  %297 = load float*, float** %12, align 8
  %298 = load float*, float** %13, align 8
  %299 = getelementptr inbounds float, float* %298, i64 512
  %300 = call i32 @memcpy(float* %297, float* %299, i32 1792)
  %301 = load float*, float** %12, align 8
  %302 = getelementptr inbounds float, float* %301, i64 448
  %303 = load float*, float** %13, align 8
  %304 = getelementptr inbounds float, float* %303, i64 896
  %305 = getelementptr inbounds float, float* %304, i64 64
  %306 = call i32 @memcpy(float* %302, float* %305, i32 256)
  br label %312

307:                                              ; preds = %233, %233
  %308 = load float*, float** %12, align 8
  %309 = load float*, float** %13, align 8
  %310 = getelementptr inbounds float, float* %309, i64 512
  %311 = call i32 @memcpy(float* %308, float* %310, i32 2048)
  br label %312

312:                                              ; preds = %233, %307, %296, %237
  ret i32 0
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
