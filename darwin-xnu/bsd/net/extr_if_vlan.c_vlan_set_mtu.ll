; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_set_mtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_8__ = type { i32* }

@IF_MINMTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vlan_set_mtu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32)* @vlan_set_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_set_mtu(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IF_MINMTU, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %80

14:                                               ; preds = %2
  %15 = call i32 (...) @vlan_lock()
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = call %struct.TYPE_8__* @ifnet_get_ifvlan_retained(%struct.ifnet* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = call i32 (...) @vlan_unlock()
  %22 = load i32, i32* @EBUSY, align 4
  store i32 %22, i32* %3, align 4
  br label %80

23:                                               ; preds = %14
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = call i32* @ifvlan_get_vlan_parent_retained(%struct.TYPE_8__* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = call i32 (...) @vlan_unlock()
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = call i32 @ifvlan_release(%struct.TYPE_8__* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %80

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %80

37:                                               ; preds = %23
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @vlan_parent_wait(i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = call %struct.TYPE_8__* @ifnet_get_ifvlan(%struct.ifnet* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = icmp ne %struct.TYPE_8__* %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = call i64 @ifvlan_flags_detaching(%struct.TYPE_8__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %37
  %49 = load i32, i32* @EBUSY, align 4
  store i32 %49, i32* %6, align 4
  br label %71

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %71

57:                                               ; preds = %50
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @vlan_parent_flags_detaching(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %61
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @ifvlan_new_mtu(%struct.TYPE_8__* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %66, %56, %48
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @vlan_parent_signal(i32* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %74 = call i32 (...) @vlan_unlock()
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @vlan_parent_release(i32* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = call i32 @ifvlan_release(%struct.TYPE_8__* %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %71, %36, %34, %20, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @vlan_lock(...) #1

declare dso_local %struct.TYPE_8__* @ifnet_get_ifvlan_retained(%struct.ifnet*) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local i32* @ifvlan_get_vlan_parent_retained(%struct.TYPE_8__*) #1

declare dso_local i32 @ifvlan_release(%struct.TYPE_8__*) #1

declare dso_local i32 @vlan_parent_wait(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @ifnet_get_ifvlan(%struct.ifnet*) #1

declare dso_local i64 @ifvlan_flags_detaching(%struct.TYPE_8__*) #1

declare dso_local i64 @vlan_parent_flags_detaching(i32*) #1

declare dso_local i32 @ifvlan_new_mtu(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vlan_parent_signal(i32*, i8*) #1

declare dso_local i32 @vlan_parent_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
