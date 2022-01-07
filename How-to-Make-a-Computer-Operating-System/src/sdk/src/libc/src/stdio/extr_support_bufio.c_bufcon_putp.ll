; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_bufio.c_bufcon_putp.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_bufio.c_bufcon_putp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bufcon_putp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 28, i32* %5, align 4
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %12, %13
  %15 = and i32 %14, 15
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %6, align 1
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, 48
  %33 = trunc i32 %32 to i8
  %34 = call i32 @bufcon_putc(i8* %29, i8 zeroext %33)
  br label %43

35:                                               ; preds = %24
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %38, 10
  %40 = add nsw i32 %39, 97
  %41 = trunc i32 %40 to i8
  %42 = call i32 @bufcon_putc(i8* %36, i8 zeroext %41)
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %43, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 4
  store i32 %47, i32* %5, align 4
  br label %8

48:                                               ; preds = %8
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @bufcon_putc(i8* %52, i8 zeroext 48)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i32 @bufcon_putc(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
