; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_ConnectLeftDegenerate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_ConnectLeftDegenerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32, i32 }
%struct.TYPE_28__ = type { i32 }

@TOLERANCE_NONZERO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_28__*)* @ConnectLeftDegenerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConnectLeftDegenerate(%struct.TYPE_29__* %0, %struct.TYPE_31__* %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %6, align 8
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  store %struct.TYPE_30__* %14, %struct.TYPE_30__** %7, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %19 = call i64 @VertEq(i32 %17, %struct.TYPE_28__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load i32, i32* @TOLERANCE_NONZERO, align 4
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SpliceMergeVertices(%struct.TYPE_29__* %24, %struct.TYPE_30__* %25, i32 %28)
  br label %166

30:                                               ; preds = %3
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %35 = call i64 @VertEq(i32 %33, %struct.TYPE_28__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %93, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %42, align 8
  %44 = call i32* @tessMeshSplitEdge(i32 %40, %struct.TYPE_30__* %43)
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @longjmp(i32 %49, i32 1)
  br label %51

51:                                               ; preds = %46, %37
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %61, align 8
  %63 = call i32 @tessMeshDelete(i32 %59, %struct.TYPE_30__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @longjmp(i32 %68, i32 1)
  br label %70

70:                                               ; preds = %65, %56
  %71 = load i64, i64* @FALSE, align 8
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %51
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %82 = call i32 @tessMeshSplice(i32 %77, i32 %80, %struct.TYPE_30__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %74
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @longjmp(i32 %87, i32 1)
  br label %89

89:                                               ; preds = %84, %74
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %92 = call i32 @SweepEvent(%struct.TYPE_29__* %90, %struct.TYPE_28__* %91)
  br label %166

93:                                               ; preds = %30
  %94 = load i32, i32* @TOLERANCE_NONZERO, align 4
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %97 = call %struct.TYPE_31__* @TopRightRegion(%struct.TYPE_31__* %96)
  store %struct.TYPE_31__* %97, %struct.TYPE_31__** %5, align 8
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %99 = call %struct.TYPE_31__* @RegionBelow(%struct.TYPE_31__* %98)
  store %struct.TYPE_31__* %99, %struct.TYPE_31__** %11, align 8
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %103, align 8
  store %struct.TYPE_30__* %104, %struct.TYPE_30__** %9, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %106, align 8
  store %struct.TYPE_30__* %107, %struct.TYPE_30__** %10, align 8
  store %struct.TYPE_30__* %107, %struct.TYPE_30__** %8, align 8
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %93
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %115 = icmp ne %struct.TYPE_30__* %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %120 = call i32 @DeleteRegion(%struct.TYPE_29__* %118, %struct.TYPE_31__* %119)
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %125 = call i32 @tessMeshDelete(i32 %123, %struct.TYPE_30__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %112
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @longjmp(i32 %130, i32 1)
  br label %132

132:                                              ; preds = %127, %112
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %134, align 8
  store %struct.TYPE_30__* %135, %struct.TYPE_30__** %9, align 8
  br label %136

136:                                              ; preds = %132, %93
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %144 = call i32 @tessMeshSplice(i32 %139, i32 %142, %struct.TYPE_30__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %136
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @longjmp(i32 %149, i32 1)
  br label %151

151:                                              ; preds = %146, %136
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %153 = call i32 @EdgeGoesLeft(%struct.TYPE_30__* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %8, align 8
  br label %156

156:                                              ; preds = %155, %151
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %160, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %164 = load i32, i32* @TRUE, align 4
  %165 = call i32 @AddRightEdges(%struct.TYPE_29__* %157, %struct.TYPE_31__* %158, %struct.TYPE_30__* %161, %struct.TYPE_30__* %162, %struct.TYPE_30__* %163, i32 %164)
  br label %166

166:                                              ; preds = %156, %89, %21
  ret void
}

declare dso_local i64 @VertEq(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SpliceMergeVertices(%struct.TYPE_29__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32* @tessMeshSplitEdge(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @tessMeshDelete(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @tessMeshSplice(i32, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @SweepEvent(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_31__* @TopRightRegion(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @RegionBelow(%struct.TYPE_31__*) #1

declare dso_local i32 @DeleteRegion(%struct.TYPE_29__*, %struct.TYPE_31__*) #1

declare dso_local i32 @EdgeGoesLeft(%struct.TYPE_30__*) #1

declare dso_local i32 @AddRightEdges(%struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
