; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_serverinfo.c_Favorites_Add.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_serverinfo.c_Favorites_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"cl_currentServerAddress\00", align 1
@MAX_FAVORITESERVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"server%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Favorites_Add() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %6 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %5, i32 128)
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %8 = load i8, i8* %7, align 16
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %55

11:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %44, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %21 = call i32 @trap_Cvar_VariableStringBuffer(i8* %19, i8* %20, i32 128)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %24 = call i32 @Q_stricmp(i8* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %55

27:                                               ; preds = %16
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = sext i8 %29 to i32
  %31 = icmp slt i32 %30, 48
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp sgt i32 %35, 57
  br i1 %36, label %37, label %43

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %37, %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %12

47:                                               ; preds = %12
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = call i8* @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %54 = call i32 @trap_Cvar_Set(i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %10, %26, %50, %47
  ret void
}

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
