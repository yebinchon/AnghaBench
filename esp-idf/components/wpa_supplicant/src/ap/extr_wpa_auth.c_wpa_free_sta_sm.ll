; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_free_sta_sm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_free_sta_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { %struct.wpa_state_machine*, %struct.wpa_state_machine*, %struct.wpa_state_machine*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"wpa_free_sta_sm: free eapol=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_state_machine*)* @wpa_free_sta_sm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_free_sta_sm(%struct.wpa_state_machine* %0) #0 {
  %2 = alloca %struct.wpa_state_machine*, align 8
  store %struct.wpa_state_machine* %0, %struct.wpa_state_machine** %2, align 8
  %3 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %4 = call i32 @wpa_auth_del_sm(%struct.wpa_state_machine* %3)
  %5 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* @FALSE, align 8
  %17 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %9, %1
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %22 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %21, i32 0, i32 1
  %23 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %22, align 8
  %24 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.wpa_state_machine* %23)
  %25 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %26 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %25, i32 0, i32 1
  %27 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %26, align 8
  %28 = call i32 @os_free(%struct.wpa_state_machine* %27)
  %29 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %30 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %29, i32 0, i32 0
  %31 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %30, align 8
  %32 = call i32 @os_free(%struct.wpa_state_machine* %31)
  %33 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %34 = call i32 @os_free(%struct.wpa_state_machine* %33)
  ret void
}

declare dso_local i32 @wpa_auth_del_sm(%struct.wpa_state_machine*) #1

declare dso_local i32 @wpa_printf(i32, i8*, %struct.wpa_state_machine*) #1

declare dso_local i32 @os_free(%struct.wpa_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
