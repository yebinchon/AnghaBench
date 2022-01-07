; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_removed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__, i32 (%struct.TYPE_17__*)* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"btm_acl_removed\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@HCI_ERR_NO_CONNECTION = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTM_BL_DISCN_EVT = common dso_local global i32 0, align 4
@BTM_BLI_ACL_DOWN_EVT = common dso_local global i32 0, align 4
@BTM_SEC_AUTHENTICATED = common dso_local global i32 0, align 4
@BTM_SEC_AUTHORIZED = common dso_local global i32 0, align 4
@BTM_SEC_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_LE_AUTHENTICATED = common dso_local global i32 0, align 4
@BTM_SEC_LE_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_LE_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@BTM_SEC_LE_LINK_KEY_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_ROLE_SWITCHED = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_acl_removed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_18__* @btm_bda_to_acl(i32 %8, i32 %9)
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = icmp ne %struct.TYPE_18__* %11, null
  br i1 %12, label %13, label %54

13:                                               ; preds = %2
  %14 = load i8*, i8** @FALSE, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @HCI_ERR_NO_CONNECTION, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @btm_acl_report_role_change(i32 %17, i32 %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %13
  %25 = load i8*, i8** @FALSE, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1), align 8
  %29 = icmp ne i32 (%struct.TYPE_17__*)* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load i32, i32* @BTM_BL_DISCN_EVT, align 4
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 1), align 8
  %47 = call i32 %46(%struct.TYPE_17__* %6)
  br label %48

48:                                               ; preds = %30, %24
  %49 = load i32, i32* @BTM_BLI_ACL_DOWN_EVT, align 4
  %50 = call i32 @btm_acl_update_busy_level(i32 %49)
  br label %51

51:                                               ; preds = %48, %13
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = call i32 @memset(%struct.TYPE_18__* %52, i32 0, i32 32)
  br label %54

54:                                               ; preds = %51, %2
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #1

declare dso_local %struct.TYPE_18__* @btm_bda_to_acl(i32, i32) #1

declare dso_local i32 @btm_acl_report_role_change(i32, i32) #1

declare dso_local i32 @btm_acl_update_busy_level(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
