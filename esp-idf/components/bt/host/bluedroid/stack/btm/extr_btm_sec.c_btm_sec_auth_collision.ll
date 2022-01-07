; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_auth_collision.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_auth_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BTM_SEC_INVALID_HANDLE = common dso_local global i64 0, align 8
@BTM_SEC_STATE_AUTHENTICATING = common dso_local global i64 0, align 8
@BTM_SEC_STATE_ENCRYPTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"btm_sec_auth_collision: state %d (retrying in a moment...)\0A\00", align 1
@btm_sec_collision_timeout = common dso_local global i64 0, align 8
@BTU_TTYPE_USER_FUNC = common dso_local global i32 0, align 4
@BT_1SEC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @btm_sec_auth_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btm_sec_auth_collision(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i64 (...) @osi_time_get_os_boottime_ms()
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 8
  br label %8

8:                                                ; preds = %6, %1
  %9 = call i64 (...) @osi_time_get_os_boottime_ms()
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1), align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @BTM_SEC_INVALID_HANDLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i64, i64* @BTM_SEC_STATE_AUTHENTICATING, align 8
  %20 = call %struct.TYPE_6__* @btm_sec_find_dev_by_sec_state(i64 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %3, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @BTM_SEC_STATE_ENCRYPTING, align 8
  %24 = call %struct.TYPE_6__* @btm_sec_find_dev_by_sec_state(i64 %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %3, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %29

26:                                               ; preds = %14
  %27 = load i64, i64* %2, align 8
  %28 = call %struct.TYPE_6__* @btm_find_dev_by_handle(i64 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %3, align 8
  br label %29

29:                                               ; preds = %26, %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BTM_SEC_STATE_AUTHENTICATING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %32
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BTM_SEC_STATE_ENCRYPTING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 3), align 8
  %53 = load i64, i64* @btm_sec_collision_timeout, align 8
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 2, i32 0), align 8
  %54 = load i32, i32* @BTU_TTYPE_USER_FUNC, align 4
  %55 = load i32, i32* @BT_1SEC_TIMEOUT, align 4
  %56 = call i32 @btu_start_timer(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 2), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %29
  br label %58

58:                                               ; preds = %57, %8
  ret void
}

declare dso_local i64 @osi_time_get_os_boottime_ms(...) #1

declare dso_local %struct.TYPE_6__* @btm_sec_find_dev_by_sec_state(i64) #1

declare dso_local %struct.TYPE_6__* @btm_find_dev_by_handle(i64) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64) #1

declare dso_local i32 @btu_start_timer(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
