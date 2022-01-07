; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_prvInitialiseNewTask.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_prvInitialiseNewTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i64, i8*, i8*, i32, i32, i64, i32**, i32**, i32*, i32, i32*, i32, i32, i64, i8*, i32* }

@portBYTE_ALIGNMENT_MASK = common dso_local global i64 0, align 8
@configMAX_TASK_NAME_LEN = common dso_local global i32 0, align 4
@configMAX_PRIORITIES = common dso_local global i64 0, align 8
@configNUM_THREAD_LOCAL_STORAGE_POINTERS = common dso_local global i64 0, align 8
@eNotWaitingNotification = common dso_local global i32 0, align 4
@pdFALSE = common dso_local global i8* null, align 8
@pdTRUE = common dso_local global i8* null, align 8
@portPRIVILEGE_BIT = common dso_local global i32 0, align 4
@tskSTACK_FILL_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8*, i32, i64*, %struct.TYPE_4__*, i32*, i8*)* @prvInitialiseNewTask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvInitialiseNewTask(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i64* %5, %struct.TYPE_4__* %6, i32* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* %8, i8** %18, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 12
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %19, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 12
  %26 = load i32*, i32** %25, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = load i64, i64* @portBYTE_ALIGNMENT_MASK, align 8
  %29 = and i64 %27, %28
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @configASSERT(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 12
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 19
  store i32* %39, i32** %41, align 8
  store i32 0, i32* %20, align 4
  br label %42

42:                                               ; preds = %69, %9
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* @configMAX_TASK_NAME_LEN, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %20, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %20, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %51, i8* %57, align 1
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %20, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %46
  br label %72

66:                                               ; preds = %46
  %67 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %68

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %20, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %20, align 4
  br label %42

72:                                               ; preds = %65, %42
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @configMAX_TASK_NAME_LEN, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i32, i32* %14, align 4
  %81 = load i64, i64* @configMAX_PRIORITIES, align 8
  %82 = trunc i64 %81 to i32
  %83 = icmp uge i32 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load i64, i64* @configMAX_PRIORITIES, align 8
  %86 = trunc i64 %85 to i32
  %87 = sub i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %90

88:                                               ; preds = %72
  %89 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i8*, i8** %18, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 18
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 16
  %99 = call i32 @vListInitialiseItem(i32* %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 15
  %102 = call i32 @vListInitialiseItem(i32* %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 16
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %106 = call i32 @listSET_LIST_ITEM_OWNER(i32* %104, %struct.TYPE_4__* %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 15
  %109 = load i64, i64* @configMAX_PRIORITIES, align 8
  %110 = load i32, i32* %14, align 4
  %111 = zext i32 %110 to i64
  %112 = sub nsw i64 %109, %111
  %113 = call i32 @listSET_LIST_ITEM_VALUE(i32* %108, i64 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 15
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %117 = call i32 @listSET_LIST_ITEM_OWNER(i32* %115, %struct.TYPE_4__* %116)
  %118 = load i32*, i32** %17, align 8
  %119 = load i32*, i32** %19, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i8*, i8** %13, align 8
  %122 = call i8* (i32*, i32, i8*, ...) @pxPortInitialiseStack(i32* %119, i32 %120, i8* %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  store i8* %122, i8** %124, align 8
  %125 = load i64*, i64** %15, align 8
  %126 = bitcast i64* %125 to i8*
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %90
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %130 = ptrtoint %struct.TYPE_4__* %129 to i64
  %131 = load i64*, i64** %15, align 8
  store i64 %130, i64* %131, align 8
  br label %134

132:                                              ; preds = %90
  %133 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %134

134:                                              ; preds = %132, %128
  ret void
}

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @vListInitialiseItem(i32*) #1

declare dso_local i32 @listSET_LIST_ITEM_OWNER(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @listSET_LIST_ITEM_VALUE(i32*, i64) #1

declare dso_local i8* @pxPortInitialiseStack(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
