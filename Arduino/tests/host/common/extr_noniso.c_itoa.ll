; ModuleID = '/home/carl/AnghaBench/Arduino/tests/host/common/extr_noniso.c_itoa.c'
source_filename = "/home/carl/AnghaBench/Arduino/tests/host/common/extr_noniso.c_itoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @itoa(i32 %0, i8* %1, i32 %2) #0 {
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
  br label %62

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @utoa(i32 %23, i8* %24, i32 %25)
  store i8* %26, i8** %4, align 8
  br label %62

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @abs(i32 %29) #3
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %47, %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sub nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %8, align 8
  store i8 %42, i8* %43, align 1
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %31, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  store i8 45, i8* %54, align 1
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @reverse(i8* %57, i8* %58)
  %60 = load i8*, i8** %8, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %6, align 8
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %56, %22, %16
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
}

declare dso_local i8* @utoa(i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @reverse(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
