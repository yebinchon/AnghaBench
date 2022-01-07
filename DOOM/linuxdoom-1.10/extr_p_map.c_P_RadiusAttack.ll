; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_RadiusAttack.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_RadiusAttack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@MAXRADIUS = common dso_local global i32 0, align 4
@FRACBITS = common dso_local global i32 0, align 4
@bmaporgy = common dso_local global i32 0, align 4
@MAPBLOCKSHIFT = common dso_local global i32 0, align 4
@bmaporgx = common dso_local global i32 0, align 4
@bombspot = common dso_local global %struct.TYPE_6__* null, align 8
@bombsource = common dso_local global %struct.TYPE_6__* null, align 8
@bombdamage = common dso_local global i32 0, align 4
@PIT_RadiusAttack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_RadiusAttack(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MAXRADIUS, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @FRACBITS, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @bmaporgy, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* @bmaporgy, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* @bmaporgx, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* @bmaporgx, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** @bombspot, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** @bombsource, align 8
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* @bombdamage, align 4
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %78, %3
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %74, %63
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PIT_RadiusAttack, align 4
  %73 = call i32 @P_BlockThingsIterator(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %65

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %59

81:                                               ; preds = %59
  ret void
}

declare dso_local i32 @P_BlockThingsIterator(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
