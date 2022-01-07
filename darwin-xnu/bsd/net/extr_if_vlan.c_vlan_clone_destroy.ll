; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @vlan_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %5 = call i32 (...) @vlan_lock()
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = call i32* @ifnet_get_ifvlan_retained(%struct.ifnet* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @vlan_unlock()
  store i32 0, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i64 @vlan_remove(i32* %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = call i32 (...) @vlan_unlock()
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ifvlan_release(i32* %19)
  store i32 0, i32* %2, align 4
  br label %27

21:                                               ; preds = %12
  %22 = call i32 (...) @vlan_unlock()
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @ifvlan_release(i32* %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = call i32 @ifnet_detach(%struct.ifnet* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %17, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @vlan_lock(...) #1

declare dso_local i32* @ifnet_get_ifvlan_retained(%struct.ifnet*) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local i64 @vlan_remove(i32*, i32) #1

declare dso_local i32 @ifvlan_release(i32*) #1

declare dso_local i32 @ifnet_detach(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
