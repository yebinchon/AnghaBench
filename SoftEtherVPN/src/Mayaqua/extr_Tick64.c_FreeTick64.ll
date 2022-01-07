; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tick64.c_FreeTick64.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tick64.c_FreeTick64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@tk64 = common dso_local global %struct.TYPE_5__* null, align 8
@halt_tick_event = common dso_local global i32* null, align 8
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeTick64() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tk64, align 8
  %4 = icmp eq %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %51

6:                                                ; preds = %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tk64, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32*, i32** @halt_tick_event, align 8
  %10 = call i32 @Set(i32* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tk64, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @INFINITE, align 4
  %15 = call i32 @WaitThread(i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tk64, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ReleaseThread(i32 %18)
  store i64 0, i64* %1, align 8
  br label %20

20:                                               ; preds = %35, %6
  %21 = load i64, i64* %1, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tk64, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @LIST_NUM(i32 %24)
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tk64, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %1, align 8
  %32 = call %struct.TYPE_5__* @LIST_DATA(i32 %30, i64 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %2, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = call i32 @Free(%struct.TYPE_5__* %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %1, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %1, align 8
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tk64, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ReleaseList(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tk64, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DeleteLock(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tk64, align 8
  %48 = call i32 @Free(%struct.TYPE_5__* %47)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @tk64, align 8
  %49 = load i32*, i32** @halt_tick_event, align 8
  %50 = call i32 @ReleaseEvent(i32* %49)
  store i32* null, i32** @halt_tick_event, align 8
  br label %51

51:                                               ; preds = %38, %5
  ret void
}

declare dso_local i32 @Set(i32*) #1

declare dso_local i32 @WaitThread(i32, i32) #1

declare dso_local i32 @ReleaseThread(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_5__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Free(%struct.TYPE_5__*) #1

declare dso_local i32 @ReleaseList(i32) #1

declare dso_local i32 @DeleteLock(i32) #1

declare dso_local i32 @ReleaseEvent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
