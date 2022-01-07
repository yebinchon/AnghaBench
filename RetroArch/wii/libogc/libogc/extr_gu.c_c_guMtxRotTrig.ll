; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxRotTrig.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxRotTrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_guMtxRotTrig(float** %0, i8 signext %1, float %2, float %3) #0 {
  %5 = alloca float**, align 8
  %6 = alloca i8, align 1
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float** %0, float*** %5, align 8
  store i8 %1, i8* %6, align 1
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %173 [
    i32 120, label %11
    i32 88, label %11
    i32 121, label %65
    i32 89, label %65
    i32 122, label %119
    i32 90, label %119
  ]

11:                                               ; preds = %4, %4
  %12 = load float**, float*** %5, align 8
  %13 = getelementptr inbounds float*, float** %12, i64 0
  %14 = load float*, float** %13, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  store float 1.000000e+00, float* %15, align 4
  %16 = load float**, float*** %5, align 8
  %17 = getelementptr inbounds float*, float** %16, i64 0
  %18 = load float*, float** %17, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  store float 0.000000e+00, float* %19, align 4
  %20 = load float**, float*** %5, align 8
  %21 = getelementptr inbounds float*, float** %20, i64 0
  %22 = load float*, float** %21, align 8
  %23 = getelementptr inbounds float, float* %22, i64 2
  store float 0.000000e+00, float* %23, align 4
  %24 = load float**, float*** %5, align 8
  %25 = getelementptr inbounds float*, float** %24, i64 0
  %26 = load float*, float** %25, align 8
  %27 = getelementptr inbounds float, float* %26, i64 3
  store float 0.000000e+00, float* %27, align 4
  %28 = load float**, float*** %5, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 1
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  store float 0.000000e+00, float* %31, align 4
  %32 = load float, float* %8, align 4
  %33 = load float**, float*** %5, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 1
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  store float %32, float* %36, align 4
  %37 = load float, float* %7, align 4
  %38 = fneg float %37
  %39 = load float**, float*** %5, align 8
  %40 = getelementptr inbounds float*, float** %39, i64 1
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 2
  store float %38, float* %42, align 4
  %43 = load float**, float*** %5, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 1
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 3
  store float 0.000000e+00, float* %46, align 4
  %47 = load float**, float*** %5, align 8
  %48 = getelementptr inbounds float*, float** %47, i64 2
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  store float 0.000000e+00, float* %50, align 4
  %51 = load float, float* %7, align 4
  %52 = load float**, float*** %5, align 8
  %53 = getelementptr inbounds float*, float** %52, i64 2
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  store float %51, float* %55, align 4
  %56 = load float, float* %8, align 4
  %57 = load float**, float*** %5, align 8
  %58 = getelementptr inbounds float*, float** %57, i64 2
  %59 = load float*, float** %58, align 8
  %60 = getelementptr inbounds float, float* %59, i64 2
  store float %56, float* %60, align 4
  %61 = load float**, float*** %5, align 8
  %62 = getelementptr inbounds float*, float** %61, i64 2
  %63 = load float*, float** %62, align 8
  %64 = getelementptr inbounds float, float* %63, i64 3
  store float 0.000000e+00, float* %64, align 4
  br label %174

65:                                               ; preds = %4, %4
  %66 = load float, float* %8, align 4
  %67 = load float**, float*** %5, align 8
  %68 = getelementptr inbounds float*, float** %67, i64 0
  %69 = load float*, float** %68, align 8
  %70 = getelementptr inbounds float, float* %69, i64 0
  store float %66, float* %70, align 4
  %71 = load float**, float*** %5, align 8
  %72 = getelementptr inbounds float*, float** %71, i64 0
  %73 = load float*, float** %72, align 8
  %74 = getelementptr inbounds float, float* %73, i64 1
  store float 0.000000e+00, float* %74, align 4
  %75 = load float, float* %7, align 4
  %76 = load float**, float*** %5, align 8
  %77 = getelementptr inbounds float*, float** %76, i64 0
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 2
  store float %75, float* %79, align 4
  %80 = load float**, float*** %5, align 8
  %81 = getelementptr inbounds float*, float** %80, i64 0
  %82 = load float*, float** %81, align 8
  %83 = getelementptr inbounds float, float* %82, i64 3
  store float 0.000000e+00, float* %83, align 4
  %84 = load float**, float*** %5, align 8
  %85 = getelementptr inbounds float*, float** %84, i64 1
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds float, float* %86, i64 0
  store float 0.000000e+00, float* %87, align 4
  %88 = load float**, float*** %5, align 8
  %89 = getelementptr inbounds float*, float** %88, i64 1
  %90 = load float*, float** %89, align 8
  %91 = getelementptr inbounds float, float* %90, i64 1
  store float 1.000000e+00, float* %91, align 4
  %92 = load float**, float*** %5, align 8
  %93 = getelementptr inbounds float*, float** %92, i64 1
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 2
  store float 0.000000e+00, float* %95, align 4
  %96 = load float**, float*** %5, align 8
  %97 = getelementptr inbounds float*, float** %96, i64 1
  %98 = load float*, float** %97, align 8
  %99 = getelementptr inbounds float, float* %98, i64 3
  store float 0.000000e+00, float* %99, align 4
  %100 = load float, float* %7, align 4
  %101 = fneg float %100
  %102 = load float**, float*** %5, align 8
  %103 = getelementptr inbounds float*, float** %102, i64 2
  %104 = load float*, float** %103, align 8
  %105 = getelementptr inbounds float, float* %104, i64 0
  store float %101, float* %105, align 4
  %106 = load float**, float*** %5, align 8
  %107 = getelementptr inbounds float*, float** %106, i64 2
  %108 = load float*, float** %107, align 8
  %109 = getelementptr inbounds float, float* %108, i64 1
  store float 0.000000e+00, float* %109, align 4
  %110 = load float, float* %8, align 4
  %111 = load float**, float*** %5, align 8
  %112 = getelementptr inbounds float*, float** %111, i64 2
  %113 = load float*, float** %112, align 8
  %114 = getelementptr inbounds float, float* %113, i64 2
  store float %110, float* %114, align 4
  %115 = load float**, float*** %5, align 8
  %116 = getelementptr inbounds float*, float** %115, i64 2
  %117 = load float*, float** %116, align 8
  %118 = getelementptr inbounds float, float* %117, i64 3
  store float 0.000000e+00, float* %118, align 4
  br label %174

119:                                              ; preds = %4, %4
  %120 = load float, float* %8, align 4
  %121 = load float**, float*** %5, align 8
  %122 = getelementptr inbounds float*, float** %121, i64 0
  %123 = load float*, float** %122, align 8
  %124 = getelementptr inbounds float, float* %123, i64 0
  store float %120, float* %124, align 4
  %125 = load float, float* %7, align 4
  %126 = fneg float %125
  %127 = load float**, float*** %5, align 8
  %128 = getelementptr inbounds float*, float** %127, i64 0
  %129 = load float*, float** %128, align 8
  %130 = getelementptr inbounds float, float* %129, i64 1
  store float %126, float* %130, align 4
  %131 = load float**, float*** %5, align 8
  %132 = getelementptr inbounds float*, float** %131, i64 0
  %133 = load float*, float** %132, align 8
  %134 = getelementptr inbounds float, float* %133, i64 2
  store float 0.000000e+00, float* %134, align 4
  %135 = load float**, float*** %5, align 8
  %136 = getelementptr inbounds float*, float** %135, i64 0
  %137 = load float*, float** %136, align 8
  %138 = getelementptr inbounds float, float* %137, i64 3
  store float 0.000000e+00, float* %138, align 4
  %139 = load float, float* %7, align 4
  %140 = load float**, float*** %5, align 8
  %141 = getelementptr inbounds float*, float** %140, i64 1
  %142 = load float*, float** %141, align 8
  %143 = getelementptr inbounds float, float* %142, i64 0
  store float %139, float* %143, align 4
  %144 = load float, float* %8, align 4
  %145 = load float**, float*** %5, align 8
  %146 = getelementptr inbounds float*, float** %145, i64 1
  %147 = load float*, float** %146, align 8
  %148 = getelementptr inbounds float, float* %147, i64 1
  store float %144, float* %148, align 4
  %149 = load float**, float*** %5, align 8
  %150 = getelementptr inbounds float*, float** %149, i64 1
  %151 = load float*, float** %150, align 8
  %152 = getelementptr inbounds float, float* %151, i64 2
  store float 0.000000e+00, float* %152, align 4
  %153 = load float**, float*** %5, align 8
  %154 = getelementptr inbounds float*, float** %153, i64 1
  %155 = load float*, float** %154, align 8
  %156 = getelementptr inbounds float, float* %155, i64 3
  store float 0.000000e+00, float* %156, align 4
  %157 = load float**, float*** %5, align 8
  %158 = getelementptr inbounds float*, float** %157, i64 2
  %159 = load float*, float** %158, align 8
  %160 = getelementptr inbounds float, float* %159, i64 0
  store float 0.000000e+00, float* %160, align 4
  %161 = load float**, float*** %5, align 8
  %162 = getelementptr inbounds float*, float** %161, i64 2
  %163 = load float*, float** %162, align 8
  %164 = getelementptr inbounds float, float* %163, i64 1
  store float 0.000000e+00, float* %164, align 4
  %165 = load float**, float*** %5, align 8
  %166 = getelementptr inbounds float*, float** %165, i64 2
  %167 = load float*, float** %166, align 8
  %168 = getelementptr inbounds float, float* %167, i64 2
  store float 1.000000e+00, float* %168, align 4
  %169 = load float**, float*** %5, align 8
  %170 = getelementptr inbounds float*, float** %169, i64 2
  %171 = load float*, float** %170, align 8
  %172 = getelementptr inbounds float, float* %171, i64 3
  store float 0.000000e+00, float* %172, align 4
  br label %174

173:                                              ; preds = %4
  br label %174

174:                                              ; preds = %173, %119, %65, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
