; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guQuatMtx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guQuatMtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_guQuatMtx(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call float @guMtxRowCol(i32 %10, i32 0, i32 0)
  %12 = load i32, i32* %4, align 4
  %13 = call float @guMtxRowCol(i32 %12, i32 1, i32 1)
  %14 = fadd float %11, %13
  %15 = load i32, i32* %4, align 4
  %16 = call float @guMtxRowCol(i32 %15, i32 2, i32 2)
  %17 = fadd float %14, %16
  %18 = fadd float %17, 1.000000e+00
  store float %18, float* %5, align 4
  %19 = load float, float* %5, align 4
  %20 = fcmp ogt float %19, 0.000000e+00
  br i1 %20, label %21, label %56

21:                                               ; preds = %2
  %22 = load float, float* %5, align 4
  %23 = call float @sqrtf(float %22) #3
  %24 = fmul float %23, 2.000000e+00
  store float %24, float* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call float @guMtxRowCol(i32 %25, i32 2, i32 1)
  %27 = load i32, i32* %4, align 4
  %28 = call float @guMtxRowCol(i32 %27, i32 1, i32 2)
  %29 = fsub float %26, %28
  %30 = load float, float* %6, align 4
  %31 = fdiv float %29, %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store float %31, float* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call float @guMtxRowCol(i32 %34, i32 0, i32 2)
  %36 = load i32, i32* %4, align 4
  %37 = call float @guMtxRowCol(i32 %36, i32 2, i32 0)
  %38 = fsub float %35, %37
  %39 = load float, float* %6, align 4
  %40 = fdiv float %38, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store float %40, float* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call float @guMtxRowCol(i32 %43, i32 1, i32 0)
  %45 = load i32, i32* %4, align 4
  %46 = call float @guMtxRowCol(i32 %45, i32 0, i32 1)
  %47 = fsub float %44, %46
  %48 = load float, float* %6, align 4
  %49 = fdiv float %47, %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store float %49, float* %51, align 4
  %52 = load float, float* %6, align 4
  %53 = fmul float 2.500000e-01, %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store float %53, float* %55, align 4
  br label %205

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = call float @guMtxRowCol(i32 %57, i32 0, i32 0)
  %59 = load i32, i32* %4, align 4
  %60 = call float @guMtxRowCol(i32 %59, i32 1, i32 1)
  %61 = fcmp ogt float %58, %60
  br i1 %61, label %62, label %111

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = call float @guMtxRowCol(i32 %63, i32 0, i32 0)
  %65 = load i32, i32* %4, align 4
  %66 = call float @guMtxRowCol(i32 %65, i32 2, i32 2)
  %67 = fcmp ogt float %64, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = call float @guMtxRowCol(i32 %69, i32 0, i32 0)
  %71 = fadd float 1.000000e+00, %70
  %72 = load i32, i32* %4, align 4
  %73 = call float @guMtxRowCol(i32 %72, i32 1, i32 1)
  %74 = fadd float %71, %73
  %75 = load i32, i32* %4, align 4
  %76 = call float @guMtxRowCol(i32 %75, i32 2, i32 2)
  %77 = fadd float %74, %76
  %78 = call float @sqrtf(float %77) #3
  %79 = fmul float %78, 2.000000e+00
  store float %79, float* %7, align 4
  %80 = load float, float* %7, align 4
  %81 = fmul float 2.500000e-01, %80
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store float %81, float* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call float @guMtxRowCol(i32 %84, i32 0, i32 1)
  %86 = load i32, i32* %4, align 4
  %87 = call float @guMtxRowCol(i32 %86, i32 1, i32 0)
  %88 = fadd float %85, %87
  %89 = load float, float* %7, align 4
  %90 = fdiv float %88, %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store float %90, float* %92, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call float @guMtxRowCol(i32 %93, i32 2, i32 0)
  %95 = load i32, i32* %4, align 4
  %96 = call float @guMtxRowCol(i32 %95, i32 0, i32 2)
  %97 = fadd float %94, %96
  %98 = load float, float* %7, align 4
  %99 = fdiv float %97, %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store float %99, float* %101, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call float @guMtxRowCol(i32 %102, i32 2, i32 1)
  %104 = load i32, i32* %4, align 4
  %105 = call float @guMtxRowCol(i32 %104, i32 1, i32 2)
  %106 = fsub float %103, %105
  %107 = load float, float* %7, align 4
  %108 = fdiv float %106, %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  store float %108, float* %110, align 4
  br label %204

111:                                              ; preds = %62, %56
  %112 = load i32, i32* %4, align 4
  %113 = call float @guMtxRowCol(i32 %112, i32 1, i32 1)
  %114 = load i32, i32* %4, align 4
  %115 = call float @guMtxRowCol(i32 %114, i32 2, i32 2)
  %116 = fcmp ogt float %113, %115
  br i1 %116, label %117, label %160

117:                                              ; preds = %111
  %118 = load i32, i32* %4, align 4
  %119 = call float @guMtxRowCol(i32 %118, i32 0, i32 0)
  %120 = fadd float 1.000000e+00, %119
  %121 = load i32, i32* %4, align 4
  %122 = call float @guMtxRowCol(i32 %121, i32 1, i32 1)
  %123 = fadd float %120, %122
  %124 = load i32, i32* %4, align 4
  %125 = call float @guMtxRowCol(i32 %124, i32 2, i32 2)
  %126 = fadd float %123, %125
  %127 = call float @sqrtf(float %126) #3
  %128 = fmul float %127, 2.000000e+00
  store float %128, float* %8, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call float @guMtxRowCol(i32 %129, i32 0, i32 1)
  %131 = load i32, i32* %4, align 4
  %132 = call float @guMtxRowCol(i32 %131, i32 1, i32 0)
  %133 = fadd float %130, %132
  %134 = load float, float* %8, align 4
  %135 = fdiv float %133, %134
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store float %135, float* %137, align 4
  %138 = load float, float* %8, align 4
  %139 = fmul float 2.500000e-01, %138
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store float %139, float* %141, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call float @guMtxRowCol(i32 %142, i32 1, i32 2)
  %144 = load i32, i32* %4, align 4
  %145 = call float @guMtxRowCol(i32 %144, i32 2, i32 1)
  %146 = fadd float %143, %145
  %147 = load float, float* %8, align 4
  %148 = fdiv float %146, %147
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  store float %148, float* %150, align 4
  %151 = load i32, i32* %4, align 4
  %152 = call float @guMtxRowCol(i32 %151, i32 0, i32 2)
  %153 = load i32, i32* %4, align 4
  %154 = call float @guMtxRowCol(i32 %153, i32 2, i32 0)
  %155 = fsub float %152, %154
  %156 = load float, float* %8, align 4
  %157 = fdiv float %155, %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  store float %157, float* %159, align 4
  br label %203

160:                                              ; preds = %111
  %161 = load i32, i32* %4, align 4
  %162 = call float @guMtxRowCol(i32 %161, i32 0, i32 0)
  %163 = fadd float 1.000000e+00, %162
  %164 = load i32, i32* %4, align 4
  %165 = call float @guMtxRowCol(i32 %164, i32 1, i32 1)
  %166 = fadd float %163, %165
  %167 = load i32, i32* %4, align 4
  %168 = call float @guMtxRowCol(i32 %167, i32 2, i32 2)
  %169 = fadd float %166, %168
  %170 = call float @sqrtf(float %169) #3
  %171 = fmul float %170, 2.000000e+00
  store float %171, float* %9, align 4
  %172 = load i32, i32* %4, align 4
  %173 = call float @guMtxRowCol(i32 %172, i32 0, i32 2)
  %174 = load i32, i32* %4, align 4
  %175 = call float @guMtxRowCol(i32 %174, i32 2, i32 0)
  %176 = fadd float %173, %175
  %177 = load float, float* %9, align 4
  %178 = fdiv float %176, %177
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  store float %178, float* %180, align 4
  %181 = load i32, i32* %4, align 4
  %182 = call float @guMtxRowCol(i32 %181, i32 1, i32 2)
  %183 = load i32, i32* %4, align 4
  %184 = call float @guMtxRowCol(i32 %183, i32 2, i32 1)
  %185 = fadd float %182, %184
  %186 = load float, float* %9, align 4
  %187 = fdiv float %185, %186
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  store float %187, float* %189, align 4
  %190 = load float, float* %9, align 4
  %191 = fmul float 2.500000e-01, %190
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  store float %191, float* %193, align 4
  %194 = load i32, i32* %4, align 4
  %195 = call float @guMtxRowCol(i32 %194, i32 1, i32 0)
  %196 = load i32, i32* %4, align 4
  %197 = call float @guMtxRowCol(i32 %196, i32 0, i32 1)
  %198 = fsub float %195, %197
  %199 = load float, float* %9, align 4
  %200 = fdiv float %198, %199
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  store float %200, float* %202, align 4
  br label %203

203:                                              ; preds = %160, %117
  br label %204

204:                                              ; preds = %203, %68
  br label %205

205:                                              ; preds = %204, %21
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %208 = call i32 @c_guQuatNormalize(%struct.TYPE_5__* %206, %struct.TYPE_5__* %207)
  ret void
}

declare dso_local float @guMtxRowCol(i32, i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local i32 @c_guQuatNormalize(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
