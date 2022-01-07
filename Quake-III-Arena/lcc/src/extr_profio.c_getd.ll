; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_profio.c_getd.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_profio.c_getd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fp = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %22, %0
  %5 = load i32, i32* @fp, align 4
  %6 = call i32 @getc(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @EOF, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 9
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = phi i1 [ true, %12 ], [ true, %9 ], [ %17, %15 ]
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i1 [ false, %4 ], [ %19, %18 ]
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %4

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = icmp sle i32 %27, 57
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %3, align 4
  %32 = mul nsw i32 10, %31
  %33 = load i32, i32* %2, align 4
  %34 = sub nsw i32 %33, 48
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @fp, align 4
  %38 = call i32 @getc(i32 %37)
  store i32 %38, i32* %2, align 4
  %39 = icmp sge i32 %38, 48
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = icmp sle i32 %41, 57
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i1 [ false, %36 ], [ %42, %40 ]
  br i1 %44, label %30, label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* %1, align 4
  br label %48

47:                                               ; preds = %26, %23
  store i32 -1, i32* %1, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @getc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
