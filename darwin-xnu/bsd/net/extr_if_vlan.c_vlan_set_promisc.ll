; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_set_promisc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @vlan_set_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_set_promisc(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 (...) @vlan_lock()
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = call %struct.TYPE_9__* @ifnet_get_ifvlan_retained(%struct.ifnet* %7)
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  store i32 %12, i32* %3, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %59

20:                                               ; preds = %13
  %21 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %22 = call i32 @ifnet_flags(%struct.ifnet* %21)
  %23 = load i32, i32* @IFF_PROMISC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = call i64 @ifvlan_flags_promisc(%struct.TYPE_9__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ifnet_set_promiscuous(i32 %33, i32 1)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = call i32 @ifvlan_flags_set_promisc(%struct.TYPE_9__* %38)
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40, %26
  br label %58

42:                                               ; preds = %20
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = call i64 @ifvlan_flags_promisc(%struct.TYPE_9__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ifnet_set_promiscuous(i32 %49, i32 0)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = call i32 @ifvlan_flags_clear_promisc(%struct.TYPE_9__* %54)
  br label %56

56:                                               ; preds = %53, %46
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %19, %11
  %60 = call i32 (...) @vlan_unlock()
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = icmp ne %struct.TYPE_9__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = call i32 @ifvlan_release(%struct.TYPE_9__* %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @vlan_lock(...) #1

declare dso_local %struct.TYPE_9__* @ifnet_get_ifvlan_retained(%struct.ifnet*) #1

declare dso_local i32 @ifnet_flags(%struct.ifnet*) #1

declare dso_local i64 @ifvlan_flags_promisc(%struct.TYPE_9__*) #1

declare dso_local i32 @ifnet_set_promiscuous(i32, i32) #1

declare dso_local i32 @ifvlan_flags_set_promisc(%struct.TYPE_9__*) #1

declare dso_local i32 @ifvlan_flags_clear_promisc(%struct.TYPE_9__*) #1

declare dso_local i32 @vlan_unlock(...) #1

declare dso_local i32 @ifvlan_release(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
