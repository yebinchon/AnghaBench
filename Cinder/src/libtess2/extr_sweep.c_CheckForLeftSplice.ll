; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_CheckForLeftSplice.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_CheckForLeftSplice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)* @CheckForLeftSplice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForLeftSplice(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %11 = call %struct.TYPE_21__* @RegionBelow(%struct.TYPE_21__* %10)
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %6, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %8, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @VertEq(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @VertLeq(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %2
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @EdgeSign(i32 %40, i32 %43, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %152

51:                                               ; preds = %37
  %52 = load i32, i32* @TRUE, align 4
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = call %struct.TYPE_16__* @RegionAbove(%struct.TYPE_21__* %55)
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %62 = call %struct.TYPE_20__* @tessMeshSplitEdge(i32 %60, %struct.TYPE_20__* %61)
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %9, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %64 = icmp eq %struct.TYPE_20__* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @longjmp(i32 %68, i32 1)
  br label %70

70:                                               ; preds = %65, %51
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %78 = call i32 @tessMeshSplice(i32 %73, %struct.TYPE_20__* %76, %struct.TYPE_20__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @longjmp(i32 %83, i32 1)
  br label %85

85:                                               ; preds = %80, %70
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  br label %150

93:                                               ; preds = %2
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @EdgeSign(i32 %96, i32 %99, i32 %102)
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %3, align 4
  br label %152

107:                                              ; preds = %93
  %108 = load i32, i32* @TRUE, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %117 = call %struct.TYPE_20__* @tessMeshSplitEdge(i32 %115, %struct.TYPE_20__* %116)
  store %struct.TYPE_20__* %117, %struct.TYPE_20__** %9, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %119 = icmp eq %struct.TYPE_20__* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %107
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @longjmp(i32 %123, i32 1)
  br label %125

125:                                              ; preds = %120, %107
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = call i32 @tessMeshSplice(i32 %128, %struct.TYPE_20__* %131, %struct.TYPE_20__* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %125
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @longjmp(i32 %140, i32 1)
  br label %142

142:                                              ; preds = %137, %125
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %142, %85
  %151 = load i32, i32* @TRUE, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %105, %49
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_21__* @RegionBelow(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VertEq(i32, i32) #1

declare dso_local i64 @VertLeq(i32, i32) #1

declare dso_local i64 @EdgeSign(i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @RegionAbove(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @tessMeshSplitEdge(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @tessMeshSplice(i32, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
