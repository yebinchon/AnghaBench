; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PIT_CheckLine.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PIT_CheckLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64*, i32, i64, i32 }

@tmbbox = common dso_local global i64* null, align 8
@BOXRIGHT = common dso_local global i64 0, align 8
@BOXLEFT = common dso_local global i64 0, align 8
@BOXTOP = common dso_local global i64 0, align 8
@BOXBOTTOM = common dso_local global i64 0, align 8
@tmthing = common dso_local global %struct.TYPE_9__* null, align 8
@MF_MISSILE = common dso_local global i32 0, align 4
@ML_BLOCKING = common dso_local global i32 0, align 4
@ML_BLOCKMONSTERS = common dso_local global i32 0, align 4
@opentop = common dso_local global i64 0, align 8
@tmceilingz = common dso_local global i64 0, align 8
@ceilingline = common dso_local global %struct.TYPE_8__* null, align 8
@openbottom = common dso_local global i64 0, align 8
@tmfloorz = common dso_local global i64 0, align 8
@lowfloor = common dso_local global i64 0, align 8
@tmdropoffz = common dso_local global i64 0, align 8
@spechit = common dso_local global %struct.TYPE_8__** null, align 8
@numspechit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PIT_CheckLine(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %4 = load i64*, i64** @tmbbox, align 8
  %5 = load i64, i64* @BOXRIGHT, align 8
  %6 = getelementptr inbounds i64, i64* %4, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @BOXLEFT, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %7, %13
  br i1 %14, label %51, label %15

15:                                               ; preds = %1
  %16 = load i64*, i64** @tmbbox, align 8
  %17 = load i64, i64* @BOXLEFT, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @BOXRIGHT, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %19, %25
  br i1 %26, label %51, label %27

27:                                               ; preds = %15
  %28 = load i64*, i64** @tmbbox, align 8
  %29 = load i64, i64* @BOXTOP, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @BOXBOTTOM, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %31, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %27
  %40 = load i64*, i64** @tmbbox, align 8
  %41 = load i64, i64* @BOXBOTTOM, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @BOXTOP, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39, %27, %15, %1
  store i32 1, i32* %2, align 4
  br label %127

52:                                               ; preds = %39
  %53 = load i64*, i64** @tmbbox, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = call i32 @P_BoxOnLineSide(i64* %53, %struct.TYPE_8__* %54)
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %127

58:                                               ; preds = %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %127

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tmthing, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MF_MISSILE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ML_BLOCKING, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %127

79:                                               ; preds = %71
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tmthing, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ML_BLOCKMONSTERS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %127

92:                                               ; preds = %84, %79
  br label %93

93:                                               ; preds = %92, %64
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = call i32 @P_LineOpening(%struct.TYPE_8__* %94)
  %96 = load i64, i64* @opentop, align 8
  %97 = load i64, i64* @tmceilingz, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i64, i64* @opentop, align 8
  store i64 %100, i64* @tmceilingz, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** @ceilingline, align 8
  br label %102

102:                                              ; preds = %99, %93
  %103 = load i64, i64* @openbottom, align 8
  %104 = load i64, i64* @tmfloorz, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i64, i64* @openbottom, align 8
  store i64 %107, i64* @tmfloorz, align 8
  br label %108

108:                                              ; preds = %106, %102
  %109 = load i64, i64* @lowfloor, align 8
  %110 = load i64, i64* @tmdropoffz, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i64, i64* @lowfloor, align 8
  store i64 %113, i64* @tmdropoffz, align 8
  br label %114

114:                                              ; preds = %112, %108
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @spechit, align 8
  %122 = load i64, i64* @numspechit, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %121, i64 %122
  store %struct.TYPE_8__* %120, %struct.TYPE_8__** %123, align 8
  %124 = load i64, i64* @numspechit, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* @numspechit, align 8
  br label %126

126:                                              ; preds = %119, %114
  store i32 1, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %91, %78, %63, %57, %51
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @P_BoxOnLineSide(i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @P_LineOpening(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
