; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_croutine.c_xCoRoutineRemoveFromEventList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_croutine.c_xCoRoutineRemoveFromEventList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@xPendingReadyCoRoutineList = common dso_local global i32 0, align 4
@pxCurrentCoRoutine = common dso_local global %struct.TYPE_4__* null, align 8
@pdTRUE = common dso_local global i32 0, align 4
@pdFALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xCoRoutineRemoveFromEventList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @listGET_OWNER_OF_HEAD_ENTRY(i32* %5)
  %7 = inttoptr i64 %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = call i32 @uxListRemove(i32* %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @vListInsertEnd(i32* @xPendingReadyCoRoutineList, i32* %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pxCurrentCoRoutine, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @pdTRUE, align 4
  store i32 %22, i32* %4, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @pdFALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i64 @listGET_OWNER_OF_HEAD_ENTRY(i32*) #1

declare dso_local i32 @uxListRemove(i32*) #1

declare dso_local i32 @vListInsertEnd(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
