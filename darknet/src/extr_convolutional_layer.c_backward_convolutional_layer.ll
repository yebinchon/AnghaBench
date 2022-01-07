; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_backward_convolutional_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_backward_convolutional_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, float*, float*, i32, i32, i32, float*, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { float*, float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backward_convolutional_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %14, %16
  store i32 %17, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %19, %21
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %22, %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %25, %27
  store i32 %28, i32* %6, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %30, %32
  store i32 %33, i32* %7, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 19
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %37, %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 18
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %44 = load float*, float** %43, align 8
  %45 = call i32 @gradient_array(i32 %35, i32 %40, i32 %42, float* %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 17
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = call i32 @backward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1)
  br label %62

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 16
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @backward_bias(i32 %53, float* %55, i32 %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %49
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %257, %62
  %64 = load i32, i32* %3, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %260

68:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %253, %68
  %70 = load i32, i32* %4, align 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %256

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %76 = load float*, float** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %77, %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %76, i64 %87
  store float* %88, float** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %90 = load float*, float** %89, align 8
  store float* %90, float** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 9
  %92 = load float*, float** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 10
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %93, %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %96, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %92, i64 %100
  store float* %101, float** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %103 = load float*, float** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %104, %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %107, %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %109, %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %112, %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %115, %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 12
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %118, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %103, i64 %122
  store float* %123, float** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %125 = load float*, float** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %126, %128
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %129, %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %131, %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %134, %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %137, %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 12
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %140, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %125, i64 %144
  store float* %145, float** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %74
  %150 = load float*, float** %11, align 8
  store float* %150, float** %9, align 8
  br label %170

151:                                              ; preds = %74
  %152 = load float*, float** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %154, %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 12
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 15
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 14
  %167 = load i32, i32* %166, align 8
  %168 = load float*, float** %9, align 8
  %169 = call i32 @im2col_cpu(float* %152, i32 %157, i32 %159, i32 %161, i32 %163, i32 %165, i32 %167, float* %168)
  br label %170

170:                                              ; preds = %151, %149
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load float*, float** %8, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load float*, float** %9, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load float*, float** %10, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @gemm(i32 0, i32 1, i32 %171, i32 %172, i32 %173, i32 1, float* %174, i32 %175, float* %176, i32 %177, i32 1, float* %178, i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %182 = load float*, float** %181, align 8
  %183 = icmp ne float* %182, null
  br i1 %183, label %184, label %252

184:                                              ; preds = %170
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 13
  %186 = load float*, float** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 10
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %187, %189
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sdiv i32 %190, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %186, i64 %194
  store float* %195, float** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %197 = load float*, float** %196, align 8
  %198 = load i32, i32* %3, align 4
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %198, %200
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %5, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load i32, i32* %7, align 4
  %207 = mul nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %197, i64 %208
  store float* %209, float** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %211 = load float*, float** %210, align 8
  store float* %211, float** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %217

215:                                              ; preds = %184
  %216 = load float*, float** %12, align 8
  store float* %216, float** %10, align 8
  br label %217

217:                                              ; preds = %215, %184
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %5, align 4
  %221 = load float*, float** %8, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load float*, float** %9, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load float*, float** %10, align 8
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @gemm(i32 1, i32 0, i32 %218, i32 %219, i32 %220, i32 1, float* %221, i32 %222, float* %223, i32 %224, i32 0, float* %225, i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 1
  br i1 %230, label %231, label %251

231:                                              ; preds = %217
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %233 = load float*, float** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sdiv i32 %235, %237
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 12
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 15
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 14
  %248 = load i32, i32* %247, align 8
  %249 = load float*, float** %12, align 8
  %250 = call i32 @col2im_cpu(float* %233, i32 %238, i32 %240, i32 %242, i32 %244, i32 %246, i32 %248, float* %249)
  br label %251

251:                                              ; preds = %231, %217
  br label %252

252:                                              ; preds = %251, %170
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %4, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %4, align 4
  br label %69

256:                                              ; preds = %69
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %3, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %3, align 4
  br label %63

260:                                              ; preds = %63
  ret void
}

declare dso_local i32 @gradient_array(i32, i32, i32, float*) #1

declare dso_local i32 @backward_batchnorm_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i32 @backward_bias(i32, float*, i32, i32, i32) #1

declare dso_local i32 @im2col_cpu(float*, i32, i32, i32, i32, i32, i32, float*) #1

declare dso_local i32 @gemm(i32, i32, i32, i32, i32, i32, float*, i32, float*, i32, i32, float*, i32) #1

declare dso_local i32 @col2im_cpu(float*, i32, i32, i32, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
