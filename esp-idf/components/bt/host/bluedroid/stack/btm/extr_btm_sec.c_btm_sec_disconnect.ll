; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_disconnect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@BTM_SUCCESS = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_PAIR_STATE_IDLE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_WE_STARTED_DD = common dso_local global i32 0, align 4
@BTM_PAIR_FLAGS_DISC_WHEN_DONE = common dso_local global i32 0, align 4
@BTM_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_sec_disconnect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_5__* @btm_find_dev_by_handle(i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @btsnd_hcic_disconnect(i32 %12, i32 %13)
  %15 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %18 = load i64, i64* @BTM_PAIR_STATE_IDLE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 2), align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BD_ADDR_LEN, align 4
  %26 = call i64 @memcmp(i32 %21, i32 %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %30 = load i32, i32* @BTM_PAIR_FLAGS_WE_STARTED_DD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @BTM_PAIR_FLAGS_DISC_WHEN_DONE, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %36 = or i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %37 = load i32, i32* @BTM_BUSY, align 4
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %28, %20, %16
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @btm_sec_send_hci_disconnect(%struct.TYPE_5__* %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %33, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_5__* @btm_find_dev_by_handle(i32) #1

declare dso_local i32 @btsnd_hcic_disconnect(i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @btm_sec_send_hci_disconnect(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
