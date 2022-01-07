; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_svcmds.c_Svcmd_RemoveIP_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_svcmds.c_Svcmd_RemoveIP_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Usage:  sv removeip <ip-mask>\0A\00", align 1
@numIPFilters = common dso_local global i32 0, align 4
@ipFilters = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Removed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Didn't find %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Svcmd_RemoveIP_f() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32 (...) @trap_Argc()
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %59

14:                                               ; preds = %0
  %15 = trunc i64 %7 to i32
  %16 = call i32 @trap_Argv(i32 1, i8* %9, i32 %15)
  %17 = call i32 @StringToFilter(i8* %9, %struct.TYPE_4__* %1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %59

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %54, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @numIPFilters, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ipFilters, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ipFilters, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ipFilters, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 8
  %51 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 (...) @UpdateIPBans()
  store i32 1, i32* %5, align 4
  br label %59

53:                                               ; preds = %35, %25
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %21

57:                                               ; preds = %21
  %58 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %9)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %45, %19, %12
  %60 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %5, align 4
  switch i32 %61, label %63 [
    i32 0, label %62
    i32 1, label %62
  ]

62:                                               ; preds = %59, %59
  ret void

63:                                               ; preds = %59
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @G_Printf(i8*, ...) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @StringToFilter(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @UpdateIPBans(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
