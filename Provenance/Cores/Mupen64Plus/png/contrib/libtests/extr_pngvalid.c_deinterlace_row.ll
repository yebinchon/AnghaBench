; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_deinterlace_row.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_deinterlace_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64, i32, i32)* @deinterlace_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinterlace_row(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i64 @PNG_PASS_START_COL(i32 %16)
  store i64 %17, i64* %14, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @PNG_PASS_COL_SHIFT(i32 %18)
  %20 = shl i32 1, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %22

22:                                               ; preds = %36, %6
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i64, i64* %14, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %13, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @pixel_copy(i32 %27, i64 %28, i32 %29, i64 %30, i32 %31, i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %26
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %14, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %14, align 8
  br label %22

40:                                               ; preds = %22
  ret void
}

declare dso_local i64 @PNG_PASS_START_COL(i32) #1

declare dso_local i32 @PNG_PASS_COL_SHIFT(i32) #1

declare dso_local i32 @pixel_copy(i32, i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
