; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_ceilng.c_T_MoveCeiling.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_ceilng.c_T_MoveCeiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@leveltime = common dso_local global i32 0, align 4
@sfx_stnmov = common dso_local global i32 0, align 4
@pastdest = common dso_local global i32 0, align 4
@sfx_pstop = common dso_local global i32 0, align 4
@CEILSPEED = common dso_local global i32 0, align 4
@crushed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @T_MoveCeiling(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %139 [
    i32 0, label %7
    i32 1, label %8
    i32 -1, label %62
  ]

7:                                                ; preds = %1
  br label %139

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @T_MovePlane(%struct.TYPE_6__* %11, i32 %14, i32 %17, i32 0, i32 1, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @leveltime, align 4
  %23 = and i32 %22, 7
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %30 [
    i32 128, label %29
  ]

29:                                               ; preds = %25
  br label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* @sfx_stnmov, align 4
  %36 = call i32 @S_StartSound(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %29
  br label %38

38:                                               ; preds = %37, %8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @pastdest, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %59 [
    i32 129, label %46
    i32 128, label %49
    i32 132, label %56
    i32 133, label %56
  ]

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = call i32 @P_RemoveActiveCeiling(%struct.TYPE_5__* %47)
  br label %60

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* @sfx_pstop, align 4
  %55 = call i32 @S_StartSound(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %42, %42, %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  br label %60

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %56, %46
  br label %61

61:                                               ; preds = %60, %38
  br label %139

62:                                               ; preds = %1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @T_MovePlane(%struct.TYPE_6__* %65, i32 %68, i32 %71, i32 %74, i32 1, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* @leveltime, align 4
  %80 = and i32 %79, 7
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %62
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %87 [
    i32 128, label %86
  ]

86:                                               ; preds = %82
  br label %94

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* @sfx_stnmov, align 4
  %93 = call i32 @S_StartSound(i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %86
  br label %95

95:                                               ; preds = %94, %62
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @pastdest, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %120 [
    i32 128, label %103
    i32 133, label %110
    i32 132, label %114
    i32 131, label %117
    i32 130, label %117
  ]

103:                                              ; preds = %99
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* @sfx_pstop, align 4
  %109 = call i32 @S_StartSound(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %99, %103
  %111 = load i32, i32* @CEILSPEED, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %99, %110
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  br label %121

117:                                              ; preds = %99, %99
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = call i32 @P_RemoveActiveCeiling(%struct.TYPE_5__* %118)
  br label %121

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120, %117, %114
  br label %138

122:                                              ; preds = %95
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @crushed, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %135 [
    i32 128, label %130
    i32 133, label %130
    i32 131, label %130
  ]

130:                                              ; preds = %126, %126, %126
  %131 = load i32, i32* @CEILSPEED, align 4
  %132 = sdiv i32 %131, 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %136

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135, %130
  br label %137

137:                                              ; preds = %136, %122
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %1, %138, %61, %7
  ret void
}

declare dso_local i32 @T_MovePlane(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i32 @P_RemoveActiveCeiling(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
