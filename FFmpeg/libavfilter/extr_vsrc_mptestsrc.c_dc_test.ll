; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mptestsrc.c_dc_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mptestsrc.c_dc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @dc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_test(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sdiv i32 %17, 256
  %19 = sdiv i32 256, %18
  %20 = call i32 @FFMAX(i32 %19, i32 1)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %51, %5
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %47, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @draw_dc(i32* %40, i32 %41, i32 %42, i32 8, i32 8)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 16
  store i32 %49, i32* %12, align 4
  br label %27

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 16
  store i32 %53, i32* %13, align 4
  br label %22

54:                                               ; preds = %22
  ret void
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @draw_dc(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
