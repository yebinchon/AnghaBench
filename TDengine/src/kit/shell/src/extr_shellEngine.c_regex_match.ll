; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_regex_match.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_regex_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Fail to compile regex\00", align 1
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Regex match failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regex_match(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @regcomp(i32* %8, i8* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @exitShell()
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @regexec(i32* %8, i8* %20, i32 0, i32* null, i32 0)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @regfree(i32* %8)
  store i32 1, i32* %4, align 4
  br label %43

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @REG_NOMATCH, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @regfree(i32* %8)
  store i32 0, i32* %4, align 4
  br label %43

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %35 = call i32 @regerror(i32 %33, i32* %8, i8* %34, i32 100)
  %36 = load i32, i32* @stderr, align 4
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = call i32 @regfree(i32* %8)
  %40 = call i32 (...) @exitShell()
  br label %41

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %30, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @exitShell(...) #1

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
