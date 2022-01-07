; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_Init.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"\0AR_InitData\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\0AR_InitPointToAngle\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0AR_InitTables\00", align 1
@screenblocks = common dso_local global i32 0, align 4
@detailLevel = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"\0AR_InitPlanes\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0AR_InitLightTables\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\0AR_InitSkyMap\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\0AR_InitTranslationsTables\00", align 1
@framecount = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_Init() #0 {
  %1 = call i32 (...) @R_InitData()
  %2 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @R_InitPointToAngle()
  %4 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (...) @R_InitTables()
  %6 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @screenblocks, align 4
  %8 = load i32, i32* @detailLevel, align 4
  %9 = call i32 @R_SetViewSize(i32 %7, i32 %8)
  %10 = call i32 (...) @R_InitPlanes()
  %11 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 (...) @R_InitLightTables()
  %13 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 (...) @R_InitSkyMap()
  %15 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 (...) @R_InitTranslationTables()
  %17 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* @framecount, align 8
  ret void
}

declare dso_local i32 @R_InitData(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @R_InitPointToAngle(...) #1

declare dso_local i32 @R_InitTables(...) #1

declare dso_local i32 @R_SetViewSize(i32, i32) #1

declare dso_local i32 @R_InitPlanes(...) #1

declare dso_local i32 @R_InitLightTables(...) #1

declare dso_local i32 @R_InitSkyMap(...) #1

declare dso_local i32 @R_InitTranslationTables(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
