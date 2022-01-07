; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_decode_lsp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_decode_lsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32*, i32, float*, float*)* @decode_lsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_lsp(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3, float* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca [4 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %13, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load float*, float** %27, align 8
  store float* %28, float** %16, align 8
  %29 = load float*, float** %16, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 1, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %29, i64 %38
  store float* %39, float** %17, align 8
  %40 = load float*, float** %17, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %40, i64 %49
  store float* %50, float** %18, align 8
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 -2, i32* %51, align 4
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 4
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 -2, i32 1
  store i32 %58, i32* %52, align 4
  %59 = getelementptr inbounds i32, i32* %52, i64 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 4
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 -2, i32 1
  store i32 %65, i32* %59, align 4
  %66 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 0, i32* %66, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %129, %6
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %132

73:                                               ; preds = %67
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %79, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %84, %87
  store i32 %88, i32* %20, align 4
  br label %89

89:                                               ; preds = %125, %73
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %20, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %128

93:                                               ; preds = %89
  %94 = load float*, float** %16, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %94, i64 %102
  %104 = load float, float* %103, align 4
  %105 = load float*, float** %17, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %105, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fadd float %104, %119
  %121 = load float*, float** %11, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  store float %120, float* %124, align 4
  br label %125

125:                                              ; preds = %93
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %89

128:                                              ; preds = %89
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %67

132:                                              ; preds = %67
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load float*, float** %11, align 8
  %137 = call i32 @rearrange_lsp(i32 %135, float* %136, double 1.000000e-04)
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %198, %132
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %201

144:                                              ; preds = %138
  %145 = load float*, float** %18, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %146, %149
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %145, i64 %153
  %155 = load float, float* %154, align 4
  %156 = fpext float %155 to double
  %157 = fsub double 1.000000e+00, %156
  %158 = fptrunc double %157 to float
  store float %158, float* %21, align 4
  %159 = load float*, float** %12, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %159, i64 %161
  %163 = load float, float* %162, align 4
  %164 = load float*, float** %18, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %165, %168
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %164, i64 %172
  %174 = load float, float* %173, align 4
  %175 = fmul float %163, %174
  store float %175, float* %22, align 4
  %176 = load float*, float** %11, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %176, i64 %178
  %180 = load float, float* %179, align 4
  %181 = load float*, float** %12, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %181, i64 %183
  store float %180, float* %184, align 4
  %185 = load float*, float** %11, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %185, i64 %187
  %189 = load float, float* %188, align 4
  %190 = load float, float* %21, align 4
  %191 = fmul float %189, %190
  %192 = load float, float* %22, align 4
  %193 = fadd float %191, %192
  %194 = load float*, float** %11, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %194, i64 %196
  store float %193, float* %197, align 4
  br label %198

198:                                              ; preds = %144
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %14, align 4
  br label %138

201:                                              ; preds = %138
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load float*, float** %11, align 8
  %206 = call i32 @rearrange_lsp(i32 %204, float* %205, double 1.000000e-04)
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load float*, float** %11, align 8
  %211 = call i32 @rearrange_lsp(i32 %209, float* %210, double 9.500000e-05)
  %212 = load float*, float** %11, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ff_sort_nearly_sorted_floats(float* %212, i32 %215)
  ret void
}

declare dso_local i32 @rearrange_lsp(i32, float*, double) #1

declare dso_local i32 @ff_sort_nearly_sorted_floats(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
