; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_main.c_AAS_Setup.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_main.c_AAS_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32* }

@.str = private unnamed_addr constant [11 x i8] c"maxclients\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"128\00", align 1
@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"maxentities\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"saveroutingcache\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@saveroutingcache = common dso_local global i32 0, align 4
@BLERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_Setup() #0 {
  %1 = call i64 @LibVarValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %3 = call i64 @LibVarValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 4
  %5 = call i32 @LibVar(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %5, i32* @saveroutingcache, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 3), align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 3), align 8
  %10 = call i32 @FreeMemory(i32* %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i64 @GetClearedHunkMemory(i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 3), align 8
  %18 = call i32 (...) @AAS_InvalidateEntities()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 2), align 8
  %19 = load i32, i32* @BLERR_NOERROR, align 4
  ret i32 %19
}

declare dso_local i64 @LibVarValue(i8*, i8*) #1

declare dso_local i32 @LibVar(i8*, i8*) #1

declare dso_local i32 @FreeMemory(i32*) #1

declare dso_local i64 @GetClearedHunkMemory(i32) #1

declare dso_local i32 @AAS_InvalidateEntities(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
