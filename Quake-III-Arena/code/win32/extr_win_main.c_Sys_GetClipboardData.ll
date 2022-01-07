; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_main.c_Sys_GetClipboardData.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_main.c_Sys_GetClipboardData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CF_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0A\0D\08\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Sys_GetClipboardData() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  %4 = call i64 @OpenClipboard(i32* null)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %0
  %7 = load i32, i32* @CF_TEXT, align 4
  %8 = call i32 @GetClipboardData(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @GlobalLock(i32 %11)
  store i8* %12, i8** %2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @GlobalSize(i32 %15)
  %17 = add nsw i64 %16, 1
  %18 = call i8* @Z_Malloc(i64 %17)
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @GlobalSize(i32 %21)
  %23 = call i32 @Q_strncpyz(i8* %19, i8* %20, i64 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @GlobalUnlock(i32 %24)
  %26 = load i8*, i8** %1, align 8
  %27 = call i32 @strtok(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %14, %10
  br label %29

29:                                               ; preds = %28, %6
  %30 = call i32 (...) @CloseClipboard()
  br label %31

31:                                               ; preds = %29, %0
  %32 = load i8*, i8** %1, align 8
  ret i8* %32
}

declare dso_local i64 @OpenClipboard(i32*) #1

declare dso_local i32 @GetClipboardData(i32) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i8* @Z_Malloc(i64) #1

declare dso_local i64 @GlobalSize(i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i64) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
