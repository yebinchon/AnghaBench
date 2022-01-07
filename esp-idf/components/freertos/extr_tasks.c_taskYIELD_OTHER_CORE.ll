; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_taskYIELD_OTHER_CORE.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_taskYIELD_OTHER_CORE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@pxCurrentTCB = common dso_local global %struct.TYPE_3__** null, align 8
@tskNO_AFFINITY = common dso_local global i64 0, align 8
@portNUM_PROCESSORS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taskYIELD_OTHER_CORE(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pxCurrentTCB, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %7, i64 %8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @tskNO_AFFINITY, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @vPortYieldOtherCore(i64 %21)
  br label %23

23:                                               ; preds = %20, %14
  br label %50

24:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @portNUM_PROCESSORS, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = call i64 (...) @xPortGetCoreID()
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pxCurrentTCB, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @vPortYieldOtherCore(i64 %43)
  br label %49

45:                                               ; preds = %33, %29
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %25

49:                                               ; preds = %42, %25
  br label %50

50:                                               ; preds = %49, %23
  ret void
}

declare dso_local i32 @vPortYieldOtherCore(i64) #1

declare dso_local i64 @xPortGetCoreID(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
