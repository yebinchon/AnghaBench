; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_setmulti.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.ifnet* }

@.str = private unnamed_addr constant [14 x i8] c"vlan_setmulti\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @vlan_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_setmulti(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %7 = call i32 (...) @vlan_lock()
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = call %struct.TYPE_13__* @ifnet_get_ifvlan_retained(%struct.ifnet* %8)
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = icmp eq %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = call %struct.TYPE_12__* @ifvlan_get_vlan_parent_retained(%struct.TYPE_13__* %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %43

19:                                               ; preds = %13
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = call i32 @vlan_parent_wait(%struct.TYPE_12__* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = call i64 @ifnet_ifvlan_vlan_parent_ok(%struct.ifnet* %22, %struct.TYPE_13__* %23, %struct.TYPE_12__* %24)
  %26 = load i64, i64* @FALSE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.ifnet*, %struct.ifnet** %31, align 8
  store %struct.ifnet* %32, %struct.ifnet** %5, align 8
  %33 = call i32 (...) @vlan_unlock()
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = call i32 @multicast_list_program(i32* %35, %struct.ifnet* %36, %struct.ifnet* %37)
  store i32 %38, i32* %3, align 4
  %39 = call i32 (...) @vlan_lock()
  br label %40

40:                                               ; preds = %29, %28
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = call i32 @vlan_parent_signal(%struct.TYPE_12__* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %18, %12
  %44 = call i32 (...) @vlan_unlock()
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = call i32 @ifvlan_release(%struct.TYPE_13__* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = call i32 @vlan_parent_release(%struct.TYPE_12__* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @vlan_lock(...) #1

declare dso_local %struct.TYPE_13__* @ifnet_get_ifvlan_retained(%struct.ifnet*) #1

declare dso_local %struct.TYPE_12__* @ifvlan_get_vlan_parent_retained(%struct.TYPE_13__*) #1

declare dso_local i32 @vlan_parent_wait(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @ifnet_ifvlan_vlan_parent_ok(%struct.ifnet*, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local i32 @multicast_list_program(i32*, %struct.ifnet*, %struct.ifnet*) #1

declare dso_local i32 @vlan_parent_signal(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ifvlan_release(%struct.TYPE_13__*) #1

declare dso_local i32 @vlan_parent_release(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
