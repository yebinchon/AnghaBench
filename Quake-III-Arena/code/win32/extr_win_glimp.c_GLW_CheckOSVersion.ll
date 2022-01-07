; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_CheckOSVersion.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_CheckOSVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 (i32, i8*)* }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }

@qfalse = common dso_local global i8* null, align 8
@glw_state = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@VER_PLATFORM_WIN32_WINDOWS = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"GLW_CheckOSVersion() - GetVersionEx failed\0A\00", align 1
@OSR2_BUILD_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @GLW_CheckOSVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GLW_CheckOSVersion() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 24, i32* %3, align 8
  %4 = load i8*, i8** @qfalse, align 8
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glw_state, i32 0, i32 0), align 8
  %5 = call i64 @GetVersionEx(%struct.TYPE_5__* %2)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i8*, i8** @qtrue, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glw_state, i32 0, i32 0), align 8
  br label %40

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VER_PLATFORM_WIN32_NT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** @qtrue, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glw_state, i32 0, i32 0), align 8
  br label %38

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VER_PLATFORM_WIN32_WINDOWS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @LOWORD(i32 %31)
  %33 = icmp sge i64 %32, 1111
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** @qtrue, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glw_state, i32 0, i32 0), align 8
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %38, %13
  br label %40

40:                                               ; preds = %39, %11
  br label %46

41:                                               ; preds = %0
  %42 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %43 = load i32, i32* @PRINT_ALL, align 4
  %44 = call i32 %42(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %45 = load i8*, i8** @qfalse, align 8
  store i8* %45, i8** %1, align 8
  br label %48

46:                                               ; preds = %40
  %47 = load i8*, i8** @qtrue, align 8
  store i8* %47, i8** %1, align 8
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i8*, i8** %1, align 8
  ret i8* %49
}

declare dso_local i64 @GetVersionEx(%struct.TYPE_5__*) #1

declare dso_local i64 @LOWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
