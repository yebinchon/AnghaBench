; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_estimate_dcs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_estimate_dcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_DC_CB = common dso_local global i32 0, align 4
@ff_prores_dc_codebook = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @estimate_dcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_dcs(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 3, i32* %10, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 16384
  %22 = load i32, i32* %8, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @FIRST_DC_CB, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @MAKE_CODE(i32 %25)
  %27 = call i32 @estimate_vlc(i32 %24, i32 %26)
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 3, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 64
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 16384
  %34 = call i32 @FFABS(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = srem i32 %34, %35
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %36
  store i32 %39, i32* %37, align 4
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %91, %4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 16384
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 16384
  %55 = call i32 @FFABS(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = srem i32 %55, %56
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @GET_SIGN(i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = xor i32 %66, %67
  %69 = load i32, i32* %15, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @MAKE_CODE(i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** @ff_prores_dc_codebook, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @estimate_vlc(i32 %77, i32 %78)
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 1
  %85 = add nsw i32 %82, %84
  %86 = ashr i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @FFMIN(i32 %87, i32 3)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %44
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 64
  store i32* %95, i32** %6, align 8
  br label %40

96:                                               ; preds = %40
  %97 = load i32, i32* %17, align 4
  ret i32 %97
}

declare dso_local i32 @estimate_vlc(i32, i32) #1

declare dso_local i32 @MAKE_CODE(i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @GET_SIGN(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
