; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_notify_new_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_notify_new_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 (i32, i32*)* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"btm_notify_new_key key_type=%d\00", align 1
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"BTM_BLE_KEY_TYPE_ID\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"BTM_BLE_KEY_TYPE_ER\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown key type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @btm_notify_new_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btm_notify_new_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %7 = icmp ne i32 (i32, i32*)* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %14 [
    i32 128, label %10
    i32 129, label %12
  ]

10:                                               ; preds = %8
  %11 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1, i32 1), i32** %3, align 8
  br label %17

12:                                               ; preds = %8
  %13 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1, i32 0), i32** %3, align 8
  br label %17

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %12, %10
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 %21(i32 %22, i32* %23)
  br label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
