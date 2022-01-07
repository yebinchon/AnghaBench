; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_parent_link_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_parent_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_9__ = type { i32 }

@IFEF_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vlan_parent_link_event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i32)* @vlan_parent_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_parent_link_event(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @vlan_lock()
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = call i32 @ifnet_eflags(%struct.ifnet* %7)
  %9 = load i32, i32* @IFEF_VLAN, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @vlan_unlock()
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = call %struct.TYPE_9__* @parent_list_lookup(%struct.ifnet* %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @vlan_unlock()
  br label %42

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = call i32 @vlan_parent_flags_set_link_event_required(%struct.TYPE_9__* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call i64 @vlan_parent_flags_change_in_progress(%struct.TYPE_9__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 (...) @vlan_unlock()
  br label %42

32:                                               ; preds = %21
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = call i32 @vlan_parent_retain(%struct.TYPE_9__* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = call i32 @vlan_parent_wait(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = call i32 @vlan_parent_signal(%struct.TYPE_9__* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (...) @vlan_unlock()
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = call i32 @vlan_parent_release(%struct.TYPE_9__* %40)
  br label %42

42:                                               ; preds = %32, %30, %19, %12
  ret void
}

declare dso_local i32 @vlan_lock(...) #1

declare dso_local i32 @ifnet_eflags(%struct.ifnet*) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local %struct.TYPE_9__* @parent_list_lookup(%struct.ifnet*) #1

declare dso_local i32 @vlan_parent_flags_set_link_event_required(%struct.TYPE_9__*) #1

declare dso_local i64 @vlan_parent_flags_change_in_progress(%struct.TYPE_9__*) #1

declare dso_local i32 @vlan_parent_retain(%struct.TYPE_9__*) #1

declare dso_local i32 @vlan_parent_wait(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vlan_parent_signal(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vlan_parent_release(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
