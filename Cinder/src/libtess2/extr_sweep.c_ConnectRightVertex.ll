; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_ConnectRightVertex.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_ConnectRightVertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64, %struct.TYPE_32__*, %struct.TYPE_34__*, i32, %struct.TYPE_34__*, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*, %struct.TYPE_35__*, %struct.TYPE_34__*)* @ConnectRightVertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConnectRightVertex(%struct.TYPE_33__* %0, %struct.TYPE_35__* %1, %struct.TYPE_34__* %2) #0 {
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %6, align 8
  %13 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  store %struct.TYPE_34__* %15, %struct.TYPE_34__** %8, align 8
  %16 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %17 = call %struct.TYPE_35__* @RegionBelow(%struct.TYPE_35__* %16)
  store %struct.TYPE_35__* %17, %struct.TYPE_35__** %9, align 8
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  store %struct.TYPE_34__* %20, %struct.TYPE_34__** %10, align 8
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  store %struct.TYPE_34__* %23, %struct.TYPE_34__** %11, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %36 = call i32 @CheckForIntersect(%struct.TYPE_33__* %34, %struct.TYPE_35__* %35)
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @VertEq(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %37
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %51, align 8
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %54 = call i32 @tessMeshSplice(i32 %49, %struct.TYPE_34__* %52, %struct.TYPE_34__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %46
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @longjmp(i32 %59, i32 1)
  br label %61

61:                                               ; preds = %56, %46
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %64 = call %struct.TYPE_35__* @TopLeftRegion(%struct.TYPE_33__* %62, %struct.TYPE_35__* %63)
  store %struct.TYPE_35__* %64, %struct.TYPE_35__** %5, align 8
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %66 = icmp eq %struct.TYPE_35__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @longjmp(i32 %70, i32 1)
  br label %72

72:                                               ; preds = %67, %61
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %74 = call %struct.TYPE_35__* @RegionBelow(%struct.TYPE_35__* %73)
  %75 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %75, align 8
  store %struct.TYPE_34__* %76, %struct.TYPE_34__** %8, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %79 = call %struct.TYPE_35__* @RegionBelow(%struct.TYPE_35__* %78)
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %81 = call %struct.TYPE_34__* @FinishLeftRegions(%struct.TYPE_33__* %77, %struct.TYPE_35__* %79, %struct.TYPE_35__* %80)
  %82 = load i8*, i8** @TRUE, align 8
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %72, %37
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @VertEq(i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %84
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %99, align 8
  %101 = call i32 @tessMeshSplice(i32 %96, %struct.TYPE_34__* %97, %struct.TYPE_34__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %93
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @longjmp(i32 %106, i32 1)
  br label %108

108:                                              ; preds = %103, %93
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %110 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %111 = call %struct.TYPE_34__* @FinishLeftRegions(%struct.TYPE_33__* %109, %struct.TYPE_35__* %110, %struct.TYPE_35__* null)
  store %struct.TYPE_34__* %111, %struct.TYPE_34__** %6, align 8
  %112 = load i8*, i8** @TRUE, align 8
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %108, %84
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %121, align 8
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %125 = load i8*, i8** @TRUE, align 8
  %126 = call i32 @AddRightEdges(%struct.TYPE_33__* %118, %struct.TYPE_35__* %119, %struct.TYPE_34__* %122, %struct.TYPE_34__* %123, %struct.TYPE_34__* %124, i8* %125)
  br label %180

127:                                              ; preds = %114
  %128 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @VertLeq(i32 %130, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %138, align 8
  store %struct.TYPE_34__* %139, %struct.TYPE_34__** %7, align 8
  br label %142

140:                                              ; preds = %127
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  store %struct.TYPE_34__* %141, %struct.TYPE_34__** %7, align 8
  br label %142

142:                                              ; preds = %140, %136
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %150 = call %struct.TYPE_34__* @tessMeshConnect(i32 %145, i32 %148, %struct.TYPE_34__* %149)
  store %struct.TYPE_34__* %150, %struct.TYPE_34__** %7, align 8
  %151 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %152 = icmp eq %struct.TYPE_34__* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %142
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @longjmp(i32 %156, i32 1)
  br label %158

158:                                              ; preds = %153, %142
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %160 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %163, align 8
  %165 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %166, align 8
  %168 = load i8*, i8** @FALSE, align 8
  %169 = call i32 @AddRightEdges(%struct.TYPE_33__* %159, %struct.TYPE_35__* %160, %struct.TYPE_34__* %161, %struct.TYPE_34__* %164, %struct.TYPE_34__* %167, i8* %168)
  %170 = load i8*, i8** @TRUE, align 8
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 0
  store i8* %170, i8** %176, align 8
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %179 = call i32 @WalkDirtyRegions(%struct.TYPE_33__* %177, %struct.TYPE_35__* %178)
  br label %180

180:                                              ; preds = %158, %117
  ret void
}

declare dso_local %struct.TYPE_35__* @RegionBelow(%struct.TYPE_35__*) #1

declare dso_local i32 @CheckForIntersect(%struct.TYPE_33__*, %struct.TYPE_35__*) #1

declare dso_local i64 @VertEq(i32, i32) #1

declare dso_local i32 @tessMeshSplice(i32, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_35__* @TopLeftRegion(%struct.TYPE_33__*, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_34__* @FinishLeftRegions(%struct.TYPE_33__*, %struct.TYPE_35__*, %struct.TYPE_35__*) #1

declare dso_local i32 @AddRightEdges(%struct.TYPE_33__*, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*, i8*) #1

declare dso_local i64 @VertLeq(i32, i32) #1

declare dso_local %struct.TYPE_34__* @tessMeshConnect(i32, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @WalkDirtyRegions(%struct.TYPE_33__*, %struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
