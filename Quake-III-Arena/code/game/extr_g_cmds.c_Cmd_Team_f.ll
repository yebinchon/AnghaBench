; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_Team_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_Team_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@g_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"print \22Blue team\0A\22\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"print \22Red team\0A\22\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"print \22Free team\0A\22\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"print \22Spectator team\0A\22\00", align 1
@level = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [60 x i8] c"print \22May not switch teams more than once per 5 seconds.\0A\22\00", align 1
@g_gametype = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Team_f(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = call i32 (...) @trap_Argc()
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %49 [
    i32 131, label %21
    i32 129, label %28
    i32 130, label %35
    i32 128, label %42
  ]

21:                                               ; preds = %13
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = load i32, i32* @g_entities, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %25
  %27 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %49

28:                                               ; preds = %13
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = load i32, i32* @g_entities, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %32
  %34 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %49

35:                                               ; preds = %13
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = load i32, i32* @g_entities, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %39
  %41 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %49

42:                                               ; preds = %13
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = load i32, i32* @g_entities, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %46
  %48 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %13, %42, %35, %28, %21
  store i32 1, i32* %6, align 4
  br label %96

50:                                               ; preds = %1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = load i32, i32* @g_entities, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %62
  %64 = call i32 @trap_SendServerCommand(%struct.TYPE_11__* %63, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %96

65:                                               ; preds = %50
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_gametype, i32 0, i32 0), align 8
  %67 = load i64, i64* @GT_TOURNAMENT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 130
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %77, %69, %65
  %86 = trunc i64 %8 to i32
  %87 = call i32 @trap_Argv(i32 1, i8* %10, i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = call i32 @SetTeam(%struct.TYPE_11__* %88, i8* %10)
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 8
  %91 = add nsw i64 %90, 5000
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %85, %58, %49
  %97 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %6, align 4
  switch i32 %98, label %100 [
    i32 0, label %99
    i32 1, label %99
  ]

99:                                               ; preds = %96, %96
  ret void

100:                                              ; preds = %96
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @trap_SendServerCommand(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @SetTeam(%struct.TYPE_11__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
