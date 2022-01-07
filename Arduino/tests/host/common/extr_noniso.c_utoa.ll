; ModuleID = '/home/carl/AnghaBench/Arduino/tests/host/common/extr_noniso.c_utoa.c'
source_filename = "/home/carl/AnghaBench/Arduino/tests/host/common/extr_noniso.c_utoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utoa(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
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
  br label %47

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %38, %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul i32 %27, %28
  %30 = sub i32 %26, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %8, align 8
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %22, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @reverse(i8* %42, i8* %43)
  %45 = load i8*, i8** %8, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %41, %16
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

declare dso_local i32 @reverse(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
