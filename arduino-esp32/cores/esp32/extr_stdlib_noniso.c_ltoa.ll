; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_stdlib_noniso.c_ltoa.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_stdlib_noniso.c_ltoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ltoa(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 16
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %3
  %17 = load i8*, i8** %6, align 8
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %4, align 8
  br label %55

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @abs(i64 %21)
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %40, %19
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = sdiv i64 %24, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %29, %31
  %33 = sub nsw i64 %28, %32
  %34 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %8, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %23
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %23, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  store i8 45, i8* %47, align 1
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @reverse(i8* %50, i8* %51)
  %53 = load i8*, i8** %8, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %6, align 8
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %49, %16
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @reverse(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
