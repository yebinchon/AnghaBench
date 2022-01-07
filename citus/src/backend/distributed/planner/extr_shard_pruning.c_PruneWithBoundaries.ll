; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_shard_pruning.c_PruneWithBoundaries.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_shard_pruning.c_PruneWithBoundaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32** }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@INVALID_SHARD_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_15__*)* @PruneWithBoundaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PruneWithBoundaries(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %21 = load i32*, i32** @NIL, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  store i32** %27, i32*** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = ptrtoint i32* %29 to i32
  store i32 %30, i32* %20, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %35, %3
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %20, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i64 @PerformValueCompare(i32 %50, i32 %55, i32 %56)
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49, %46
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %59, %49
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = icmp ne %struct.TYPE_13__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %14, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = icmp ne %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %102

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32, i32* %20, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i64 @PerformValueCompare(i32 %86, i32 %91, i32 %92)
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %85, %82
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %12, align 4
  br label %101

101:                                              ; preds = %95, %85
  br label %102

102:                                              ; preds = %101, %77
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i1 [ true, %102 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @Assert(i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load i32, i32* %13, align 4
  %116 = load i32**, i32*** %10, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @LowerShardBoundary(i32 %115, i32** %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %17, align 4
  br label %122

121:                                              ; preds = %108
  store i32 0, i32* %17, align 4
  br label %122

122:                                              ; preds = %121, %114
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %14, align 4
  %127 = load i32**, i32*** %10, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @UpperShardBoundary(i32 %126, i32** %127, i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %18, align 4
  br label %135

132:                                              ; preds = %122
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %135

135:                                              ; preds = %132, %125
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @INVALID_SHARD_INDEX, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32*, i32** @NIL, align 8
  store i32* %140, i32** %4, align 8
  br label %167

141:                                              ; preds = %135
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* @INVALID_SHARD_INDEX, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32*, i32** @NIL, align 8
  store i32* %146, i32** %4, align 8
  br label %167

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %19, align 4
  br label %150

150:                                              ; preds = %162, %148
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp sle i32 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load i32*, i32** %8, align 8
  %156 = load i32**, i32*** %10, align 8
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = call i32* @lappend(i32* %155, i32* %160)
  store i32* %161, i32** %8, align 8
  br label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %19, align 4
  br label %150

165:                                              ; preds = %150
  %166 = load i32*, i32** %8, align 8
  store i32* %166, i32** %4, align 8
  br label %167

167:                                              ; preds = %165, %145, %139
  %168 = load i32*, i32** %4, align 8
  ret i32* %168
}

declare dso_local i64 @PerformValueCompare(i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LowerShardBoundary(i32, i32**, i32, i32, i32) #1

declare dso_local i32 @UpperShardBoundary(i32, i32**, i32, i32, i32) #1

declare dso_local i32* @lappend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
