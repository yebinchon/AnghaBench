; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_bufio.c_bufcon_putX.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_bufio.c_bufcon_putX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bufcon_putX(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @bufcon_puts(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 28, i32* %5, align 4
  br label %10

10:                                               ; preds = %47, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = lshr i32 %14, %15
  %17 = and i32 %16, 15
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %33, 48
  %35 = trunc i32 %34 to i8
  %36 = call i32 @bufcon_putc(i8* %31, i8 zeroext %35)
  br label %45

37:                                               ; preds = %26
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %40, 10
  %42 = add nsw i32 %41, 65
  %43 = trunc i32 %42 to i8
  %44 = call i32 @bufcon_putc(i8* %38, i8 zeroext %43)
  br label %45

45:                                               ; preds = %37, %30
  br label %46

46:                                               ; preds = %45, %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, 4
  store i32 %49, i32* %5, align 4
  br label %10

50:                                               ; preds = %10
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @bufcon_putc(i8* %54, i8 zeroext 48)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local i32 @bufcon_puts(i8*, i8*) #1

declare dso_local i32 @bufcon_putc(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
