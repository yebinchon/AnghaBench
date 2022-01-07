; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndmac.c_macConvert32uto16s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndmac.c_macConvert32uto16s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@soundvolume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64)* @macConvert32uto16s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macConvert32uto16s(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %69, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @soundvolume, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sdiv i32 %18, 100
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 32767
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32*, i32** %7, align 8
  store i32 32767, i32* %25, align 4
  br label %37

26:                                               ; preds = %14
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, -32768
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  store i32 -32768, i32* %31, align 4
  br label %36

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %30
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @soundvolume, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sdiv i32 %45, 100
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 32767
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32*, i32** %7, align 8
  store i32 32767, i32* %52, align 4
  br label %64

53:                                               ; preds = %37
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, -32768
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  store i32 -32768, i32* %58, align 4
  br label %63

59:                                               ; preds = %53
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %57
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %7, align 8
  br label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %10

72:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
