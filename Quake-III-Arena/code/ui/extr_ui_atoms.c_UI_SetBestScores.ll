; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_atoms.c_UI_SetBestScores.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_atoms.c_UI_SetBestScores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"ui_scoreAccuracy\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%i%%\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ui_scoreImpressives\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ui_scoreExcellents\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ui_scoreDefends\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ui_scoreAssists\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"ui_scoreGauntlets\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ui_scoreScore\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"ui_scorePerfect\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"ui_scoreTeam\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%i to %i\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"ui_scoreBase\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"ui_scoreTimeBonus\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"ui_scoreSkillBonus\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"ui_scoreShutoutBonus\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ui_scoreTime\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%02i:%02i\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"ui_scoreCaptures\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"ui_scoreAccuracy2\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"ui_scoreImpressives2\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"ui_scoreExcellents2\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"ui_scoreDefends2\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"ui_scoreAssists2\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"ui_scoreGauntlets2\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"ui_scoreScore2\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"ui_scorePerfect2\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"ui_scoreTeam2\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"ui_scoreBase2\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"ui_scoreTimeBonus2\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"ui_scoreSkillBonus2\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"ui_scoreShutoutBonus2\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"ui_scoreTime2\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"ui_scoreCaptures2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_SetBestScores(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 15
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 14
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %14 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %47, i32 %50)
  %52 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 60
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = srem i32 %79, 60
  %81 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %76, i32 %80)
  %82 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %86)
  %88 = load i64, i64* %4, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %174

90:                                               ; preds = %2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 14
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 13
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %129)
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %133, i32 %136)
  %138 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %137)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %142)
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 %147)
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i32 %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, 60
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = srem i32 %165, 60
  %167 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %162, i32 %166)
  %168 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i32 %167)
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %90, %2
  ret void
}

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i32 @va(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
