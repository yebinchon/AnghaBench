; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_parent_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_parent_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.ifnet*, i32, i32 }

@M_VLAN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"vlan_parent_create (%s%d): siocgifdevmtu failed, %d\0A\00", align 1
@VLP_SIGNATURE = common dso_local global i32 0, align 4
@IF_HWASSIST_VLAN_MTU = common dso_local global i32 0, align 4
@IF_HWASSIST_VLAN_TAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.TYPE_6__**)* @vlan_parent_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_parent_create(%struct.ifnet* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %9 = load i32, i32* @M_VLAN, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.TYPE_6__* @_MALLOC(i32 24, i32 %9, i32 %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %3, align 4
  br label %61

18:                                               ; preds = %2
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = call i32 @siocgifdevmtu(%struct.ifnet* %19, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = call i8* @ifnet_name(%struct.ifnet* %26)
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = call i32 @ifnet_unit(%struct.ifnet* %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = load i32, i32* @M_VLAN, align 4
  %34 = call i32 @FREE(%struct.TYPE_6__* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %61

36:                                               ; preds = %18
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = call i32 @LIST_INIT(i32* %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store %struct.ifnet* %40, %struct.ifnet** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @VLP_SIGNATURE, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = call i32 @ifnet_offload(%struct.ifnet* %48)
  %50 = load i32, i32* @IF_HWASSIST_VLAN_MTU, align 4
  %51 = load i32, i32* @IF_HWASSIST_VLAN_TAGGING, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = call i32 @vlan_parent_flags_set_supports_vlan_mtu(%struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %55, %36
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %25, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_6__* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @siocgifdevmtu(%struct.ifnet*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i8* @ifnet_name(%struct.ifnet*) #1

declare dso_local i32 @ifnet_unit(%struct.ifnet*) #1

declare dso_local i32 @FREE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @ifnet_offload(%struct.ifnet*) #1

declare dso_local i32 @vlan_parent_flags_set_supports_vlan_mtu(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
