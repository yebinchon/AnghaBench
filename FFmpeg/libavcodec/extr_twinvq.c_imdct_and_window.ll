; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_imdct_and_window.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_imdct_and_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float*, float*, i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 (float*, float*, float*, i32, i32)* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, float*, float*)* }

@TWINVQ_FT_LONG = common dso_local global i64 0, align 8
@TWINVQ_FT_MEDIUM = common dso_local global i64 0, align 8
@TWINVQ_FT_SHORT = common dso_local global i64 0, align 8
@wtype_to_wsize = common dso_local global i64* null, align 8
@ff_sine_windows = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32, float*, float*, i32)* @imdct_and_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_and_window(%struct.TYPE_11__* %0, i32 %1, i32 %2, float* %3, float* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca [3 x i32], align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %30
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %13, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %14, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %37, %45
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %16, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load float*, float** %51, align 8
  store float* %52, float** %17, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load float*, float** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = mul nsw i32 2, %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %55, i64 %62
  store float* %63, float** %21, align 8
  %64 = load float*, float** %21, align 8
  store float* %64, float** %22, align 8
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i64, i64* @TWINVQ_FT_LONG, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %68, %75
  store i32 %76, i32* %65, align 4
  %77 = getelementptr inbounds i32, i32* %65, i64 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i64, i64* @TWINVQ_FT_MEDIUM, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %80, %87
  store i32 %88, i32* %77, align 4
  %89 = getelementptr inbounds i32, i32* %77, i64 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i64, i64* @TWINVQ_FT_SHORT, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 2
  %101 = sdiv i32 %92, %100
  store i32 %101, i32* %89, align 4
  %102 = load i64*, i64** @wtype_to_wsize, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  store i32 %109, i32* %19, align 4
  %110 = load float*, float** %11, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sdiv i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %110, i64 %115
  store float* %116, float** %23, align 8
  store i32 0, i32* %18, align 4
  br label %117

117:                                              ; preds = %264, %6
  %118 = load i32, i32* %18, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %118, %126
  br i1 %127, label %128, label %267

128:                                              ; preds = %117
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* @TWINVQ_FT_MEDIUM, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  br label %136

136:                                              ; preds = %134, %133
  %137 = phi i32 [ 8, %133 ], [ %135, %134 ]
  store i32 %137, i32* %25, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 4, i32* %25, align 4
  br label %161

144:                                              ; preds = %140, %136
  %145 = load i32, i32* %18, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp eq i32 %145, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %144
  %157 = load i32, i32* %9, align 4
  %158 = icmp eq i32 %157, 7
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 7, i32* %25, align 4
  br label %160

160:                                              ; preds = %159, %156, %144
  br label %161

161:                                              ; preds = %160, %143
  %162 = load i64*, i64** @wtype_to_wsize, align 8
  %163 = load i32, i32* %25, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %20, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32 (%struct.TYPE_12__*, float*, float*)*, i32 (%struct.TYPE_12__*, float*, float*)** %170, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %173 = load float*, float** %17, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %18, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %173, i64 %177
  %179 = load float*, float** %10, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %18, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %179, i64 %183
  %185 = call i32 %171(%struct.TYPE_12__* %172, float* %178, float* %184)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %189, align 8
  %191 = load float*, float** %22, align 8
  %192 = load float*, float** %23, align 8
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %20, align 4
  %195 = sub nsw i32 %193, %194
  %196 = sdiv i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %192, i64 %197
  %199 = load float*, float** %17, align 8
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %18, align 4
  %202 = mul nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %199, i64 %203
  %205 = load i32*, i32** @ff_sine_windows, align 8
  %206 = load i32, i32* %20, align 4
  %207 = call i64 @av_log2(i32 %206)
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %20, align 4
  %211 = sdiv i32 %210, 2
  %212 = call i32 %190(float* %191, float* %198, float* %204, i32 %209, i32 %211)
  %213 = load i32, i32* %20, align 4
  %214 = load float*, float** %22, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds float, float* %214, i64 %215
  store float* %216, float** %22, align 8
  %217 = load float*, float** %22, align 8
  %218 = load float*, float** %17, align 8
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* %18, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %218, i64 %222
  %224 = load i32, i32* %20, align 4
  %225 = sdiv i32 %224, 2
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds float, float* %223, i64 %226
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %20, align 4
  %230 = sdiv i32 %229, 2
  %231 = sub nsw i32 %228, %230
  %232 = sext i32 %231 to i64
  %233 = mul i64 %232, 4
  %234 = trunc i64 %233 to i32
  %235 = call i32 @memcpy(float* %217, float* %227, i32 %234)
  %236 = load i32, i32* %8, align 4
  %237 = zext i32 %236 to i64
  %238 = load i64, i64* @TWINVQ_FT_MEDIUM, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %161
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* %20, align 4
  %243 = sub nsw i32 %241, %242
  %244 = sdiv i32 %243, 2
  br label %249

245:                                              ; preds = %161
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %20, align 4
  %248 = sub nsw i32 %246, %247
  br label %249

249:                                              ; preds = %245, %240
  %250 = phi i32 [ %244, %240 ], [ %248, %245 ]
  %251 = load float*, float** %22, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds float, float* %251, i64 %252
  store float* %253, float** %22, align 8
  %254 = load float*, float** %17, align 8
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* %18, align 4
  %257 = mul nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %254, i64 %258
  %260 = load i32, i32* %15, align 4
  %261 = sdiv i32 %260, 2
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %259, i64 %262
  store float* %263, float** %23, align 8
  br label %264

264:                                              ; preds = %249
  %265 = load i32, i32* %18, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %18, align 4
  br label %117

267:                                              ; preds = %117
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %19, align 4
  %270 = add nsw i32 %268, %269
  %271 = sdiv i32 %270, 2
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %12, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 %271, i32* %277, align 4
  ret void
}

declare dso_local i64 @av_log2(i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
