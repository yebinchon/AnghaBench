; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_CLUI_GetCDKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_CLUI_GetCDKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@.str = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@cl_cdkey = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @CLUI_GetCDKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CLUI_GetCDKey(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CVAR_INIT, align 4
  %7 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.TYPE_3__* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = call i64 (...) @UI_usesUniqueCDKey()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i8*, i8** %3, align 8
  %24 = load i32*, i32** @cl_cdkey, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 16
  %26 = call i32 @Com_Memcpy(i8* %23, i32* %25, i32 16)
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 16
  store i8 0, i8* %28, align 1
  br label %35

29:                                               ; preds = %15, %12, %2
  %30 = load i8*, i8** %3, align 8
  %31 = load i32*, i32** @cl_cdkey, align 8
  %32 = call i32 @Com_Memcpy(i8* %30, i32* %31, i32 16)
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 16
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %29, %22
  ret void
}

declare dso_local %struct.TYPE_3__* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i64 @UI_usesUniqueCDKey(...) #1

declare dso_local i32 @Com_Memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
