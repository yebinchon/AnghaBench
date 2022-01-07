; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxTranspose.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxTranspose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_guMtxTranspose(float** %0, float** %1) #0 {
  %3 = alloca float**, align 8
  %4 = alloca float**, align 8
  %5 = alloca float**, align 8
  %6 = alloca float**, align 8
  store float** %0, float*** %3, align 8
  store float** %1, float*** %4, align 8
  %7 = load float**, float*** %3, align 8
  %8 = load float**, float*** %4, align 8
  %9 = icmp eq float** %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load float**, float*** %5, align 8
  store float** %11, float*** %6, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load float**, float*** %4, align 8
  store float** %13, float*** %6, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = load float**, float*** %3, align 8
  %16 = getelementptr inbounds float*, float** %15, i64 0
  %17 = load float*, float** %16, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  %19 = load float, float* %18, align 4
  %20 = load float**, float*** %6, align 8
  %21 = getelementptr inbounds float*, float** %20, i64 0
  %22 = load float*, float** %21, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  store float %19, float* %23, align 4
  %24 = load float**, float*** %3, align 8
  %25 = getelementptr inbounds float*, float** %24, i64 1
  %26 = load float*, float** %25, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = load float, float* %27, align 4
  %29 = load float**, float*** %6, align 8
  %30 = getelementptr inbounds float*, float** %29, i64 0
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  store float %28, float* %32, align 4
  %33 = load float**, float*** %3, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 2
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = load float**, float*** %6, align 8
  %39 = getelementptr inbounds float*, float** %38, i64 0
  %40 = load float*, float** %39, align 8
  %41 = getelementptr inbounds float, float* %40, i64 2
  store float %37, float* %41, align 4
  %42 = load float**, float*** %6, align 8
  %43 = getelementptr inbounds float*, float** %42, i64 0
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 3
  store float 0.000000e+00, float* %45, align 4
  %46 = load float**, float*** %3, align 8
  %47 = getelementptr inbounds float*, float** %46, i64 0
  %48 = load float*, float** %47, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  %51 = load float**, float*** %6, align 8
  %52 = getelementptr inbounds float*, float** %51, i64 1
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 0
  store float %50, float* %54, align 4
  %55 = load float**, float*** %3, align 8
  %56 = getelementptr inbounds float*, float** %55, i64 1
  %57 = load float*, float** %56, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = load float**, float*** %6, align 8
  %61 = getelementptr inbounds float*, float** %60, i64 1
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  store float %59, float* %63, align 4
  %64 = load float**, float*** %3, align 8
  %65 = getelementptr inbounds float*, float** %64, i64 2
  %66 = load float*, float** %65, align 8
  %67 = getelementptr inbounds float, float* %66, i64 1
  %68 = load float, float* %67, align 4
  %69 = load float**, float*** %6, align 8
  %70 = getelementptr inbounds float*, float** %69, i64 1
  %71 = load float*, float** %70, align 8
  %72 = getelementptr inbounds float, float* %71, i64 2
  store float %68, float* %72, align 4
  %73 = load float**, float*** %6, align 8
  %74 = getelementptr inbounds float*, float** %73, i64 1
  %75 = load float*, float** %74, align 8
  %76 = getelementptr inbounds float, float* %75, i64 3
  store float 0.000000e+00, float* %76, align 4
  %77 = load float**, float*** %3, align 8
  %78 = getelementptr inbounds float*, float** %77, i64 0
  %79 = load float*, float** %78, align 8
  %80 = getelementptr inbounds float, float* %79, i64 2
  %81 = load float, float* %80, align 4
  %82 = load float**, float*** %6, align 8
  %83 = getelementptr inbounds float*, float** %82, i64 2
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  store float %81, float* %85, align 4
  %86 = load float**, float*** %3, align 8
  %87 = getelementptr inbounds float*, float** %86, i64 1
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 2
  %90 = load float, float* %89, align 4
  %91 = load float**, float*** %6, align 8
  %92 = getelementptr inbounds float*, float** %91, i64 2
  %93 = load float*, float** %92, align 8
  %94 = getelementptr inbounds float, float* %93, i64 1
  store float %90, float* %94, align 4
  %95 = load float**, float*** %3, align 8
  %96 = getelementptr inbounds float*, float** %95, i64 2
  %97 = load float*, float** %96, align 8
  %98 = getelementptr inbounds float, float* %97, i64 2
  %99 = load float, float* %98, align 4
  %100 = load float**, float*** %6, align 8
  %101 = getelementptr inbounds float*, float** %100, i64 2
  %102 = load float*, float** %101, align 8
  %103 = getelementptr inbounds float, float* %102, i64 2
  store float %99, float* %103, align 4
  %104 = load float**, float*** %6, align 8
  %105 = getelementptr inbounds float*, float** %104, i64 2
  %106 = load float*, float** %105, align 8
  %107 = getelementptr inbounds float, float* %106, i64 3
  store float 0.000000e+00, float* %107, align 4
  %108 = load float**, float*** %6, align 8
  %109 = load float**, float*** %5, align 8
  %110 = icmp eq float** %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %14
  %112 = load float**, float*** %5, align 8
  %113 = load float**, float*** %4, align 8
  %114 = call i32 @c_guMtxCopy(float** %112, float** %113)
  br label %115

115:                                              ; preds = %111, %14
  ret void
}

declare dso_local i32 @c_guMtxCopy(float**, float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
