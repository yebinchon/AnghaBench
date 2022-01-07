; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_readvitc.c_get_vitc_crc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_readvitc.c_get_vitc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_vitc_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vitc_crc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 2
  %8 = or i32 1, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 6
  %13 = or i32 %12, 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 4
  %18 = or i32 %13, %17
  %19 = load i32, i32* %3, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  %25 = or i32 %24, 16
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 6
  %30 = or i32 %25, %29
  %31 = load i32, i32* %3, align 4
  %32 = xor i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 2
  %37 = or i32 %36, 64
  %38 = load i32, i32* %3, align 4
  %39 = xor i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %3, align 4
  %44 = xor i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 2
  %49 = or i32 1, %48
  %50 = load i32, i32* %3, align 4
  %51 = xor i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 6
  %56 = or i32 %55, 4
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 4
  %61 = or i32 %56, %60
  %62 = load i32, i32* %3, align 4
  %63 = xor i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 4
  %68 = or i32 %67, 16
  %69 = load i32*, i32** %2, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 6
  %73 = or i32 %68, %72
  %74 = load i32, i32* %3, align 4
  %75 = xor i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 2
  %80 = or i32 %79, 64
  %81 = load i32, i32* %3, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32*, i32** %2, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 7
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %3, align 4
  %87 = xor i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = xor i32 %88, 1
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = ashr i32 %90, 2
  %92 = load i32, i32* %3, align 4
  %93 = shl i32 %92, 6
  %94 = or i32 %91, %93
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
