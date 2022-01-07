; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_adjust_roles.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_adjust_roles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@bta_dm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@p_bta_dm_rm_cfg = common dso_local global %struct.TYPE_8__* null, align 8
@BTA_DM_NO_SCATTERNET = common dso_local global i64 0, align 8
@HCI_ROLE_MASTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BTA_DM_CONNECTED = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@BTA_ANY_ROLE = common dso_local global i64 0, align 8
@BTA_DM_PARTIAL_SCATTERNET = common dso_local global i64 0, align 8
@BTA_MASTER_ROLE_ONLY = common dso_local global i64 0, align 8
@BTA_SLAVE_ROLE_ONLY = common dso_local global i64 0, align 8
@bta_dm_delay_role_switch_cback = common dso_local global i32 0, align 4
@L2CAP_DESIRED_LINK_ROLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bta_dm_adjust_roles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_adjust_roles(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 1, i32 0), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 1, i32 1), align 4
  %9 = sub nsw i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %124

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p_bta_dm_rm_cfg, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BTA_DM_NO_SCATTERNET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 2), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %12
  %26 = load i32, i32* @HCI_ROLE_MASTER, align 4
  %27 = call i32 @L2CA_SetDesireRole(i32 %26)
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %25, %22, %19
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %114, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 1, i32 0), align 8
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %117

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 1, i32 2), align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BTA_DM_CONNECTED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %113

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 1, i32 2), align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %113

52:                                               ; preds = %43
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 1, i32 2), align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BTA_ANY_ROLE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %55
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p_bta_dm_rm_cfg, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BTA_DM_PARTIAL_SCATTERNET, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @HCI_ROLE_MASTER, align 4
  %73 = call i32 @L2CA_SetDesireRole(i32 %72)
  %74 = load i64, i64* @TRUE, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %71, %64, %55, %52
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 1, i32 2), align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @BTA_MASTER_ROLE_ONLY, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %5, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %112

87:                                               ; preds = %84, %75
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 1, i32 2), align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BTA_SLAVE_ROLE_ONLY, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %87
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* @FALSE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 1, i32 2), align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @HCI_ROLE_MASTER, align 4
  %108 = call i32 @BTM_SwitchRole(i32 %106, i32 %107, i32* null)
  br label %111

109:                                              ; preds = %96, %87
  store i32* @bta_dm_delay_role_switch_cback, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 0, i32 0), align 8
  %110 = call i32 @bta_sys_start_timer(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_dm_cb, i32 0, i32 0), i32 0, i32 500)
  br label %111

111:                                              ; preds = %109, %100
  br label %112

112:                                              ; preds = %111, %84
  br label %113

113:                                              ; preds = %112, %43, %34
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %30

117:                                              ; preds = %30
  %118 = load i64, i64* %4, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @L2CAP_DESIRED_LINK_ROLE, align 4
  %122 = call i32 @L2CA_SetDesireRole(i32 %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %127

124:                                              ; preds = %1
  %125 = load i32, i32* @L2CAP_DESIRED_LINK_ROLE, align 4
  %126 = call i32 @L2CA_SetDesireRole(i32 %125)
  br label %127

127:                                              ; preds = %124, %123
  ret void
}

declare dso_local i32 @L2CA_SetDesireRole(i32) #1

declare dso_local i32 @BTM_SwitchRole(i32, i32, i32*) #1

declare dso_local i32 @bta_sys_start_timer(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
