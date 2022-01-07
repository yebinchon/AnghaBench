; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_heap.c_siftup.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_heap.c_siftup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @siftup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siftup(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %8

8:                                                ; preds = %48, %2
  %9 = load i64, i64* %4, align 8
  %10 = mul i64 %9, 2
  %11 = add i64 %10, 1
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 2
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @less(%struct.TYPE_5__* %22, i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %27, %21, %8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @less(%struct.TYPE_5__* %36, i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %41, %35, %29
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  ret void

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @swap(%struct.TYPE_5__* %49, i64 %50, i64 %51)
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %4, align 8
  br label %8
}

declare dso_local i64 @less(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i32 @swap(%struct.TYPE_5__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
