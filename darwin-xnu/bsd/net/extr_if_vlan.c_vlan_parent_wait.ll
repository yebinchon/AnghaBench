; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_parent_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_parent_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@g_vlan = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s%d: %s msleep\0A\00", align 1
@vlan_lck_mtx = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s%d: %s woke up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @vlan_parent_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_parent_wait(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ifnet*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = call i64 @vlan_parent_flags_change_in_progress(%struct.TYPE_7__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_vlan, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %6, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %22 = call i8* @ifnet_name(%struct.ifnet* %21)
  %23 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %24 = call i8* @ifnet_unit(%struct.ifnet* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %24, i8* %25)
  br label %27

27:                                               ; preds = %17, %12
  store i32 1, i32* %5, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = load i32, i32* @vlan_lck_mtx, align 4
  %30 = load i32, i32* @PZERO, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @msleep(%struct.TYPE_7__* %28, i32 %29, i32 %30, i8* %31, i32 0)
  br label %8

33:                                               ; preds = %8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i32 @vlan_parent_flags_set_change_in_progress(%struct.TYPE_7__* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_vlan, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.ifnet*, %struct.ifnet** %45, align 8
  store %struct.ifnet* %46, %struct.ifnet** %7, align 8
  %47 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %48 = call i8* @ifnet_name(%struct.ifnet* %47)
  %49 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %50 = call i8* @ifnet_unit(%struct.ifnet* %49)
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %48, i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %43, %40, %33
  ret void
}

declare dso_local i64 @vlan_parent_flags_change_in_progress(%struct.TYPE_7__*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @ifnet_name(%struct.ifnet*) #1

declare dso_local i8* @ifnet_unit(%struct.ifnet*) #1

declare dso_local i32 @msleep(%struct.TYPE_7__*, i32, i32, i8*, i32) #1

declare dso_local i32 @vlan_parent_flags_set_change_in_progress(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
