; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_SweepEvent.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_SweepEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_27__*, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_25__*)* @SweepEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SweepEvent(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  store %struct.TYPE_25__* %10, %struct.TYPE_25__** %12, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %14 = call i32 @DebugEvent(%struct.TYPE_26__* %13)
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %7, align 8
  br label %18

18:                                               ; preds = %36, %2
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %7, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %31 = icmp eq %struct.TYPE_27__* %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %35 = call i32 @ConnectLeftVertex(%struct.TYPE_26__* %33, %struct.TYPE_25__* %34)
  br label %79

36:                                               ; preds = %23
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call %struct.TYPE_28__* @TopLeftRegion(%struct.TYPE_26__* %38, i32* %41)
  store %struct.TYPE_28__* %42, %struct.TYPE_28__** %5, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = icmp eq %struct.TYPE_28__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @longjmp(i32 %48, i32 1)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = call %struct.TYPE_28__* @RegionBelow(%struct.TYPE_28__* %51)
  store %struct.TYPE_28__* %52, %struct.TYPE_28__** %6, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %54, align 8
  store %struct.TYPE_27__* %55, %struct.TYPE_27__** %8, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %58 = call %struct.TYPE_27__* @FinishLeftRegions(%struct.TYPE_26__* %56, %struct.TYPE_28__* %57, i32* null)
  store %struct.TYPE_27__* %58, %struct.TYPE_27__** %9, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %63 = icmp eq %struct.TYPE_27__* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %68 = call i32 @ConnectRightVertex(%struct.TYPE_26__* %65, %struct.TYPE_28__* %66, %struct.TYPE_27__* %67)
  br label %79

69:                                               ; preds = %50
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i32 @AddRightEdges(%struct.TYPE_26__* %70, %struct.TYPE_28__* %71, %struct.TYPE_27__* %74, %struct.TYPE_27__* %75, %struct.TYPE_27__* %76, i32 %77)
  br label %79

79:                                               ; preds = %32, %69, %64
  ret void
}

declare dso_local i32 @DebugEvent(%struct.TYPE_26__*) #1

declare dso_local i32 @ConnectLeftVertex(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_28__* @TopLeftRegion(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_28__* @RegionBelow(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_27__* @FinishLeftRegions(%struct.TYPE_26__*, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @ConnectRightVertex(%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @AddRightEdges(%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
