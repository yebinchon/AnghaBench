; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_disable_timer_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_disable_timer_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32, i32*)*, i8*, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c" bta_dm_disable_timer_cback trial %d \00", align 1
@bta_dm_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TRUE = common dso_local global i8* null, align 8
@UUID_SERVCLASS_PNP_INFORMATION = common dso_local global i32 0, align 4
@BTA_DM_DISABLE_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @bta_dm_disable_timer_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_disable_timer_cback(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call i32 @UNUSED(%struct.TYPE_10__* %6)
  %8 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i8*, i8** @FALSE, align 8
  store i8* %9, i8** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @APPL_TRACE_EVENT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = call i64 (...) @BTM_GetNumAclLinks()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 3, i32 0), align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 3, i32 1), align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 3, i32 1), align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @btm_remove_acl(i32 %36, i32 %37)
  %39 = load i8*, i8** @TRUE, align 8
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %26
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %22

43:                                               ; preds = %22
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  store i32* bitcast (void (%struct.TYPE_10__*)* @bta_dm_disable_timer_cback to i32*), i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 2, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 2, i32 0), align 8
  %47 = call i32 @bta_sys_start_timer(%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 2), i32 0, i32 1500)
  br label %48

48:                                               ; preds = %46, %43
  br label %56

49:                                               ; preds = %16, %1
  %50 = load i8*, i8** @FALSE, align 8
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 1), align 8
  %51 = load i32, i32* @UUID_SERVCLASS_PNP_INFORMATION, align 4
  %52 = call i32 @bta_sys_remove_uuid(i32 %51)
  %53 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 0), align 8
  %54 = load i32, i32* @BTA_DM_DISABLE_EVT, align 4
  %55 = call i32 %53(i32 %54, i32* null)
  br label %56

56:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @UNUSED(%struct.TYPE_10__*) #1

declare dso_local i32 @APPL_TRACE_EVENT(i8*, i64) #1

declare dso_local i64 @BTM_GetNumAclLinks(...) #1

declare dso_local i32 @btm_remove_acl(i32, i32) #1

declare dso_local i32 @bta_sys_start_timer(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @bta_sys_remove_uuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
