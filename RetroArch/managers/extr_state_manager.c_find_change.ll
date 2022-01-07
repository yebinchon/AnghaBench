; ModuleID = '/home/carl/AnghaBench/RetroArch/managers/extr_state_manager.c_find_change.c'
source_filename = "/home/carl/AnghaBench/RetroArch/managers/extr_state_manager.c_find_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*)* @find_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_change(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = bitcast i64* %12 to i32*
  store i32* %13, i32** %5, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = bitcast i64* %14 to i32*
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %55, %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @_mm_loadu_si128(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @_mm_loadu_si128(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @_mm_cmpeq_epi32(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @_mm_movemask_epi8(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 65535
  br i1 %27, label %28, label %55

28:                                               ; preds = %16
  %29 = load i32*, i32** %5, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = bitcast i64* %30 to i32*
  %32 = ptrtoint i32* %29 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = load i32, i32* %10, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @compat_ctz(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = or i64 %35, %39
  %41 = ashr i64 %40, 1
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64*, i64** %3, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = or i64 %42, %53
  ret i64 %54

55:                                               ; preds = %16
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %6, align 8
  br label %16
}

declare dso_local i32 @_mm_loadu_si128(i32*) #1

declare dso_local i32 @_mm_cmpeq_epi32(i32, i32) #1

declare dso_local i32 @_mm_movemask_epi8(i32) #1

declare dso_local i32 @compat_ctz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
