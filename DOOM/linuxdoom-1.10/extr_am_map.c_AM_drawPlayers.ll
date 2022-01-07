; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_drawPlayers.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_drawPlayers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@AM_drawPlayers.their_colors = internal global [4 x i32] [i32 129, i32 130, i32 131, i32 128], align 16
@netgame = common dso_local global i32 0, align 4
@cheating = common dso_local global i64 0, align 8
@cheat_player_arrow = common dso_local global i32 0, align 4
@NUMCHEATPLYRLINES = common dso_local global i32 0, align 4
@plr = common dso_local global %struct.TYPE_6__* null, align 8
@WHITE = common dso_local global i32 0, align 4
@player_arrow = common dso_local global i32 0, align 4
@NUMPLYRLINES = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_6__* null, align 8
@deathmatch = common dso_local global i64 0, align 8
@singledemo = common dso_local global i32 0, align 4
@playeringame = common dso_local global i32* null, align 8
@pw_invisibility = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_drawPlayers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 -1, i32* %3, align 4
  %5 = load i32, i32* @netgame, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @cheating, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load i32, i32* @cheat_player_arrow, align 4
  %12 = load i32, i32* @NUMCHEATPLYRLINES, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plr, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WHITE, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plr, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plr, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AM_drawLineCharacter(i32 %11, i32 %12, i32 0, i32 %17, i32 %18, i32 %23, i32 %28)
  br label %50

30:                                               ; preds = %7
  %31 = load i32, i32* @player_arrow, align 4
  %32 = load i32, i32* @NUMPLYRLINES, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plr, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WHITE, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plr, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plr, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @AM_drawLineCharacter(i32 %31, i32 %32, i32 0, i32 %37, i32 %38, i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %30, %10
  br label %118

51:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %115, %51
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @MAXPLAYERS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %118

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @players, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %2, align 8
  %63 = load i64, i64* @deathmatch, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load i32, i32* @singledemo, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plr, align 8
  %71 = icmp ne %struct.TYPE_6__* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %115

73:                                               ; preds = %68, %65, %56
  %74 = load i32*, i32** @playeringame, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %115

81:                                               ; preds = %73
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @pw_invisibility, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 246, i32* %4, align 4
  br label %95

90:                                               ; preds = %81
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* @AM_drawPlayers.their_colors, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %89
  %96 = load i32, i32* @player_arrow, align 4
  %97 = load i32, i32* @NUMPLYRLINES, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @AM_drawLineCharacter(i32 %96, i32 %97, i32 0, i32 %102, i32 %103, i32 %108, i32 %113)
  br label %115

115:                                              ; preds = %95, %80, %72
  %116 = load i32, i32* %1, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %1, align 4
  br label %52

118:                                              ; preds = %50, %52
  ret void
}

declare dso_local i32 @AM_drawLineCharacter(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
