; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_put_v.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_put_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @put_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_v(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = lshr i32 %5, 28
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = lshr i32 %9, 28
  %11 = and i32 %10, 127
  %12 = or i32 %11, 128
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %3, align 8
  store i32 %12, i32* %13, align 4
  br label %15

15:                                               ; preds = %8, %2
  %16 = load i32, i32* %4, align 4
  %17 = lshr i32 %16, 21
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = lshr i32 %20, 21
  %22 = and i32 %21, 127
  %23 = or i32 %22, 128
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %3, align 8
  store i32 %23, i32* %24, align 4
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, 14
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = lshr i32 %31, 14
  %33 = and i32 %32, 127
  %34 = or i32 %33, 128
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %3, align 8
  store i32 %34, i32* %35, align 4
  br label %37

37:                                               ; preds = %30, %26
  %38 = load i32, i32* %4, align 4
  %39 = lshr i32 %38, 7
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = lshr i32 %42, 7
  %44 = and i32 %43, 127
  %45 = or i32 %44, 128
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %3, align 8
  store i32 %45, i32* %46, align 4
  br label %48

48:                                               ; preds = %41, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
