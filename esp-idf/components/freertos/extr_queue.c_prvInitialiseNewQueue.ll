; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_queue.c_prvInitialiseNewQueue.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_queue.c_prvInitialiseNewQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32*, i32, i32* }

@pdTRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i32, %struct.TYPE_5__*)* @prvInitialiseNewQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvInitialiseNewQueue(i64 %0, i64 %1, i32* %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = bitcast %struct.TYPE_5__* %15 to i32*
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  br label %23

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  store i32* %20, i32** %22, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = load i32, i32* @pdTRUE, align 4
  %32 = call i32 @xQueueGenericReset(%struct.TYPE_5__* %30, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = call i32 @traceQUEUE_CREATE(%struct.TYPE_5__* %33)
  ret void
}

declare dso_local i32 @xQueueGenericReset(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @traceQUEUE_CREATE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
