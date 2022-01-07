; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_hex_escape.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_hex_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stream = common dso_local global i8* null, align 8
@char_to_digit = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"\\x needs at least 1 hex digit\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\\x argument out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scan_hex_escape() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @stream, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 120
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i8*, i8** @stream, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** @stream, align 8
  %11 = load i32*, i32** @char_to_digit, align 8
  %12 = load i8*, i8** @stream, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %0
  %20 = load i8*, i8** @stream, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 48
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @error_here(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19, %0
  %27 = load i8*, i8** @stream, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** @stream, align 8
  %29 = load i32*, i32** @char_to_digit, align 8
  %30 = load i8*, i8** @stream, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load i8*, i8** @stream, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 48
  br i1 %41, label %42, label %55

42:                                               ; preds = %37, %26
  %43 = load i32, i32* %1, align 4
  %44 = mul nsw i32 %43, 16
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = icmp sgt i32 %48, 255
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @error_here(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 255, i32* %1, align 4
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i8*, i8** @stream, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** @stream, align 8
  br label %55

55:                                               ; preds = %52, %37
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @error_here(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
