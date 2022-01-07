; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_rrc_state_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_rrc_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kev_dl_rrc_state = type { i32 }
%struct.net_event_data = type { i32 }

@IF_INTERFACE_STATE_RRC_STATE_VALID = common dso_local global i32 0, align 4
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_RRC_STATE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i32)* @if_rrc_state_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_rrc_state_update(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kev_dl_rrc_state, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IF_INTERFACE_STATE_RRC_STATE_VALID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %44

21:                                               ; preds = %12, %2
  %22 = load i32, i32* @IF_INTERFACE_STATE_RRC_STATE_VALID, align 4
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = call i32 @ifnet_lock_done(%struct.ifnet* %32)
  %34 = call i32 @bzero(%struct.kev_dl_rrc_state* %5, i32 4)
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.kev_dl_rrc_state, %struct.kev_dl_rrc_state* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %38 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %39 = load i32, i32* @KEV_DL_RRC_STATE_CHANGED, align 4
  %40 = bitcast %struct.kev_dl_rrc_state* %5 to %struct.net_event_data*
  %41 = call i32 @dlil_post_msg(%struct.ifnet* %37, i32 %38, i32 %39, %struct.net_event_data* %40, i32 4)
  %42 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %43 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %42)
  br label %44

44:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @bzero(%struct.kev_dl_rrc_state*, i32) #1

declare dso_local i32 @dlil_post_msg(%struct.ifnet*, i32, i32, %struct.net_event_data*, i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
