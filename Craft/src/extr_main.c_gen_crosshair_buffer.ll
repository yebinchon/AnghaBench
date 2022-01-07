; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_gen_crosshair_buffer.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_gen_crosshair_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@g = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_crosshair_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x float], align 16
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 2
  store i32 %8, i32* %1, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 2
  store i32 %12, i32* %2, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 10, %15
  store i32 %16, i32* %3, align 4
  %17 = getelementptr inbounds [8 x float], [8 x float]* %4, i64 0, i64 0
  %18 = load i32, i32* %1, align 4
  %19 = sitofp i32 %18 to float
  store float %19, float* %17, align 4
  %20 = getelementptr inbounds float, float* %17, i64 1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sitofp i32 %23 to float
  store float %24, float* %20, align 4
  %25 = getelementptr inbounds float, float* %20, i64 1
  %26 = load i32, i32* %1, align 4
  %27 = sitofp i32 %26 to float
  store float %27, float* %25, align 4
  %28 = getelementptr inbounds float, float* %25, i64 1
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %29, %30
  %32 = sitofp i32 %31 to float
  store float %32, float* %28, align 4
  %33 = getelementptr inbounds float, float* %28, i64 1
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sitofp i32 %36 to float
  store float %37, float* %33, align 4
  %38 = getelementptr inbounds float, float* %33, i64 1
  %39 = load i32, i32* %2, align 4
  %40 = sitofp i32 %39 to float
  store float %40, float* %38, align 4
  %41 = getelementptr inbounds float, float* %38, i64 1
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %42, %43
  %45 = sitofp i32 %44 to float
  store float %45, float* %41, align 4
  %46 = getelementptr inbounds float, float* %41, i64 1
  %47 = load i32, i32* %2, align 4
  %48 = sitofp i32 %47 to float
  store float %48, float* %46, align 4
  %49 = getelementptr inbounds [8 x float], [8 x float]* %4, i64 0, i64 0
  %50 = call i32 @gen_buffer(i32 32, float* %49)
  ret i32 %50
}

declare dso_local i32 @gen_buffer(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
