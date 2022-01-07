; ModuleID = '/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_uart_puthex.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_uart_puthex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @uart_puthex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_puthex(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  store i32 60, i32* %3, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %10, %11
  %13 = and i32 15, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %4, align 1
  %15 = load i8, i8* %4, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %26

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %43

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 9
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8, i8* %4, align 1
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 %32, 48
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %4, align 1
  br label %40

35:                                               ; preds = %26
  %36 = load i8, i8* %4, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, 87
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %4, align 1
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i8, i8* %4, align 1
  %42 = call i32 @uart_putc(i8 signext %41)
  br label %43

43:                                               ; preds = %40, %24
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 4
  store i32 %45, i32* %3, align 4
  br label %6

46:                                               ; preds = %6
  ret void
}

declare dso_local i32 @uart_putc(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
