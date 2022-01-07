; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_MobjThinker.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_MobjThinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@MF_SKULLFLY = common dso_local global i32 0, align 4
@MF_COUNTKILL = common dso_local global i32 0, align 4
@respawnmonsters = common dso_local global i32 0, align 4
@leveltime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_MobjThinker(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 9
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MF_SKULLFLY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12, %7, %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = call i32 @P_XYMovement(%struct.TYPE_13__* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %114

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %12
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38, %30
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = call i32 @P_ZMovement(%struct.TYPE_13__* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %114

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %59
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @P_SetMobjState(%struct.TYPE_13__* %69, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  br label %114

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %59
  br label %114

80:                                               ; preds = %54
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MF_COUNTKILL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %114

88:                                               ; preds = %80
  %89 = load i32, i32* @respawnmonsters, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  br label %114

92:                                               ; preds = %88
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 420
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %114

102:                                              ; preds = %92
  %103 = load i32, i32* @leveltime, align 4
  %104 = and i32 %103, 31
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %114

107:                                              ; preds = %102
  %108 = call i32 (...) @P_Random()
  %109 = icmp sgt i32 %108, 4
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %114

111:                                              ; preds = %107
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = call i32 @P_NightmareRespawn(%struct.TYPE_13__* %112)
  br label %114

114:                                              ; preds = %28, %52, %77, %87, %91, %101, %106, %110, %111, %79
  ret void
}

declare dso_local i32 @P_XYMovement(%struct.TYPE_13__*) #1

declare dso_local i32 @P_ZMovement(%struct.TYPE_13__*) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @P_NightmareRespawn(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
