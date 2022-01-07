; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_receive_lacpdu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_receive_lacpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.mbuf = type { i64 }
%struct.ifnet = type { i32 }
%struct.TYPE_7__ = type { i64, i32, %struct.ifnet*, i32, i32* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }

@IFEF_BOND = common dso_local global i32 0, align 4
@IF_BOND_MODE_LACP = common dso_local global i64 0, align 8
@KEV_DL_LINK_OFF = common dso_local global i32 0, align 4
@KEV_DL_LINK_ON = common dso_local global i32 0, align 4
@g_bond = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: (receive) generating LINK event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.ifnet*)* @bond_receive_lacpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_receive_lacpdu(%struct.mbuf* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  store %struct.ifnet* null, %struct.ifnet** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @bond_lock()
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = call i32 @ifnet_eflags(%struct.ifnet* %10)
  %12 = load i32, i32* @IFEF_BOND, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %100

16:                                               ; preds = %2
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = call %struct.TYPE_8__* @bond_lookup_port(%struct.ifnet* %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %100

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %100

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IF_BOND_MODE_LACP, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %100

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @bondport_receive_lacpdu(%struct.TYPE_8__* %39, i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = call i64 @ifbond_selection(%struct.TYPE_7__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @KEV_DL_LINK_OFF, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @KEV_DL_LINK_ON, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %7, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load %struct.ifnet*, %struct.ifnet** %60, align 8
  store %struct.ifnet* %61, %struct.ifnet** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %99

65:                                               ; preds = %38
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @KEV_DL_LINK_OFF, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @KEV_DL_LINK_ON, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %74
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bond, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @timestamp_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load %struct.ifnet*, %struct.ifnet** %93, align 8
  store %struct.ifnet* %94, %struct.ifnet** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %91, %74
  br label %99

99:                                               ; preds = %98, %57
  br label %100

100:                                              ; preds = %99, %37, %27, %21, %15
  %101 = call i32 (...) @bond_unlock()
  %102 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %103 = icmp ne %struct.ifnet* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @interface_link_event(%struct.ifnet* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %110 = call i32 @m_freem(%struct.mbuf* %109)
  ret void
}

declare dso_local i32 @bond_lock(...) #1

declare dso_local i32 @ifnet_eflags(%struct.ifnet*) #1

declare dso_local %struct.TYPE_8__* @bond_lookup_port(%struct.ifnet*) #1

declare dso_local i32 @bondport_receive_lacpdu(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ifbond_selection(%struct.TYPE_7__*) #1

declare dso_local i32 @timestamp_printf(i8*, i32) #1

declare dso_local i32 @bond_unlock(...) #1

declare dso_local i32 @interface_link_event(%struct.ifnet*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
