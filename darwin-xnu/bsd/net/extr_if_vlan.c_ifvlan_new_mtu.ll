; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_ifvlan_new_mtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_ifvlan_new_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.ifnet* }
%struct.TYPE_6__ = type { %struct.ifnet*, %struct.ifdevmtu }
%struct.ifdevmtu = type { i32, i32, i32 }
%struct.ifnet = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @ifvlan_new_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifvlan_new_mtu(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifdevmtu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.ifnet*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = call i32 (...) @vlan_assert_lock_held()
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %12, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.ifdevmtu* %22, %struct.ifdevmtu** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %23, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.ifdevmtu*, %struct.ifdevmtu** %6, align 8
  %30 = getelementptr inbounds %struct.ifdevmtu, %struct.ifdevmtu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.ifdevmtu*, %struct.ifdevmtu** %6, align 8
  %36 = getelementptr inbounds %struct.ifdevmtu, %struct.ifdevmtu* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %2
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %87

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = call i32 @vlan_parent_find_max_mtu(%struct.TYPE_6__* %42, %struct.TYPE_7__* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %10, align 4
  br label %59

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.ifdevmtu*, %struct.ifdevmtu** %6, align 8
  %53 = getelementptr inbounds %struct.ifdevmtu, %struct.ifdevmtu* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %50
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.ifnet*, %struct.ifnet** %64, align 8
  store %struct.ifnet* %65, %struct.ifnet** %13, align 8
  %66 = call i32 (...) @vlan_unlock()
  %67 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @siocsifaltmtu(%struct.ifnet* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = call i32 (...) @vlan_lock()
  br label %71

71:                                               ; preds = %62, %59
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.ifdevmtu*, %struct.ifdevmtu** %6, align 8
  %80 = getelementptr inbounds %struct.ifdevmtu, %struct.ifdevmtu* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ifnet_set_mtu(%struct.ifnet* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %71
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %39
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @vlan_assert_lock_held(...) #1

declare dso_local i32 @vlan_parent_find_max_mtu(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local i32 @siocsifaltmtu(%struct.ifnet*, i32) #1

declare dso_local i32 @vlan_lock(...) #1

declare dso_local i32 @ifnet_set_mtu(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
