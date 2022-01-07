; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_io_read_uint.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_io_read_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @mkv_io_read_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_io_read_uint(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @vc_container_io_read_uint8(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 255
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  store i32 128, i32* %7, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @vc_container_io_read_uint8(i32* %33)
  %35 = or i32 %32, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 %40, 7
  store i32 %41, i32* %7, align 4
  br label %17

42:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %25, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @vc_container_io_read_uint8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
