; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_stdlib_noniso.c_ultoa.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_stdlib_noniso.c_ultoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ultoa(i64 %0, i8* %1, i32 %2) #0 {
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
  br label %48

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %39, %19
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %23, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %28, %30
  %32 = sub i64 %27, %31
  %33 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %8, align 8
  store i8 %34, i8* %35, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %22
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %22, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @reverse(i8* %43, i8* %44)
  %46 = load i8*, i8** %8, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %6, align 8
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %42, %16
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i32 @reverse(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
