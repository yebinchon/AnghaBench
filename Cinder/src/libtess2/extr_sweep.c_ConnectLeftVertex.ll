; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_ConnectLeftVertex.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_ConnectLeftVertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_34__*, i32, i32 }
%struct.TYPE_33__ = type { i64, i64, %struct.TYPE_32__* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, %struct.TYPE_30__*)* @ConnectLeftVertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConnectLeftVertex(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_33__, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %4, align 8
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %11, i32 0, i32 2
  store %struct.TYPE_32__* %17, %struct.TYPE_32__** %18, align 8
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dictSearch(i32 %21, %struct.TYPE_33__* %11)
  %23 = call i64 @dictKey(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %24, %struct.TYPE_33__** %5, align 8
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %26 = call %struct.TYPE_33__* @RegionBelow(%struct.TYPE_33__* %25)
  store %struct.TYPE_33__* %26, %struct.TYPE_33__** %6, align 8
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  store %struct.TYPE_32__* %29, %struct.TYPE_32__** %8, align 8
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  store %struct.TYPE_32__* %32, %struct.TYPE_32__** %9, align 8
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @EdgeSign(i32 %35, %struct.TYPE_30__* %36, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %46 = call i32 @ConnectLeftDegenerate(%struct.TYPE_31__* %43, %struct.TYPE_33__* %44, %struct.TYPE_30__* %45)
  br label %157

47:                                               ; preds = %2
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @VertLeq(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  br label %60

58:                                               ; preds = %47
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi %struct.TYPE_33__* [ %57, %56 ], [ %59, %58 ]
  store %struct.TYPE_33__* %61, %struct.TYPE_33__** %7, align 8
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %146

71:                                               ; preds = %66, %60
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %74 = icmp eq %struct.TYPE_33__* %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %82, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %85, align 8
  %87 = call %struct.TYPE_32__* @tessMeshConnect(i32 %78, %struct.TYPE_32__* %83, %struct.TYPE_34__* %86)
  store %struct.TYPE_32__* %87, %struct.TYPE_32__** %10, align 8
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %89 = icmp eq %struct.TYPE_32__* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %75
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @longjmp(i32 %93, i32 1)
  br label %95

95:                                               ; preds = %90, %75
  br label %118

96:                                               ; preds = %71
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %101, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %104, align 8
  %106 = call %struct.TYPE_32__* @tessMeshConnect(i32 %99, %struct.TYPE_32__* %102, %struct.TYPE_34__* %105)
  store %struct.TYPE_32__* %106, %struct.TYPE_32__** %12, align 8
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %108 = icmp eq %struct.TYPE_32__* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %96
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @longjmp(i32 %112, i32 1)
  br label %114

114:                                              ; preds = %109, %96
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %116, align 8
  store %struct.TYPE_32__* %117, %struct.TYPE_32__** %10, align 8
  br label %118

118:                                              ; preds = %114, %95
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %127 = call i32 @FixUpperEdge(%struct.TYPE_31__* %124, %struct.TYPE_33__* %125, %struct.TYPE_32__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @longjmp(i32 %132, i32 1)
  br label %134

134:                                              ; preds = %129, %123
  br label %142

135:                                              ; preds = %118
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %140 = call i32 @AddRegionBelow(%struct.TYPE_31__* %137, %struct.TYPE_33__* %138, %struct.TYPE_32__* %139)
  %141 = call i32 @ComputeWinding(%struct.TYPE_31__* %136, i32 %140)
  br label %142

142:                                              ; preds = %135, %134
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %145 = call i32 @SweepEvent(%struct.TYPE_31__* %143, %struct.TYPE_30__* %144)
  br label %157

146:                                              ; preds = %66
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_34__*, %struct.TYPE_34__** %150, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %153, align 8
  %155 = load i32, i32* @TRUE, align 4
  %156 = call i32 @AddRightEdges(%struct.TYPE_31__* %147, %struct.TYPE_33__* %148, %struct.TYPE_34__* %151, %struct.TYPE_34__* %154, i32* null, i32 %155)
  br label %157

157:                                              ; preds = %42, %146, %142
  ret void
}

declare dso_local i64 @dictKey(i32) #1

declare dso_local i32 @dictSearch(i32, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_33__* @RegionBelow(%struct.TYPE_33__*) #1

declare dso_local i64 @EdgeSign(i32, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @ConnectLeftDegenerate(%struct.TYPE_31__*, %struct.TYPE_33__*, %struct.TYPE_30__*) #1

declare dso_local i64 @VertLeq(i32, i32) #1

declare dso_local %struct.TYPE_32__* @tessMeshConnect(i32, %struct.TYPE_32__*, %struct.TYPE_34__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @FixUpperEdge(%struct.TYPE_31__*, %struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @ComputeWinding(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @AddRegionBelow(%struct.TYPE_31__*, %struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @SweepEvent(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @AddRightEdges(%struct.TYPE_31__*, %struct.TYPE_33__*, %struct.TYPE_34__*, %struct.TYPE_34__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
