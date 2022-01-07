; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_P_LookForPlayers.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_P_LookForPlayers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_11__*, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@playeringame = common dso_local global i32* null, align 8
@players = common dso_local global %struct.TYPE_9__* null, align 8
@ANG90 = common dso_local global i64 0, align 8
@ANG270 = common dso_local global i64 0, align 8
@MELEERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_LookForPlayers(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %20, 3
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %127, %2
  %23 = load i32*, i32** @playeringame, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %127

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = icmp eq i32 %33, 2
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %32
  store i32 0, i32* %3, align 4
  br label %135

43:                                               ; preds = %36
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @players, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %48
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %8, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %127

55:                                               ; preds = %43
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = call i32 @P_CheckSight(%struct.TYPE_10__* %56, %struct.TYPE_11__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %127

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %121, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @R_PointToAngle2(i64 %69, i64 %72, i64 %77, i64 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @ANG90, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %66
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @ANG270, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = call i64 @P_AproxDistance(i64 %104, i64 %113)
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* @MELEERANGE, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %95
  br label %127

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %119, %91, %66
  br label %121

121:                                              ; preds = %120, %63
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %126, align 8
  store i32 1, i32* %3, align 4
  br label %135

127:                                              ; preds = %118, %62, %54, %31
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  %132 = and i32 %131, 3
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %22

135:                                              ; preds = %121, %42
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @P_CheckSight(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i64 @R_PointToAngle2(i64, i64, i64, i64) #1

declare dso_local i64 @P_AproxDistance(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
