; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_G_VoiceTo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_G_VoiceTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@SAY_TEAM = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@COLOR_CYAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vtchat\00", align 1
@SAY_TELL = common dso_local global i32 0, align 4
@COLOR_MAGENTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"vtell\00", align 1
@COLOR_GREEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"vchat\00", align 1
@g_entities = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s %d %d %d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*, i32, i8*, i32)* @G_VoiceTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @G_VoiceTo(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %74

16:                                               ; preds = %5
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %74

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %74

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SAY_TEAM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = call i32 @OnSameTeam(%struct.TYPE_10__* %33, %struct.TYPE_10__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %74

38:                                               ; preds = %32, %28
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_gametype, i32 0, i32 0), align 8
  %40 = load i64, i64* @GT_TOURNAMENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %74

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SAY_TEAM, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @COLOR_CYAN, align 4
  store i32 %48, i32* %11, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %58

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SAY_TELL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @COLOR_MAGENTA, align 4
  store i32 %54, i32* %11, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @COLOR_GREEN, align 4
  store i32 %56, i32* %11, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %57

57:                                               ; preds = %55, %53
  br label %58

58:                                               ; preds = %57, %47
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = load i32, i32* @g_entities, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %62
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @va(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %64, i32 %65, i32 %69, i32 %70, i8* %71)
  %73 = call i32 @trap_SendServerCommand(%struct.TYPE_10__* %63, i32 %72)
  br label %74

74:                                               ; preds = %58, %42, %37, %27, %21, %15
  ret void
}

declare dso_local i32 @OnSameTeam(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @trap_SendServerCommand(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @va(i8*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
