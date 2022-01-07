; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_lqm_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_lqm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.kev_dl_link_quality_metric_data = type { i32 }
%struct.net_event_data = type { i32 }

@IFNET_LQM_MIN = common dso_local global i32 0, align 4
@IFNET_LQM_MAX = common dso_local global i32 0, align 4
@IFNET_LQM_THRESH_ABORT = common dso_local global i32 0, align 4
@tcbinfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@INPCBINFO_HANDLE_LQM_ABORT = common dso_local global i32 0, align 4
@INPCB_TIMER_FAST = common dso_local global i32 0, align 4
@IFNET_LQM_THRESH_MINIMALLY_VIABLE = common dso_local global i32 0, align 4
@IFNET_LQM_THRESH_POOR = common dso_local global i32 0, align 4
@IFNET_LQM_THRESH_GOOD = common dso_local global i32 0, align 4
@IF_INTERFACE_STATE_LQM_STATE_VALID = common dso_local global i32 0, align 4
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_LINK_QUALITY_METRIC_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_lqm_update(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kev_dl_link_quality_metric_data, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IFNET_LQM_MIN, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IFNET_LQM_MAX, align 4
  %14 = icmp sle i32 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IFNET_LQM_THRESH_ABORT, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @IFNET_LQM_THRESH_ABORT, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @INPCBINFO_HANDLE_LQM_ABORT, align 4
  %28 = call i32 @atomic_bitset_32(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcbinfo, i32 0, i32 0), i32 %27)
  %29 = load i32, i32* @INPCB_TIMER_FAST, align 4
  %30 = call i32 @inpcb_timer_sched(%struct.TYPE_5__* @tcbinfo, i32 %29)
  br label %64

31:                                               ; preds = %21, %15
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IFNET_LQM_THRESH_ABORT, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IFNET_LQM_THRESH_MINIMALLY_VIABLE, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @IFNET_LQM_THRESH_MINIMALLY_VIABLE, align 4
  store i32 %40, i32* %5, align 4
  br label %63

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IFNET_LQM_THRESH_MINIMALLY_VIABLE, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @IFNET_LQM_THRESH_POOR, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @IFNET_LQM_THRESH_POOR, align 4
  store i32 %50, i32* %5, align 4
  br label %62

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @IFNET_LQM_THRESH_POOR, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @IFNET_LQM_THRESH_GOOD, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @IFNET_LQM_THRESH_GOOD, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %55, %51
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %39
  br label %64

64:                                               ; preds = %63, %25
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IF_INTERFACE_STATE_LQM_STATE_VALID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = call i32 @ifnet_lock_done(%struct.ifnet* %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %118

92:                                               ; preds = %77, %70
  %93 = load i32, i32* @IF_INTERFACE_STATE_LQM_STATE_VALID, align 4
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %104 = call i32 @ifnet_lock_done(%struct.ifnet* %103)
  %105 = call i32 @bzero(%struct.kev_dl_link_quality_metric_data* %7, i32 4)
  %106 = load i32, i32* %5, align 4
  %107 = getelementptr inbounds %struct.kev_dl_link_quality_metric_data, %struct.kev_dl_link_quality_metric_data* %7, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %109 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %110 = load i32, i32* @KEV_DL_LINK_QUALITY_METRIC_CHANGED, align 4
  %111 = bitcast %struct.kev_dl_link_quality_metric_data* %7 to %struct.net_event_data*
  %112 = call i32 @dlil_post_msg(%struct.ifnet* %108, i32 %109, i32 %110, %struct.net_event_data* %111, i32 4)
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %92
  %116 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %117 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %116)
  br label %118

118:                                              ; preds = %91, %115, %92
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @atomic_bitset_32(i32*, i32) #1

declare dso_local i32 @inpcb_timer_sched(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @bzero(%struct.kev_dl_link_quality_metric_data*, i32) #1

declare dso_local i32 @dlil_post_msg(%struct.ifnet*, i32, i32, %struct.net_event_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
