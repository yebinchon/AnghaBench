; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_create_conn_after_switch.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_create_conn_after_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }

@HCI_CR_CONN_ALLOW_SWITCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"l2cu_create_conn_after_switch :%d num_acl:%d no_hi: %d is_bonding:%d\00", align 1
@l2cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@HCI_CR_CONN_NOT_ALLOW_SWITCH = common dso_local global i64 0, align 8
@LST_CONNECTING = common dso_local global i32 0, align 4
@HCI_PAGE_SCAN_REP_MODE_R1 = common dso_local global i64 0, align 8
@HCI_MANDATARY_PAGE_SCAN_MODE = common dso_local global i64 0, align 8
@HCI_PKT_TYPES_MASK_DM1 = common dso_local global i32 0, align 4
@HCI_PKT_TYPES_MASK_DH1 = common dso_local global i32 0, align 4
@HCI_PKT_TYPES_MASK_DM3 = common dso_local global i32 0, align 4
@HCI_PKT_TYPES_MASK_DH3 = common dso_local global i32 0, align 4
@HCI_PKT_TYPES_MASK_DM5 = common dso_local global i32 0, align 4
@HCI_PKT_TYPES_MASK_DH5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"L2CAP - no buffer for l2cu_create_conn\00", align 1
@FALSE = common dso_local global i32 0, align 4
@BTM_BLI_PAGE_EVT = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4
@L2CAP_LINK_CONNECT_TOUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cu_create_conn_after_switch(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %13 = load i64, i64* @HCI_CR_CONN_ALLOW_SWITCH, align 8
  store i64 %13, i64* %4, align 8
  %14 = call i32 (...) @BTM_GetNumAclLinks()
  store i32 %14, i32* %10, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_12__* @btm_find_dev(i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %11, align 8
  %19 = call i64 (...) @l2cu_get_num_hi_priority()
  store i64 %19, i64* %12, align 8
  %20 = call i64* (...) @BTM_ReadLocalFeatures()
  store i64* %20, i64** %9, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @l2cb, i32 0, i32 0), align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i64 %23, i64 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @l2cb, i32 0, i32 0), align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %41, label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i64, i64* %12, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38, %30
  %42 = load i64*, i64** %9, align 8
  %43 = call i64 @HCI_SWITCH_SUPPORTED(i64* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @HCI_CR_CONN_ALLOW_SWITCH, align 8
  store i64 %46, i64* %4, align 8
  br label %49

47:                                               ; preds = %41, %38, %33
  %48 = load i64, i64* @HCI_CR_CONN_NOT_ALLOW_SWITCH, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i32, i32* @LST_CONNECTING, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_13__* @BTM_InqDbRead(i32 %55)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %5, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %8, align 4
  br label %84

72:                                               ; preds = %49
  %73 = load i64, i64* @HCI_PAGE_SCAN_REP_MODE_R1, align 8
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* @HCI_MANDATARY_PAGE_SCAN_MODE, align 8
  store i64 %74, i64* %7, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  br label %82

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ %80, %77 ], [ 0, %81 ]
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %58
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HCI_PKT_TYPES_MASK_DM1, align 4
  %89 = load i32, i32* @HCI_PKT_TYPES_MASK_DH1, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @HCI_PKT_TYPES_MASK_DM3, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @HCI_PKT_TYPES_MASK_DH3, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @HCI_PKT_TYPES_MASK_DM5, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @HCI_PKT_TYPES_MASK_DH5, align 4
  %98 = or i32 %96, %97
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @btsnd_hcic_create_conn(i32 %87, i32 %98, i64 %99, i64 %100, i32 %101, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %84
  %106 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = call i32 @l2cu_release_lcb(%struct.TYPE_11__* %107)
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %2, align 4
  br label %119

110:                                              ; preds = %84
  %111 = load i32, i32* @BTM_BLI_PAGE_EVT, align 4
  %112 = call i32 @btm_acl_update_busy_level(i32 %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %116 = load i32, i32* @L2CAP_LINK_CONNECT_TOUT, align 4
  %117 = call i32 @btu_start_timer(i32* %114, i32 %115, i32 %116)
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %110, %105
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @BTM_GetNumAclLinks(...) #1

declare dso_local %struct.TYPE_12__* @btm_find_dev(i32) #1

declare dso_local i64 @l2cu_get_num_hi_priority(...) #1

declare dso_local i64* @BTM_ReadLocalFeatures(...) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i32, i32, i64, i64) #1

declare dso_local i64 @HCI_SWITCH_SUPPORTED(i64*) #1

declare dso_local %struct.TYPE_13__* @BTM_InqDbRead(i32) #1

declare dso_local i32 @btsnd_hcic_create_conn(i32, i32, i64, i64, i32, i64) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*) #1

declare dso_local i32 @l2cu_release_lcb(%struct.TYPE_11__*) #1

declare dso_local i32 @btm_acl_update_busy_level(i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
