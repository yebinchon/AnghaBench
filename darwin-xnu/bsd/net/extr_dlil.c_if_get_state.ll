; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_get_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.if_interface_state = type { i32, i32, i32, i32 }

@IF_INTERFACE_STATE_RRC_STATE_VALID = common dso_local global i32 0, align 4
@IF_INTERFACE_STATE_LQM_STATE_VALID = common dso_local global i32 0, align 4
@IF_INTERFACE_STATE_INTERFACE_AVAILABILITY_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_get_state(%struct.ifnet* %0, %struct.if_interface_state* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.if_interface_state*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.if_interface_state* %1, %struct.if_interface_state** %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %6 = call i32 @ifnet_lock_shared(%struct.ifnet* %5)
  %7 = load %struct.if_interface_state*, %struct.if_interface_state** %4, align 8
  %8 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IF_INTERFACE_STATE_RRC_STATE_VALID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @IF_INTERFACE_STATE_RRC_STATE_VALID, align 4
  %18 = load %struct.if_interface_state*, %struct.if_interface_state** %4, align 8
  %19 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.if_interface_state*, %struct.if_interface_state** %4, align 8
  %27 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %16, %2
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IF_INTERFACE_STATE_LQM_STATE_VALID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load i32, i32* @IF_INTERFACE_STATE_LQM_STATE_VALID, align 4
  %38 = load %struct.if_interface_state*, %struct.if_interface_state** %4, align 8
  %39 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.if_interface_state*, %struct.if_interface_state** %4, align 8
  %47 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %36, %28
  %49 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IF_INTERFACE_STATE_INTERFACE_AVAILABILITY_VALID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i32, i32* @IF_INTERFACE_STATE_INTERFACE_AVAILABILITY_VALID, align 4
  %58 = load %struct.if_interface_state*, %struct.if_interface_state** %4, align 8
  %59 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.if_interface_state*, %struct.if_interface_state** %4, align 8
  %67 = getelementptr inbounds %struct.if_interface_state, %struct.if_interface_state* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %56, %48
  %69 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %70 = call i32 @ifnet_lock_done(%struct.ifnet* %69)
  ret void
}

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
