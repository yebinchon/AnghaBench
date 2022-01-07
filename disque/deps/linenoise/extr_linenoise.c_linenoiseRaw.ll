; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseRaw.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @linenoiseRaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linenoiseRaw(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %63

13:                                               ; preds = %3
  %14 = load i32, i32* @STDIN_FILENO, align 4
  %15 = call i32 @isatty(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @stdin, align 4
  %21 = call i32* @fgets(i8* %18, i64 %19, i32 %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %63

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %38, %29, %24
  br label %61

46:                                               ; preds = %13
  %47 = load i32, i32* @STDIN_FILENO, align 4
  %48 = call i32 @enableRawMode(i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %63

51:                                               ; preds = %46
  %52 = load i32, i32* @STDIN_FILENO, align 4
  %53 = load i32, i32* @STDOUT_FILENO, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @linenoiseEdit(i32 %52, i32 %53, i8* %54, i64 %55, i8* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @STDIN_FILENO, align 4
  %59 = call i32 @disableRawMode(i32 %58)
  %60 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %51, %45
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %50, %23, %11
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32* @fgets(i8*, i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @enableRawMode(i32) #1

declare dso_local i32 @linenoiseEdit(i32, i32, i8*, i64, i8*) #1

declare dso_local i32 @disableRawMode(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
