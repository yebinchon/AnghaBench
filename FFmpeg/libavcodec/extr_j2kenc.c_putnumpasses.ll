; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_j2kenc.c_putnumpasses.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_j2kenc.c_putnumpasses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @putnumpasses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putnumpasses(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @put_num(i32* %8, i32 0, i32 1)
  br label %43

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @put_num(i32* %14, i32 2, i32 2)
  br label %42

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 3
  %23 = or i32 12, %22
  %24 = call i32 @put_num(i32* %20, i32 %23, i32 4)
  br label %41

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 36
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 6
  %32 = or i32 480, %31
  %33 = call i32 @put_num(i32* %29, i32 %32, i32 9)
  br label %40

34:                                               ; preds = %25
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 37
  %38 = or i32 65408, %37
  %39 = call i32 @put_num(i32* %35, i32 %38, i32 16)
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %19
  br label %42

42:                                               ; preds = %41, %13
  br label %43

43:                                               ; preds = %42, %7
  ret void
}

declare dso_local i32 @put_num(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
