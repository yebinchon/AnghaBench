; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_local_layer.c_backward_local_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_local_layer.c_backward_local_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, float*, i32, i32, i32, i32, float*, i32, float*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { float*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backward_local_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %20, %22
  store i32 %23, i32* %5, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 16
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %27, %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 15
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %34 = load float*, float** %33, align 8
  %35 = call i32 @gradient_array(i32 %25, i32 %30, i32 %32, float* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %55, %2
  %37 = load i32, i32* %3, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %45 = load float*, float** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %45, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 14
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @axpy_cpu(i32 %43, i32 1, float* %51, i32 1, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %36

58:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %255, %58
  %60 = load i32, i32* %3, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %258

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %66 = load float*, float** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %67, %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %73, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %66, i64 %77
  store float* %78, float** %6, align 8
  %79 = load float*, float** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 13
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 12
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @im2col_cpu(float* %79, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89, i32 %91, i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %154, %64
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %157

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %101 = load float*, float** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %101, i64 %106
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  store float* %110, float** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to float*
  store float* %116, float** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %118 = load float*, float** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %119, %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %122, %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %125, %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %128, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %118, i64 %132
  store float* %133, float** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %10, align 4
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %137, %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %140, %142
  store i32 %143, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load float*, float** %7, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load float*, float** %8, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load float*, float** %9, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @gemm(i32 0, i32 1, i32 %144, i32 %145, i32 %146, i32 1, float* %147, i32 %148, float* %149, i32 %150, i32 1, float* %151, i32 %152)
  br label %154

154:                                              ; preds = %99
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %95

157:                                              ; preds = %95
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %254

161:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %221, %161
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %224

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 11
  %168 = load float*, float** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %169, %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %172, %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %175, %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %180 = load i32, i32* %179, align 8
  %181 = mul nsw i32 %178, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %168, i64 %182
  store float* %183, float** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %185 = load float*, float** %184, align 8
  %186 = load i32, i32* %3, align 4
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %186, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %185, i64 %190
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %191, i64 %193
  store float* %194, float** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to float*
  store float* %200, float** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %202, %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %207 = load i32, i32* %206, align 8
  %208 = mul nsw i32 %205, %207
  store i32 %208, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %18, align 4
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* %18, align 4
  %214 = load float*, float** %13, align 8
  %215 = load i32, i32* %16, align 4
  %216 = load float*, float** %14, align 8
  %217 = load i32, i32* %5, align 4
  %218 = load float*, float** %15, align 8
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @gemm(i32 1, i32 0, i32 %211, i32 %212, i32 %213, i32 1, float* %214, i32 %215, float* %216, i32 %217, i32 0, float* %218, i32 %219)
  br label %221

221:                                              ; preds = %166
  %222 = load i32, i32* %4, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %4, align 4
  br label %162

224:                                              ; preds = %162
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %228 = load i32, i32* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 13
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 12
  %238 = load i32, i32* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %3, align 4
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %243 = load i32, i32* %242, align 8
  %244 = mul nsw i32 %241, %243
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %244, %246
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = mul nsw i32 %247, %249
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %240, %251
  %253 = call i32 @col2im_cpu(i32 %226, i32 %228, i32 %230, i32 %232, i32 %234, i32 %236, i32 %238, i64 %252)
  br label %254

254:                                              ; preds = %224, %157
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %3, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %3, align 4
  br label %59

258:                                              ; preds = %59
  ret void
}

declare dso_local i32 @gradient_array(i32, i32, i32, float*) #1

declare dso_local i32 @axpy_cpu(i32, i32, float*, i32, i32, i32) #1

declare dso_local i32 @im2col_cpu(float*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gemm(i32, i32, i32, i32, i32, i32, float*, i32, float*, i32, i32, float*, i32) #1

declare dso_local i32 @col2im_cpu(i32, i32, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
