; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_parent_remove_all_vlans.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_parent_remove_all_vlans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_16__ = type { %struct.ifnet* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"vlan_parent_remove_all_vlans\00", align 1
@ifv_vlan_list = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IFEF_VLAN = common dso_local global i32 0, align 4
@vlp_parent_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @vlan_parent_remove_all_vlans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_parent_remove_all_vlans(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = call i32 (...) @vlan_lock()
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = call %struct.TYPE_15__* @parent_list_lookup(%struct.ifnet* %10)
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = icmp eq %struct.TYPE_15__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = call i64 @vlan_parent_flags_detaching(%struct.TYPE_15__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %1
  %19 = call i32 (...) @vlan_unlock()
  br label %84

20:                                               ; preds = %14
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = call i32 @vlan_parent_flags_set_detaching(%struct.TYPE_15__* %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = call i32 @vlan_parent_retain(%struct.TYPE_15__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = call i32 @vlan_parent_wait(%struct.TYPE_15__* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %30 = call %struct.TYPE_15__* @parent_list_lookup(%struct.ifnet* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = icmp ne %struct.TYPE_15__* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %72

34:                                               ; preds = %20
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = call %struct.TYPE_16__* @LIST_FIRST(i32* %36)
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %3, align 8
  br label %38

38:                                               ; preds = %59, %34
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = icmp ne %struct.TYPE_16__* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.ifnet*, %struct.ifnet** %43, align 8
  store %struct.ifnet* %44, %struct.ifnet** %7, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = load i32, i32* @ifv_vlan_list, align 4
  %47 = call %struct.TYPE_16__* @LIST_NEXT(%struct.TYPE_16__* %45, i32 %46)
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %5, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @vlan_remove(%struct.TYPE_16__* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = call i32 (...) @vlan_unlock()
  %55 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %56 = call i32 @ifnet_detach(%struct.ifnet* %55)
  %57 = call i32 (...) @vlan_lock()
  br label %58

58:                                               ; preds = %53, %41
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %3, align 8
  br label %38

61:                                               ; preds = %38
  %62 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %63 = load i32, i32* @IFEF_VLAN, align 4
  %64 = call i32 @ifnet_set_eflags(%struct.ifnet* %62, i32 0, i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = load i32, i32* @vlp_parent_list, align 4
  %67 = call i32 @LIST_REMOVE(%struct.TYPE_15__* %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %61, %33
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = call i32 @vlan_parent_signal(%struct.TYPE_15__* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %75 = call i32 (...) @vlan_unlock()
  br label %76

76:                                               ; preds = %80, %72
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %4, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = call i32 @vlan_parent_release(%struct.TYPE_15__* %81)
  br label %76

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %18
  ret void
}

declare dso_local i32 @vlan_lock(...) #1

declare dso_local %struct.TYPE_15__* @parent_list_lookup(%struct.ifnet*) #1

declare dso_local i64 @vlan_parent_flags_detaching(%struct.TYPE_15__*) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local i32 @vlan_parent_flags_set_detaching(%struct.TYPE_15__*) #1

declare dso_local i32 @vlan_parent_retain(%struct.TYPE_15__*) #1

declare dso_local i32 @vlan_parent_wait(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_16__* @LIST_FIRST(i32*) #1

declare dso_local %struct.TYPE_16__* @LIST_NEXT(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vlan_remove(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ifnet_detach(%struct.ifnet*) #1

declare dso_local i32 @ifnet_set_eflags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @vlan_parent_signal(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @vlan_parent_release(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
