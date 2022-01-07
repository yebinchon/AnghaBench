; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_str2num.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_str2num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@PARAM_NUMBER_TOO_LARGE = common dso_local global i32 0, align 4
@PARAM_OK = common dso_local global i32 0, align 4
@PARAM_BAD_NUMERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str2num(i64* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  store i64 0, i64* @errno, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strtol(i8* %11, i8** %6, i32 10)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @ERANGE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @PARAM_NUMBER_TOO_LARGE, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %10
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = icmp eq i8* %23, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %4, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* @PARAM_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %22, %18
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* @PARAM_BAD_NUMERIC, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %30, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
