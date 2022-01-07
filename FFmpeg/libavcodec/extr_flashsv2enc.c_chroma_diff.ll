; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_chroma_diff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_chroma_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @chroma_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chroma_diff(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 255
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 65280
  %11 = lshr i32 %10, 8
  %12 = add i32 %8, %11
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 16711680
  %15 = lshr i32 %14, 16
  %16 = add i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 255
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 65280
  %21 = lshr i32 %20, 8
  %22 = add i32 %18, %21
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 16711680
  %25 = lshr i32 %24, 16
  %26 = add i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @abs(i32 %29) #2
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 255
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 255
  %35 = sub nsw i32 %32, %34
  %36 = call i32 @abs(i32 %35) #2
  %37 = add nsw i32 %30, %36
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 65280
  %40 = lshr i32 %39, 8
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 65280
  %43 = lshr i32 %42, 8
  %44 = sub nsw i32 %40, %43
  %45 = call i32 @abs(i32 %44) #2
  %46 = add nsw i32 %37, %45
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 16711680
  %49 = lshr i32 %48, 16
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 16711680
  %52 = lshr i32 %51, 16
  %53 = sub nsw i32 %49, %52
  %54 = call i32 @abs(i32 %53) #2
  %55 = add nsw i32 %46, %54
  ret i32 %55
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
