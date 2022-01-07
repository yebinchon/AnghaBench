; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_optimize.c_AAS_Optimize.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_optimize.c_AAS_Optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 (i32, i8*)* }
%struct.TYPE_9__ = type { i32*, i32* }

@aasworld = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@TRAVELTYPE_MASK = common dso_local global i32 0, align 4
@TRAVEL_ELEVATOR = common dso_local global i32 0, align 4
@TRAVEL_JUMPPAD = common dso_local global i32 0, align 4
@TRAVEL_FUNCBOB = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AAS data optimized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_Optimize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = call i32 @AAS_OptimizeAlloc(%struct.TYPE_9__* %3)
  store i32 1, i32* %1, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 0), align 8
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @AAS_OptimizeArea(%struct.TYPE_9__* %3, i32 %10)
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %5

15:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %133, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 1), align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %136

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @TRAVEL_ELEVATOR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %133

32:                                               ; preds = %20
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @TRAVEL_JUMPPAD, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %133

44:                                               ; preds = %32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @TRAVEL_FUNCBOB, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %133

56:                                               ; preds = %44
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @abs(i32 %70)
  %72 = getelementptr inbounds i32, i32* %64, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* %2, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %56
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 0, %87
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %81, %56
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %2, align 4
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @abs(i32 %108)
  %110 = getelementptr inbounds i32, i32* %102, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %111, i32* %116, align 4
  %117 = load i32, i32* %2, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %94
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %121 = load i32, i32* %1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 0, %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  store i32 %126, i32* %131, align 4
  br label %132

132:                                              ; preds = %119, %94
  br label %133

133:                                              ; preds = %132, %55, %43, %31
  %134 = load i32, i32* %1, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %1, align 4
  br label %16

136:                                              ; preds = %16
  %137 = call i32 @AAS_OptimizeStore(%struct.TYPE_9__* %3)
  %138 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %139 = load i32, i32* @PRT_MESSAGE, align 4
  %140 = call i32 %138(i32 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @AAS_OptimizeAlloc(%struct.TYPE_9__*) #1

declare dso_local i32 @AAS_OptimizeArea(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @AAS_OptimizeStore(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
