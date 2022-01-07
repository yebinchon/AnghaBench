; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_CheckForRightSplice.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_CheckForRightSplice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_23__*, i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*)* @CheckForRightSplice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForRightSplice(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %10 = call %struct.TYPE_24__* @RegionBelow(%struct.TYPE_24__* %9)
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %6, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %7, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %8, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %23 = call i64 @VertLeq(%struct.TYPE_25__* %19, %struct.TYPE_25__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %109

25:                                               ; preds = %2
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  %35 = call i64 @EdgeSign(i32 %28, %struct.TYPE_25__* %31, %struct.TYPE_25__* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %161

39:                                               ; preds = %25
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %46 = call i32 @VertEq(%struct.TYPE_25__* %42, %struct.TYPE_25__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @tessMeshSplitEdge(i32 %51, i32 %54)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @longjmp(i32 %60, i32 1)
  br label %62

62:                                               ; preds = %57, %48
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %68, align 8
  %70 = call i32 @tessMeshSplice(i32 %65, %struct.TYPE_23__* %66, %struct.TYPE_23__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %62
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @longjmp(i32 %75, i32 1)
  br label %77

77:                                               ; preds = %72, %62
  %78 = load i32, i32* @TRUE, align 4
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  br label %108

83:                                               ; preds = %39
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = icmp ne %struct.TYPE_25__* %86, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %83
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pqDelete(i32 %94, i32 %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %106 = call i32 @SpliceMergeVertices(%struct.TYPE_22__* %101, %struct.TYPE_23__* %104, %struct.TYPE_23__* %105)
  br label %107

107:                                              ; preds = %91, %83
  br label %108

108:                                              ; preds = %107, %77
  br label %159

109:                                              ; preds = %2
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %117, align 8
  %119 = call i64 @EdgeSign(i32 %112, %struct.TYPE_25__* %115, %struct.TYPE_25__* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %3, align 4
  br label %161

123:                                              ; preds = %109
  %124 = load i32, i32* @TRUE, align 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %128 = call %struct.TYPE_21__* @RegionAbove(%struct.TYPE_24__* %127)
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  store i32 %124, i32* %129, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32* @tessMeshSplitEdge(i32 %132, i32 %135)
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %123
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @longjmp(i32 %141, i32 1)
  br label %143

143:                                              ; preds = %138, %123
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %151 = call i32 @tessMeshSplice(i32 %146, %struct.TYPE_23__* %149, %struct.TYPE_23__* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %143
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @longjmp(i32 %156, i32 1)
  br label %158

158:                                              ; preds = %153, %143
  br label %159

159:                                              ; preds = %158, %108
  %160 = load i32, i32* @TRUE, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %121, %37
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.TYPE_24__* @RegionBelow(%struct.TYPE_24__*) #1

declare dso_local i64 @VertLeq(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i64 @EdgeSign(i32, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @VertEq(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32* @tessMeshSplitEdge(i32, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @tessMeshSplice(i32, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @pqDelete(i32, i32) #1

declare dso_local i32 @SpliceMergeVertices(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_21__* @RegionAbove(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
