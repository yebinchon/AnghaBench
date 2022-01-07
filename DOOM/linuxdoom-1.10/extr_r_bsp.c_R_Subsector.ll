; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_bsp.c_R_Subsector.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_bsp.c_R_Subsector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32 }

@sscount = common dso_local global i32 0, align 4
@subsectors = common dso_local global %struct.TYPE_5__* null, align 8
@frontsector = common dso_local global %struct.TYPE_6__* null, align 8
@segs = common dso_local global i32* null, align 8
@viewz = common dso_local global i64 0, align 8
@floorplane = common dso_local global i32* null, align 8
@skyflatnum = common dso_local global i64 0, align 8
@ceilingplane = common dso_local global i32* null, align 8
@numsubsectors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_Subsector(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @sscount, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @sscount, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @subsectors, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %10
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** @frontsector, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  %18 = load i32*, i32** @segs, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32* %22, i32** %4, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @viewz, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @R_FindPlane(i64 %31, i64 %34, i32 %37)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @floorplane, align 8
  br label %41

40:                                               ; preds = %1
  store i32* null, i32** @floorplane, align 8
  br label %41

41:                                               ; preds = %40, %28
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @viewz, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @skyflatnum, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @R_FindPlane(i64 %56, i64 %59, i32 %62)
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** @ceilingplane, align 8
  br label %66

65:                                               ; preds = %47
  store i32* null, i32** @ceilingplane, align 8
  br label %66

66:                                               ; preds = %65, %53
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frontsector, align 8
  %68 = call i32 @R_AddSprites(%struct.TYPE_6__* %67)
  br label %69

69:                                               ; preds = %73, %66
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %3, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @R_AddLine(i32* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %4, align 8
  br label %69

78:                                               ; preds = %69
  ret void
}

declare dso_local i8* @R_FindPlane(i64, i64, i32) #1

declare dso_local i32 @R_AddSprites(%struct.TYPE_6__*) #1

declare dso_local i32 @R_AddLine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
