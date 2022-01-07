; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_rgb15to16_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_rgb15to16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @rgb15to16_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb15to16_c(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 -3
  store i32* %20, i32** %10, align 8
  br label %21

21:                                               ; preds = %25, %3
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 2147450879
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 2145419232
  %32 = add i32 %29, %31
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32* %37, i32** %8, align 8
  br label %21

38:                                               ; preds = %21
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ult i32* %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = bitcast i32* %43 to i16*
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %12, align 2
  %46 = load i16, i16* %12, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 32767
  %49 = load i16, i16* %12, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 32736
  %52 = add nsw i32 %48, %51
  %53 = trunc i32 %52 to i16
  %54 = load i32*, i32** %7, align 8
  %55 = bitcast i32* %54 to i16*
  store i16 %53, i16* %55, align 2
  br label %56

56:                                               ; preds = %42, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
