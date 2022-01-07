; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_base64.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_base64.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.b64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %36, %0
  %7 = call i32 (...) @getchar()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @EOF, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %11, 8
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %12, %13
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 8
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %35, %10
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 6
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %2, align 4
  %23 = shl i32 %22, 6
  %24 = load i32, i32* %3, align 4
  %25 = lshr i32 %23, %24
  %26 = and i32 %25, 63
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [65 x i8], [65 x i8]* @main.b64, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @putchar(i8 signext %29)
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 6
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %21
  br label %17

36:                                               ; preds = %17
  br label %6

37:                                               ; preds = %6
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = shl i32 %43, 6
  %45 = load i32, i32* %3, align 4
  %46 = lshr i32 %44, %45
  %47 = and i32 %46, 63
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [65 x i8], [65 x i8]* @main.b64, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @putchar(i8 signext %50)
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = sub nsw i32 %54, 6
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %42
  br label %38

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %63, %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = and i32 %59, 3
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @putchar(i8 signext 61)
  br label %58

65:                                               ; preds = %58
  %66 = call i32 @putchar(i8 signext 10)
  ret i32 0
}

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
