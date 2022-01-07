; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_set_mode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bond_set_mode\00", align 1
@IF_BOND_MODE_LACP = common dso_local global i32 0, align 4
@KEV_DL_LINK_OFF = common dso_local global i32 0, align 4
@KEV_DL_LINK_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32)* @bond_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_set_mode(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @bond_lock()
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = call i64 @ifnet_softc(%struct.ifnet* %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = call i64 @ifbond_flags_if_detaching(%struct.TYPE_10__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %2
  %20 = call i32 (...) @bond_unlock()
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = icmp eq %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EBUSY, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %3, align 4
  br label %104

29:                                               ; preds = %15
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 (...) @bond_unlock()
  store i32 0, i32* %3, align 4
  br label %104

37:                                               ; preds = %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = call i32 @ifbond_retain(%struct.TYPE_10__* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = call i32 @ifbond_wait(%struct.TYPE_10__* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %90

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @IF_BOND_MODE_LACP, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %48
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = call i32 @bond_set_lacp_mode(%struct.TYPE_10__* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = call i64 @ifbond_selection(%struct.TYPE_10__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @KEV_DL_LINK_OFF, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @KEV_DL_LINK_ON, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %55
  br label %86

73:                                               ; preds = %48
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = call i32 @bond_set_static_mode(%struct.TYPE_10__* %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @KEV_DL_LINK_OFF, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @KEV_DL_LINK_ON, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %72
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %47
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = call i32 @ifbond_signal(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %93 = call i32 (...) @bond_unlock()
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = call i32 @ifbond_release(%struct.TYPE_10__* %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @interface_link_event(%struct.ifnet* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %90
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %35, %27
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @bond_lock(...) #1

declare dso_local i64 @ifnet_softc(%struct.ifnet*) #1

declare dso_local i64 @ifbond_flags_if_detaching(%struct.TYPE_10__*) #1

declare dso_local i32 @bond_unlock(...) #1

declare dso_local i32 @ifbond_retain(%struct.TYPE_10__*) #1

declare dso_local i32 @ifbond_wait(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @bond_set_lacp_mode(%struct.TYPE_10__*) #1

declare dso_local i64 @ifbond_selection(%struct.TYPE_10__*) #1

declare dso_local i32 @bond_set_static_mode(%struct.TYPE_10__*) #1

declare dso_local i32 @ifbond_signal(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @ifbond_release(%struct.TYPE_10__*) #1

declare dso_local i32 @interface_link_event(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
