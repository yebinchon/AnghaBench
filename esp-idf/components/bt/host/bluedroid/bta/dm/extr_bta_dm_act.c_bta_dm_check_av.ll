; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_check_av.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_check_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"bta_dm_check_av:%d\00", align 1
@bta_dm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"[%d]: state:%d, info:x%x, avoid_rs %d\00", align 1
@BTA_DM_CONNECTED = common dso_local global i64 0, align 8
@BTA_DM_DI_AV_ACTIVE = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@HCI_ROLE_MASTER = common dso_local global i32 0, align 4
@bta_dm_rs_cback = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BTA_SYS_PLCY_CLR = common dso_local global i32 0, align 4
@HCI_ENABLE_MASTER_SLAVE_SWITCH = common dso_local global i32 0, align 4
@BTA_DM_API_SEARCH_EVT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @bta_dm_check_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bta_dm_check_av(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 2), align 8
  %10 = call i32 @APPL_TRACE_EVENT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 2), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %72

13:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %68, %13
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 1, i32 0), align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 1, i32 1), align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %22, i64 %25, i32 %28, i64 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BTA_DM_CONNECTED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %18
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BTA_DM_DI_AV_ACTIVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %36
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @FALSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i64, i64* @BTM_CMD_STARTED, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HCI_ROLE_MASTER, align 4
  %53 = load i64, i64* @bta_dm_rs_cback, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = call i64 @BTM_SwitchRole(i32 %51, i32 %52, i32* %54)
  %56 = icmp eq i64 %48, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i64, i64* %2, align 8
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_dm_cb, i32 0, i32 0), align 8
  %59 = load i64, i64* @TRUE, align 8
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %57, %47
  %61 = load i32, i32* @BTA_SYS_PLCY_CLR, align 4
  %62 = load i32, i32* @HCI_ENABLE_MASTER_SLAVE_SWITCH, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bta_dm_policy_cback(i32 %61, i32 0, i32 %62, i32 %65)
  br label %71

67:                                               ; preds = %43, %36, %18
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %14

71:                                               ; preds = %60, %14
  br label %72

72:                                               ; preds = %71, %1
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32 @APPL_TRACE_EVENT(i8*, i64) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*, i64, i64, i32, i64) #1

declare dso_local i64 @BTM_SwitchRole(i32, i32, i32*) #1

declare dso_local i32 @bta_dm_policy_cback(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
