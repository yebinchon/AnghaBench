; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotSetInfoConfigString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotSetInfoConfigString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8**, i32, i64, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@gametype = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"F \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"helping %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"accompanying %s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"defending %s\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"getting item %s\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"killing %s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"camping\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"patrolling\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"capturing flag\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"rushing base\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"returning flag\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"attacking the enemy base\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"harvesting\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"roaming %s\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"l\\%s\\c\\%s\\a\\%s\00", align 1
@CS_BOTINFO = common dso_local global i64 0, align 8
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@INVENTORY_BLUECUBE = common dso_local global i64 0, align 8
@INVENTORY_REDCUBE = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotSetInfoConfigString(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %11 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %18 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %16 to i32
  %25 = call i32 @ClientName(i64 %23, i8* %17, i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @Q_stricmp(i8* %17, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %33

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %33

33:                                               ; preds = %32, %31
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %35 = call i32 @strcpy(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i64, i64* @gametype, align 8
  %37 = load i64, i64* @GT_CTF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = call i64 @BotCTFCarryingFlag(%struct.TYPE_11__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %45 = call i32 @strcpy(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %115 [
    i32 128, label %51
    i32 129, label %59
    i32 137, label %67
    i32 135, label %76
    i32 133, label %85
    i32 139, label %94
    i32 138, label %94
    i32 132, label %97
    i32 136, label %100
    i32 130, label %103
    i32 131, label %106
    i32 140, label %109
    i32 134, label %112
  ]

51:                                               ; preds = %47
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = trunc i64 %12 to i32
  %56 = call i32 @EasyClientName(i32 %54, i8* %14, i32 %55)
  %57 = trunc i64 %19 to i32
  %58 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  br label %126

59:                                               ; preds = %47
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = trunc i64 %12 to i32
  %64 = call i32 @EasyClientName(i32 %62, i8* %14, i32 %63)
  %65 = trunc i64 %19 to i32
  %66 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %14)
  br label %126

67:                                               ; preds = %47
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = trunc i64 %12 to i32
  %73 = call i32 @trap_BotGoalName(i32 %71, i8* %14, i32 %72)
  %74 = trunc i64 %19 to i32
  %75 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %14)
  br label %126

76:                                               ; preds = %47
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = trunc i64 %12 to i32
  %82 = call i32 @trap_BotGoalName(i32 %80, i8* %14, i32 %81)
  %83 = trunc i64 %19 to i32
  %84 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %14)
  br label %126

85:                                               ; preds = %47
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %12 to i32
  %91 = call i32 @ClientName(i64 %89, i8* %14, i32 %90)
  %92 = trunc i64 %19 to i32
  %93 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %14)
  br label %126

94:                                               ; preds = %47, %47
  %95 = trunc i64 %19 to i32
  %96 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %126

97:                                               ; preds = %47
  %98 = trunc i64 %19 to i32
  %99 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %126

100:                                              ; preds = %47
  %101 = trunc i64 %19 to i32
  %102 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %126

103:                                              ; preds = %47
  %104 = trunc i64 %19 to i32
  %105 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %126

106:                                              ; preds = %47
  %107 = trunc i64 %19 to i32
  %108 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %126

109:                                              ; preds = %47
  %110 = trunc i64 %19 to i32
  %111 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %126

112:                                              ; preds = %47
  %113 = trunc i64 %19 to i32
  %114 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  br label %126

115:                                              ; preds = %47
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @trap_BotGetTopGoal(i32 %118, %struct.TYPE_12__* %10)
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = trunc i64 %12 to i32
  %123 = call i32 @trap_BotGoalName(i32 %121, i8* %14, i32 %122)
  %124 = trunc i64 %19 to i32
  %125 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %14)
  br label %126

126:                                              ; preds = %115, %112, %109, %106, %103, %100, %97, %94, %85, %76, %67, %59, %51
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %129 = call i8* @va(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %127, i8* %128, i8* %20)
  store i8* %129, i8** %9, align 8
  %130 = load i64, i64* @CS_BOTINFO, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @trap_SetConfigstring(i64 %134, i8* %135)
  %137 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %137)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ClientName(i64, i8*, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @BotCTFCarryingFlag(%struct.TYPE_11__*) #2

declare dso_local i32 @EasyClientName(i32, i8*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @trap_BotGoalName(i32, i8*, i32) #2

declare dso_local i32 @trap_BotGetTopGoal(i32, %struct.TYPE_12__*) #2

declare dso_local i8* @va(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @trap_SetConfigstring(i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
