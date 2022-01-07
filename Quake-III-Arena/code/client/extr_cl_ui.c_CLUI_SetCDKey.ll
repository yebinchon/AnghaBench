; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_CLUI_SetCDKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_CLUI_SetCDKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@.str = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@cl_cdkey = common dso_local global i64* null, align 8
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @CLUI_SetCDKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CLUI_SetCDKey(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @CVAR_INIT, align 4
  %5 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %6 = or i32 %4, %5
  %7 = call %struct.TYPE_3__* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = call i64 (...) @UI_usesUniqueCDKey()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load i64*, i64** @cl_cdkey, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 16
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @Com_Memcpy(i64* %22, i8* %23, i32 16)
  %25 = load i64*, i64** @cl_cdkey, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 32
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @CVAR_ARCHIVE, align 4
  %28 = load i32, i32* @cvar_modifiedFlags, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @cvar_modifiedFlags, align 4
  br label %37

30:                                               ; preds = %13, %10, %1
  %31 = load i64*, i64** @cl_cdkey, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @Com_Memcpy(i64* %31, i8* %32, i32 16)
  %34 = load i32, i32* @CVAR_ARCHIVE, align 4
  %35 = load i32, i32* @cvar_modifiedFlags, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @cvar_modifiedFlags, align 4
  br label %37

37:                                               ; preds = %30, %20
  ret void
}

declare dso_local %struct.TYPE_3__* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i64 @UI_usesUniqueCDKey(...) #1

declare dso_local i32 @Com_Memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
