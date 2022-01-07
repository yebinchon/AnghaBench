; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_alloc_set_opts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_alloc_set_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, double* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @sws_alloc_set_opts(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, double* %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store double* %7, double** %17, align 8
  %19 = call %struct.TYPE_4__* (...) @sws_alloc_context()
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  br label %63

22:                                               ; preds = %8
  %23 = load i32, i32* %16, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load double*, double** %17, align 8
  %45 = icmp ne double* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %22
  %47 = load double*, double** %17, align 8
  %48 = getelementptr inbounds double, double* %47, i64 0
  %49 = load double, double* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 7
  %52 = load double*, double** %51, align 8
  %53 = getelementptr inbounds double, double* %52, i64 0
  store double %49, double* %53, align 8
  %54 = load double*, double** %17, align 8
  %55 = getelementptr inbounds double, double* %54, i64 1
  %56 = load double, double* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 7
  %59 = load double*, double** %58, align 8
  %60 = getelementptr inbounds double, double* %59, i64 1
  store double %56, double* %60, align 8
  br label %61

61:                                               ; preds = %46, %22
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %9, align 8
  br label %63

63:                                               ; preds = %61, %21
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  ret %struct.TYPE_4__* %64
}

declare dso_local %struct.TYPE_4__* @sws_alloc_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
