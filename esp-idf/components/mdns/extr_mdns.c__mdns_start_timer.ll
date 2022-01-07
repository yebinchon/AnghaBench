; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_start_timer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"mdns_timer\00", align 1
@ESP_TIMER_TASK = common dso_local global i32 0, align 4
@_mdns_timer_cb = common dso_local global i32 0, align 4
@_mdns_server = common dso_local global %struct.TYPE_5__* null, align 8
@MDNS_TIMER_PERIOD_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @_mdns_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mdns_start_timer() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %6 = load i32, i32* @ESP_TIMER_TASK, align 4
  store i32 %6, i32* %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %9 = load i32, i32* @_mdns_timer_cb, align 4
  store i32 %9, i32* %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i64 @esp_timer_create(%struct.TYPE_4__* %2, i32* %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %1, align 8
  br label %23

17:                                               ; preds = %0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MDNS_TIMER_PERIOD_US, align 4
  %22 = call i64 @esp_timer_start_periodic(i32 %20, i32 %21)
  store i64 %22, i64* %1, align 8
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i64, i64* %1, align 8
  ret i64 %24
}

declare dso_local i64 @esp_timer_create(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @esp_timer_start_periodic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
