; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_croutine.c_xCoRoutineCreate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_croutine.c_xCoRoutineCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i32 }

@pxCurrentCoRoutine = common dso_local global %struct.TYPE_5__* null, align 8
@configMAX_CO_ROUTINE_PRIORITIES = common dso_local global i64 0, align 8
@corINITIAL_STATE = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i32 0, align 4
@errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xCoRoutineCreate(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @UNTESTED_FUNCTION()
  %10 = call i64 @pvPortMalloc(i32 40)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %63

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pxCurrentCoRoutine, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** @pxCurrentCoRoutine, align 8
  %19 = call i32 (...) @prvInitialiseCoRoutineLists()
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @configMAX_CO_ROUTINE_PRIORITIES, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* @configMAX_CO_ROUTINE_PRIORITIES, align 8
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @corINITIAL_STATE, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call i32 @vListInitialiseItem(i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @vListInitialiseItem(i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = call i32 @listSET_LIST_ITEM_OWNER(i32* %47, %struct.TYPE_5__* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = call i32 @listSET_LIST_ITEM_OWNER(i32* %51, %struct.TYPE_5__* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* @configMAX_CO_ROUTINE_PRIORITIES, align 8
  %57 = load i64, i64* %5, align 8
  %58 = sub nsw i64 %56, %57
  %59 = call i32 @listSET_LIST_ITEM_VALUE(i32* %55, i64 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = call i32 @prvAddCoRoutineToReadyQueue(%struct.TYPE_5__* %60)
  %62 = load i32, i32* @pdPASS, align 4
  store i32 %62, i32* %7, align 4
  br label %65

63:                                               ; preds = %3
  %64 = load i32, i32* @errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %27
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @UNTESTED_FUNCTION(...) #1

declare dso_local i64 @pvPortMalloc(i32) #1

declare dso_local i32 @prvInitialiseCoRoutineLists(...) #1

declare dso_local i32 @vListInitialiseItem(i32*) #1

declare dso_local i32 @listSET_LIST_ITEM_OWNER(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @listSET_LIST_ITEM_VALUE(i32*, i64) #1

declare dso_local i32 @prvAddCoRoutineToReadyQueue(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
