; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_WriteConfiguration.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_WriteConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@com_fullyInitialized = common dso_local global i32 0, align 4
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"q3config.cfg\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@cl_cdkey = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"baseq3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_WriteConfiguration() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @com_fullyInitialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %44

5:                                                ; preds = %0
  %6 = load i32, i32* @cvar_modifiedFlags, align 4
  %7 = load i32, i32* @CVAR_ARCHIVE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %44

11:                                               ; preds = %5
  %12 = load i32, i32* @CVAR_ARCHIVE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @cvar_modifiedFlags, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @cvar_modifiedFlags, align 4
  %16 = call i32 @Com_WriteConfigToFile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @CVAR_INIT, align 4
  %18 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.TYPE_3__* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %1, align 8
  %21 = call i64 (...) @UI_usesUniqueCDKey()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %11
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = bitcast i64* %36 to i8*
  %38 = load i32*, i32** @cl_cdkey, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 16
  %40 = call i32 @Com_WriteCDKey(i8* %37, i32* %39)
  br label %44

41:                                               ; preds = %26, %23, %11
  %42 = load i32*, i32** @cl_cdkey, align 8
  %43 = call i32 @Com_WriteCDKey(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %42)
  br label %44

44:                                               ; preds = %4, %10, %41, %33
  ret void
}

declare dso_local i32 @Com_WriteConfigToFile(i8*) #1

declare dso_local %struct.TYPE_3__* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i64 @UI_usesUniqueCDKey(...) #1

declare dso_local i32 @Com_WriteCDKey(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
