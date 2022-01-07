; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_forward_convolutional_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_forward_convolutional_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_convolutional_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = bitcast %struct.TYPE_8__* %4 to { float*, float* }*
  %15 = getelementptr inbounds { float*, float* }, { float*, float* }* %14, i32 0, i32 0
  store float* %1, float** %15, align 8
  %16 = getelementptr inbounds { float*, float* }, { float*, float* }* %14, i32 0, i32 1
  store float* %2, float** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %18, %20
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %23 = load float*, float** %22, align 8
  %24 = call i32 @fill_cpu(i32 %21, i32 0, float* %23, i32 1)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 14
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %34, %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %37, %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %40, %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 21
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @binarize_weights(float* %30, i32 %32, i32 %43, i32 %45)
  %47 = call i32 @swap_binary(%struct.TYPE_9__* %0)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %54, %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %57, %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 10
  %62 = load float*, float** %61, align 8
  %63 = call i32 @binarize_cpu(float* %49, i32 %60, float* %62)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 10
  %65 = load float*, float** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store float* %65, float** %66, align 8
  br label %67

67:                                               ; preds = %28, %3
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = sdiv i32 %69, %71
  store i32 %72, i32* %7, align 4
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %74, %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %77, %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %80, %82
  store i32 %83, i32* %8, align 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 11
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 12
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %85, %87
  store i32 %88, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %189, %67
  %90 = load i32, i32* %5, align 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %192

94:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %185, %94
  %96 = load i32, i32* %6, align 4
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %188

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %102 = load float*, float** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 13
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %103, %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = sdiv i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %102, i64 %110
  store float* %111, float** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %113 = load float*, float** %112, align 8
  store float* %113, float** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %115 = load float*, float** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %116, %118
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %9, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %115, i64 %126
  store float* %127, float** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %129 = load float*, float** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %130, %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %133, %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %135, %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %138, %140
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 %141, %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %144, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %129, i64 %148
  store float* %149, float** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %155

153:                                              ; preds = %100
  %154 = load float*, float** %13, align 8
  store float* %154, float** %11, align 8
  br label %174

155:                                              ; preds = %100
  %156 = load float*, float** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = sdiv i32 %158, %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 20
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 19
  %171 = load i32, i32* %170, align 8
  %172 = load float*, float** %11, align 8
  %173 = call i32 @im2col_cpu(float* %156, i32 %161, i32 %163, i32 %165, i32 %167, i32 %169, i32 %171, float* %172)
  br label %174

174:                                              ; preds = %155, %153
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load float*, float** %10, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load float*, float** %11, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load float*, float** %12, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @gemm(i32 0, i32 0, i32 %175, i32 %176, i32 %177, i32 1, float* %178, i32 %179, float* %180, i32 %181, i32 1, float* %182, i32 %183)
  br label %185

185:                                              ; preds = %174
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %95

188:                                              ; preds = %95
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %89

192:                                              ; preds = %89
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 18
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = bitcast %struct.TYPE_8__* %4 to { float*, float* }*
  %198 = getelementptr inbounds { float*, float* }, { float*, float* }* %197, i32 0, i32 0
  %199 = load float*, float** %198, align 8
  %200 = getelementptr inbounds { float*, float* }, { float*, float* }* %197, i32 0, i32 1
  %201 = load float*, float** %200, align 8
  %202 = call i32 @forward_batchnorm_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %0, float* %199, float* %201)
  br label %218

203:                                              ; preds = %192
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %205 = load float*, float** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 17
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 12
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 11
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 %213, %215
  %217 = call i32 @add_bias(float* %205, i32 %207, i32 %209, i32 %211, i32 %216)
  br label %218

218:                                              ; preds = %203, %196
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %220 = load float*, float** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %222, %224
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 16
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @activate_array(float* %220, i32 %225, i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 15
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %218
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 14
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %232, %218
  %237 = call i32 @swap_binary(%struct.TYPE_9__* %0)
  br label %238

238:                                              ; preds = %236, %232
  ret void
}

declare dso_local i32 @fill_cpu(i32, i32, float*, i32) #1

declare dso_local i32 @binarize_weights(float*, i32, i32, i32) #1

declare dso_local i32 @swap_binary(%struct.TYPE_9__*) #1

declare dso_local i32 @binarize_cpu(float*, i32, float*) #1

declare dso_local i32 @im2col_cpu(float*, i32, i32, i32, i32, i32, i32, float*) #1

declare dso_local i32 @gemm(i32, i32, i32, i32, i32, i32, float*, i32, float*, i32, i32, float*, i32) #1

declare dso_local i32 @forward_batchnorm_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, float*, float*) #1

declare dso_local i32 @add_bias(float*, i32, i32, i32, i32) #1

declare dso_local i32 @activate_array(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
