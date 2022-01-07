; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/bmp/extr_rbmp_encode.c_dump_line_565_to_24.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/bmp/extr_rbmp_encode.c_dump_line_565_to_24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @dump_line_565_to_24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_line_565_to_24(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %50, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %5, align 8
  %19 = load i32, i32* %17, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 0
  %22 = and i32 %21, 31
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 5
  %25 = and i32 %24, 63
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 11
  %28 = and i32 %27, 31
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 3
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 2
  %33 = or i32 %30, %32
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = shl i32 %36, 2
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, 4
  %40 = or i32 %37, %39
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 3
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, 2
  %47 = or i32 %44, %46
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  br label %50

50:                                               ; preds = %16
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %12

53:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
