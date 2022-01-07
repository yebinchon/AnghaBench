; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_run.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, %struct.TYPE_4__* }

@_mdns_server = common dso_local global %struct.TYPE_5__* null, align 8
@portTICK_PERIOD_MS = common dso_local global i64 0, align 8
@SEARCH_OFF = common dso_local global i64 0, align 8
@ACTION_SEARCH_END = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@SEARCH_RUNNING = common dso_local global i8* null, align 8
@SEARCH_INIT = common dso_local global i64 0, align 8
@ACTION_SEARCH_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_mdns_search_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_search_run() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 (...) @MDNS_SERVICE_LOCK()
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %1, align 8
  %7 = call i64 (...) @xTaskGetTickCount()
  %8 = load i64, i64* @portTICK_PERIOD_MS, align 8
  %9 = mul nsw i64 %7, %8
  store i64 %9, i64* %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 (...) @MDNS_SERVICE_UNLOCK()
  br label %89

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %83, %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %87

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SEARCH_OFF, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %18
  %25 = load i64, i64* %2, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = icmp sgt i64 %25, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %24
  %35 = load i64, i64* @SEARCH_OFF, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @ACTION_SEARCH_END, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %40 = call i64 @_mdns_send_search_action(i32 %38, %struct.TYPE_4__* %39)
  %41 = load i64, i64* @ESP_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i8*, i8** @SEARCH_RUNNING, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %34
  br label %82

49:                                               ; preds = %24
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SEARCH_INIT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %2, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = icmp sgt i64 %60, 1000
  br i1 %61, label %62, label %81

62:                                               ; preds = %55, %49
  %63 = load i8*, i8** @SEARCH_RUNNING, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %2, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @ACTION_SEARCH_SEND, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %72 = call i64 @_mdns_send_search_action(i32 %70, %struct.TYPE_4__* %71)
  %73 = load i64, i64* @ESP_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 1000
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %75, %62
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %48
  br label %83

83:                                               ; preds = %82, %18
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %1, align 8
  br label %15

87:                                               ; preds = %15
  %88 = call i32 (...) @MDNS_SERVICE_UNLOCK()
  br label %89

89:                                               ; preds = %87, %12
  ret void
}

declare dso_local i32 @MDNS_SERVICE_LOCK(...) #1

declare dso_local i64 @xTaskGetTickCount(...) #1

declare dso_local i32 @MDNS_SERVICE_UNLOCK(...) #1

declare dso_local i64 @_mdns_send_search_action(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
