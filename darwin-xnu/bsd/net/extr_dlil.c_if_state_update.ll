; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_state_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.if_interface_state = type { i32, i64, i32, i32 }

@IFT_CELLULAR = common dso_local global i64 0, align 8
@IF_INTERFACE_STATE_RRC_STATE_VALID = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@IF_INTERFACE_STATE_LQM_STATE_VALID = common dso_local global i32 0, align 4
@IFNET_LQM_MIN = common dso_local global i32 0, align 4
@IFNET_LQM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IF_INTERFACE_STATE_RRC_STATE_IDLE = common dso_local global i32 0, align 4
@IF_INTERFACE_STATE_RRC_STATE_CONNECTED = common dso_local global i32 0, align 4
@IF_INTERFACE_STATE_INTERFACE_AVAILABILITY_VALID = common dso_local global i32 0, align 4
@IF_INTERFACE_STATE_INTERFACE_AVAILABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_state_update(%struct.ifnet* %0, %struct.if_interface_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.if_interface_state*, align 8
  %6 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.if_interface_state* %1, %struct.if_interface_state** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %7)
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IFT_CELLULAR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %16 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IF_INTERFACE_STATE_RRC_STATE_VALID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = call i32 @ifnet_lock_done(%struct.ifnet* %22)
  %24 = load i32, i32* @ENOTSUP, align 4
  store i32 %24, i32* %3, align 4
  br label %137

25:                                               ; preds = %14, %2
  %26 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %27 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IF_INTERFACE_STATE_LQM_STATE_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %34 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFNET_LQM_MIN, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %40 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFNET_LQM_MAX, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %32
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = call i32 @ifnet_lock_done(%struct.ifnet* %45)
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %3, align 4
  br label %137

48:                                               ; preds = %38, %25
  %49 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %50 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IF_INTERFACE_STATE_RRC_STATE_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %57 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IF_INTERFACE_STATE_RRC_STATE_IDLE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %63 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IF_INTERFACE_STATE_RRC_STATE_CONNECTED, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = call i32 @ifnet_lock_done(%struct.ifnet* %68)
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %3, align 4
  br label %137

71:                                               ; preds = %61, %55, %48
  %72 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %73 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IF_INTERFACE_STATE_LQM_STATE_VALID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %80 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %81 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @if_lqm_update(%struct.ifnet* %79, i32 %82, i32 1)
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %86 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IF_INTERFACE_STATE_RRC_STATE_VALID, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %93 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %94 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @if_rrc_state_update(%struct.ifnet* %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %99 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IF_INTERFACE_STATE_INTERFACE_AVAILABILITY_VALID, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %97
  %105 = load i32, i32* @IF_INTERFACE_STATE_INTERFACE_AVAILABILITY_VALID, align 4
  %106 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  %111 = load %struct.if_interface_state*, %struct.if_interface_state** %5, align 8
  %112 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %115 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IF_INTERFACE_STATE_INTERFACE_AVAILABLE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %104
  %124 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %125 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %6, align 8
  br label %127

127:                                              ; preds = %123, %104
  br label %128

128:                                              ; preds = %127, %97
  %129 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %130 = call i32 @ifnet_lock_done(%struct.ifnet* %129)
  %131 = load i64, i64* %6, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @tcp_interface_send_probe(i64 %134)
  br label %136

136:                                              ; preds = %133, %128
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %67, %44, %21
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @if_lqm_update(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_rrc_state_update(%struct.ifnet*, i32) #1

declare dso_local i32 @tcp_interface_send_probe(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
