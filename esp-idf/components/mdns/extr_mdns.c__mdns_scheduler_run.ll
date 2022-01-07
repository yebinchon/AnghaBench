; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_scheduler_run.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_scheduler_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@_mdns_server = common dso_local global %struct.TYPE_12__* null, align 8
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@ACTION_TX_HANDLE = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_mdns_scheduler_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_scheduler_run() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = call i32 (...) @MDNS_SERVICE_LOCK()
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_mdns_server, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %7

7:                                                ; preds = %17, %0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %1, align 8
  br label %7

21:                                               ; preds = %15
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 (...) @MDNS_SERVICE_UNLOCK()
  br label %69

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (...) @xTaskGetTickCount()
  %31 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sub nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %26
  %37 = call i64 @malloc(i32 16)
  %38 = inttoptr i64 %37 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %2, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load i32, i32* @ACTION_TX_HANDLE, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_mdns_server, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @xQueueSend(i32 %54, %struct.TYPE_11__** %2, i32 0)
  %56 = load i64, i64* @pdPASS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %41
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = call i32 @free(%struct.TYPE_11__* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %41
  br label %66

64:                                               ; preds = %36
  %65 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  br label %66

66:                                               ; preds = %64, %63
  br label %67

67:                                               ; preds = %66, %26
  %68 = call i32 (...) @MDNS_SERVICE_UNLOCK()
  br label %69

69:                                               ; preds = %67, %24
  ret void
}

declare dso_local i32 @MDNS_SERVICE_LOCK(...) #1

declare dso_local i32 @MDNS_SERVICE_UNLOCK(...) #1

declare dso_local i32 @xTaskGetTickCount(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @xQueueSend(i32, %struct.TYPE_11__**, i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
