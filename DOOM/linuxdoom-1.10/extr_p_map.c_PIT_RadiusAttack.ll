; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PIT_RadiusAttack.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PIT_RadiusAttack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64 }

@MF_SHOOTABLE = common dso_local global i32 0, align 4
@MT_CYBORG = common dso_local global i64 0, align 8
@MT_SPIDER = common dso_local global i64 0, align 8
@bombspot = common dso_local global %struct.TYPE_9__* null, align 8
@FRACBITS = common dso_local global i64 0, align 8
@bombdamage = common dso_local global i64 0, align 8
@bombsource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PIT_RadiusAttack(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MF_SHOOTABLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %82

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MT_CYBORG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MT_SPIDER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  store i32 1, i32* %2, align 4
  br label %82

27:                                               ; preds = %20
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bombspot, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i64 @abs(i64 %34)
  store i64 %35, i64* %4, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bombspot, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i64 @abs(i64 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  %48 = load i64, i64* %4, align 8
  br label %51

49:                                               ; preds = %27
  %50 = load i64, i64* %5, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load i64, i64* @FRACBITS, align 8
  %59 = ashr i64 %57, %58
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i64 0, i64* %6, align 8
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @bombdamage, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %82

68:                                               ; preds = %63
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bombspot, align 8
  %71 = call i64 @P_CheckSight(%struct.TYPE_8__* %69, %struct.TYPE_9__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bombspot, align 8
  %76 = load i32, i32* @bombsource, align 4
  %77 = load i64, i64* @bombdamage, align 8
  %78 = load i64, i64* %6, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call i32 @P_DamageMobj(%struct.TYPE_8__* %74, %struct.TYPE_9__* %75, i32 %76, i64 %79)
  br label %81

81:                                               ; preds = %73, %68
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %67, %26, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @P_CheckSight(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @P_DamageMobj(%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
