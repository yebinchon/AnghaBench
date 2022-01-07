; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_rotate.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@finecosine = common dso_local global i32* null, align 8
@ANGLETOFINESHIFT = common dso_local global i64 0, align 8
@finesine = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_rotate(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i32*, i32** @finecosine, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %13 = lshr i64 %11, %12
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @FixedMul(i64 %9, i32 %15)
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i32*, i32** @finesine, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %22 = lshr i64 %20, %21
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @FixedMul(i64 %18, i32 %24)
  %26 = sub nsw i64 %16, %25
  store i64 %26, i64* %7, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i32*, i32** @finesine, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %32 = lshr i64 %30, %31
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @FixedMul(i64 %28, i32 %34)
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** @finecosine, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %41 = lshr i64 %39, %40
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @FixedMul(i64 %37, i32 %43)
  %45 = add nsw i64 %35, %44
  %46 = load i64*, i64** %5, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64*, i64** %4, align 8
  store i64 %47, i64* %48, align 8
  ret void
}

declare dso_local i64 @FixedMul(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
