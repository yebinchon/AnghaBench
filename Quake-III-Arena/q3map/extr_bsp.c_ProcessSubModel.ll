; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_ProcessSubModel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_ProcessSubModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_26__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_26__*, i32 }

@entities = common dso_local global %struct.TYPE_25__* null, align 8
@entity_num = common dso_local global i64 0, align 8
@numMapDrawSurfs = common dso_local global i32 0, align 4
@PLANENUM_LEAF = common dso_local global i32 0, align 4
@nosubdivide = common dso_local global i32 0, align 4
@nomerge = common dso_local global i32 0, align 4
@notjunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessSubModel() #0 {
  %1 = alloca %struct.TYPE_25__*, align 8
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = call i32 (...) @BeginModel()
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** @entities, align 8
  %8 = load i64, i64* @entity_num, align 8
  %9 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i64 %8
  store %struct.TYPE_25__* %9, %struct.TYPE_25__** %1, align 8
  %10 = load i32, i32* @numMapDrawSurfs, align 4
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  %14 = call i32 @PatchMapDrawSurfs(%struct.TYPE_25__* %13)
  %15 = call %struct.TYPE_24__* (...) @AllocNode()
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %5, align 8
  %16 = load i32, i32* @PLANENUM_LEAF, align 4
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %3, align 8
  br label %22

22:                                               ; preds = %36, %0
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = icmp ne %struct.TYPE_26__* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %27 = call %struct.TYPE_26__* @CopyBrush(%struct.TYPE_26__* %26)
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %4, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  store %struct.TYPE_26__* %30, %struct.TYPE_26__** %32, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  store %struct.TYPE_26__* %33, %struct.TYPE_26__** %35, align 8
  br label %36

36:                                               ; preds = %25
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %38, align 8
  store %struct.TYPE_26__* %39, %struct.TYPE_26__** %3, align 8
  br label %22

40:                                               ; preds = %22
  %41 = call %struct.TYPE_23__* (...) @AllocTree()
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %2, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %44, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %47 = call i32 @ClipSidesIntoTree(%struct.TYPE_25__* %45, %struct.TYPE_23__* %46)
  %48 = load i32, i32* @nosubdivide, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %53 = call i32 @SubdivideDrawSurfs(%struct.TYPE_25__* %51, %struct.TYPE_23__* %52)
  br label %54

54:                                               ; preds = %50, %40
  %55 = load i32, i32* @nomerge, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %60 = call i32 @MergeSides(%struct.TYPE_25__* %58, %struct.TYPE_23__* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* @notjunc, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  %66 = call i32 @FixTJunctions(%struct.TYPE_25__* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  %69 = call i32 @AllocateLightmaps(%struct.TYPE_25__* %68)
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %72 = call i32 @FilterDrawsurfsIntoTree(%struct.TYPE_25__* %70, %struct.TYPE_23__* %71)
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %74 = call i32 @EndModel(%struct.TYPE_24__* %73)
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %76 = call i32 @FreeTree(%struct.TYPE_23__* %75)
  ret void
}

declare dso_local i32 @BeginModel(...) #1

declare dso_local i32 @PatchMapDrawSurfs(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @AllocNode(...) #1

declare dso_local %struct.TYPE_26__* @CopyBrush(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_23__* @AllocTree(...) #1

declare dso_local i32 @ClipSidesIntoTree(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @SubdivideDrawSurfs(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @MergeSides(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @FixTJunctions(%struct.TYPE_25__*) #1

declare dso_local i32 @AllocateLightmaps(%struct.TYPE_25__*) #1

declare dso_local i32 @FilterDrawsurfsIntoTree(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @EndModel(%struct.TYPE_24__*) #1

declare dso_local i32 @FreeTree(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
