; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_cube.c_make_character.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_cube.c_make_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_character(float* %0, float %1, float %2, float %3, float %4, i8 signext %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i8, align 1
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store float* %0, float** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store i8 %5, i8* %12, align 1
  %20 = load float*, float** %7, align 8
  store float* %20, float** %13, align 8
  store float 6.250000e-02, float* %14, align 4
  %21 = load float, float* %14, align 4
  store float %21, float* %15, align 4
  %22 = load float, float* %14, align 4
  %23 = fmul float %22, 2.000000e+00
  store float %23, float* %16, align 4
  %24 = load i8, i8* %12, align 1
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 %25, 32
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = srem i32 %27, 16
  %29 = sitofp i32 %28 to float
  %30 = load float, float* %15, align 4
  %31 = fmul float %29, %30
  store float %31, float* %18, align 4
  %32 = load i32, i32* %17, align 4
  %33 = sdiv i32 %32, 16
  %34 = sitofp i32 %33 to float
  %35 = load float, float* %16, align 4
  %36 = fmul float %34, %35
  %37 = fsub float 1.000000e+00, %36
  %38 = load float, float* %16, align 4
  %39 = fsub float %37, %38
  store float %39, float* %19, align 4
  %40 = load float, float* %8, align 4
  %41 = load float, float* %10, align 4
  %42 = fsub float %40, %41
  %43 = load float*, float** %13, align 8
  %44 = getelementptr inbounds float, float* %43, i32 1
  store float* %44, float** %13, align 8
  store float %42, float* %43, align 4
  %45 = load float, float* %9, align 4
  %46 = load float, float* %11, align 4
  %47 = fsub float %45, %46
  %48 = load float*, float** %13, align 8
  %49 = getelementptr inbounds float, float* %48, i32 1
  store float* %49, float** %13, align 8
  store float %47, float* %48, align 4
  %50 = load float, float* %18, align 4
  %51 = fadd float %50, 0.000000e+00
  %52 = load float*, float** %13, align 8
  %53 = getelementptr inbounds float, float* %52, i32 1
  store float* %53, float** %13, align 8
  store float %51, float* %52, align 4
  %54 = load float, float* %19, align 4
  %55 = load float*, float** %13, align 8
  %56 = getelementptr inbounds float, float* %55, i32 1
  store float* %56, float** %13, align 8
  store float %54, float* %55, align 4
  %57 = load float, float* %8, align 4
  %58 = load float, float* %10, align 4
  %59 = fadd float %57, %58
  %60 = load float*, float** %13, align 8
  %61 = getelementptr inbounds float, float* %60, i32 1
  store float* %61, float** %13, align 8
  store float %59, float* %60, align 4
  %62 = load float, float* %9, align 4
  %63 = load float, float* %11, align 4
  %64 = fsub float %62, %63
  %65 = load float*, float** %13, align 8
  %66 = getelementptr inbounds float, float* %65, i32 1
  store float* %66, float** %13, align 8
  store float %64, float* %65, align 4
  %67 = load float, float* %18, align 4
  %68 = load float, float* %15, align 4
  %69 = fadd float %67, %68
  %70 = load float*, float** %13, align 8
  %71 = getelementptr inbounds float, float* %70, i32 1
  store float* %71, float** %13, align 8
  store float %69, float* %70, align 4
  %72 = load float, float* %19, align 4
  %73 = load float*, float** %13, align 8
  %74 = getelementptr inbounds float, float* %73, i32 1
  store float* %74, float** %13, align 8
  store float %72, float* %73, align 4
  %75 = load float, float* %8, align 4
  %76 = load float, float* %10, align 4
  %77 = fadd float %75, %76
  %78 = load float*, float** %13, align 8
  %79 = getelementptr inbounds float, float* %78, i32 1
  store float* %79, float** %13, align 8
  store float %77, float* %78, align 4
  %80 = load float, float* %9, align 4
  %81 = load float, float* %11, align 4
  %82 = fadd float %80, %81
  %83 = load float*, float** %13, align 8
  %84 = getelementptr inbounds float, float* %83, i32 1
  store float* %84, float** %13, align 8
  store float %82, float* %83, align 4
  %85 = load float, float* %18, align 4
  %86 = load float, float* %15, align 4
  %87 = fadd float %85, %86
  %88 = load float*, float** %13, align 8
  %89 = getelementptr inbounds float, float* %88, i32 1
  store float* %89, float** %13, align 8
  store float %87, float* %88, align 4
  %90 = load float, float* %19, align 4
  %91 = load float, float* %16, align 4
  %92 = fadd float %90, %91
  %93 = load float*, float** %13, align 8
  %94 = getelementptr inbounds float, float* %93, i32 1
  store float* %94, float** %13, align 8
  store float %92, float* %93, align 4
  %95 = load float, float* %8, align 4
  %96 = load float, float* %10, align 4
  %97 = fsub float %95, %96
  %98 = load float*, float** %13, align 8
  %99 = getelementptr inbounds float, float* %98, i32 1
  store float* %99, float** %13, align 8
  store float %97, float* %98, align 4
  %100 = load float, float* %9, align 4
  %101 = load float, float* %11, align 4
  %102 = fsub float %100, %101
  %103 = load float*, float** %13, align 8
  %104 = getelementptr inbounds float, float* %103, i32 1
  store float* %104, float** %13, align 8
  store float %102, float* %103, align 4
  %105 = load float, float* %18, align 4
  %106 = fadd float %105, 0.000000e+00
  %107 = load float*, float** %13, align 8
  %108 = getelementptr inbounds float, float* %107, i32 1
  store float* %108, float** %13, align 8
  store float %106, float* %107, align 4
  %109 = load float, float* %19, align 4
  %110 = load float*, float** %13, align 8
  %111 = getelementptr inbounds float, float* %110, i32 1
  store float* %111, float** %13, align 8
  store float %109, float* %110, align 4
  %112 = load float, float* %8, align 4
  %113 = load float, float* %10, align 4
  %114 = fadd float %112, %113
  %115 = load float*, float** %13, align 8
  %116 = getelementptr inbounds float, float* %115, i32 1
  store float* %116, float** %13, align 8
  store float %114, float* %115, align 4
  %117 = load float, float* %9, align 4
  %118 = load float, float* %11, align 4
  %119 = fadd float %117, %118
  %120 = load float*, float** %13, align 8
  %121 = getelementptr inbounds float, float* %120, i32 1
  store float* %121, float** %13, align 8
  store float %119, float* %120, align 4
  %122 = load float, float* %18, align 4
  %123 = load float, float* %15, align 4
  %124 = fadd float %122, %123
  %125 = load float*, float** %13, align 8
  %126 = getelementptr inbounds float, float* %125, i32 1
  store float* %126, float** %13, align 8
  store float %124, float* %125, align 4
  %127 = load float, float* %19, align 4
  %128 = load float, float* %16, align 4
  %129 = fadd float %127, %128
  %130 = load float*, float** %13, align 8
  %131 = getelementptr inbounds float, float* %130, i32 1
  store float* %131, float** %13, align 8
  store float %129, float* %130, align 4
  %132 = load float, float* %8, align 4
  %133 = load float, float* %10, align 4
  %134 = fsub float %132, %133
  %135 = load float*, float** %13, align 8
  %136 = getelementptr inbounds float, float* %135, i32 1
  store float* %136, float** %13, align 8
  store float %134, float* %135, align 4
  %137 = load float, float* %9, align 4
  %138 = load float, float* %11, align 4
  %139 = fadd float %137, %138
  %140 = load float*, float** %13, align 8
  %141 = getelementptr inbounds float, float* %140, i32 1
  store float* %141, float** %13, align 8
  store float %139, float* %140, align 4
  %142 = load float, float* %18, align 4
  %143 = fadd float %142, 0.000000e+00
  %144 = load float*, float** %13, align 8
  %145 = getelementptr inbounds float, float* %144, i32 1
  store float* %145, float** %13, align 8
  store float %143, float* %144, align 4
  %146 = load float, float* %19, align 4
  %147 = load float, float* %16, align 4
  %148 = fadd float %146, %147
  %149 = load float*, float** %13, align 8
  %150 = getelementptr inbounds float, float* %149, i32 1
  store float* %150, float** %13, align 8
  store float %148, float* %149, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
