; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_combat.c_CheckAlmostScored.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_combat.c_CheckAlmostScored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32*, i32, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@TEAM_BLUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"team_redobelisk\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"team_blueobelisk\00", align 1
@PLAYEREVENT_HOLYSHIT = common dso_local global i32 0, align 4
@PERS_PLAYEREVENTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckAlmostScored(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %80

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TEAM_BLUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %26

25:                                               ; preds = %15
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @FOFS(i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.TYPE_13__* @G_Find(i32* null, i32 %28, i8* %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %5, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %79

33:                                               ; preds = %26
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @VectorSubtract(i32 %39, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @VectorLength(i32 %46)
  %48 = icmp slt i32 %47, 200
  br i1 %48, label %49, label %78

49:                                               ; preds = %33
  %50 = load i32, i32* @PLAYEREVENT_HOLYSHIT, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, %50
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %49
  %66 = load i32, i32* @PLAYEREVENT_HOLYSHIT, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, %66
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %65, %49
  br label %78

78:                                               ; preds = %77, %33
  br label %79

79:                                               ; preds = %78, %26
  br label %80

80:                                               ; preds = %79, %2
  ret void
}

declare dso_local %struct.TYPE_13__* @G_Find(i32*, i32, i8*) #1

declare dso_local i32 @FOFS(i8*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorLength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
