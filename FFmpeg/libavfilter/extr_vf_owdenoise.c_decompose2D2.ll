; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_decompose2D2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_decompose2D2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float*, float**, i32, i32, i32, i32)* @decompose2D2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompose2D2(float** %0, float* %1, float** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca float**, align 8
  %9 = alloca float*, align 8
  %10 = alloca float**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store float** %0, float*** %8, align 8
  store float* %1, float** %9, align 8
  store float** %2, float*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load float**, float*** %10, align 8
  %16 = getelementptr inbounds float*, float** %15, i64 0
  %17 = load float*, float** %16, align 8
  %18 = load float**, float*** %10, align 8
  %19 = getelementptr inbounds float*, float** %18, i64 1
  %20 = load float*, float** %19, align 8
  %21 = load float*, float** %9, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @decompose2D(float* %17, float* %20, float* %21, i32 1, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load float**, float*** %8, align 8
  %28 = getelementptr inbounds float*, float** %27, i64 0
  %29 = load float*, float** %28, align 8
  %30 = load float**, float*** %8, align 8
  %31 = getelementptr inbounds float*, float** %30, i64 1
  %32 = load float*, float** %31, align 8
  %33 = load float**, float*** %10, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 0
  %35 = load float*, float** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @decompose2D(float* %29, float* %32, float* %35, i32 %36, i32 1, i32 %37, i32 %38, i32 %39)
  %41 = load float**, float*** %8, align 8
  %42 = getelementptr inbounds float*, float** %41, i64 2
  %43 = load float*, float** %42, align 8
  %44 = load float**, float*** %8, align 8
  %45 = getelementptr inbounds float*, float** %44, i64 3
  %46 = load float*, float** %45, align 8
  %47 = load float**, float*** %10, align 8
  %48 = getelementptr inbounds float*, float** %47, i64 1
  %49 = load float*, float** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @decompose2D(float* %43, float* %46, float* %49, i32 %50, i32 1, i32 %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @decompose2D(float*, float*, float*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
