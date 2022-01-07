; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_copy_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_copy_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @copy_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_block(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %35 [
    i32 2, label %17
    i32 4, label %23
    i32 8, label %29
  ]

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @copy_block4(i32* %18, i32* %19, i32 %20, i32 %21, i32 2)
  br label %35

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @copy_block8(i32* %24, i32* %25, i32 %26, i32 %27, i32 4)
  br label %35

29:                                               ; preds = %4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @copy_block16(i32* %30, i32* %31, i32 %32, i32 %33, i32 8)
  br label %35

35:                                               ; preds = %4, %29, %23, %17
  ret void
}

declare dso_local i32 @copy_block4(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @copy_block8(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @copy_block16(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
