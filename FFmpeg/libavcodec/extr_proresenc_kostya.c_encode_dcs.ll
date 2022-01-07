; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_dcs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_dcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_DC_CB = common dso_local global i32 0, align 4
@ff_prores_dc_codebook = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @encode_dcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_dcs(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
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
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 3, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 16384
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @FIRST_DC_CB, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @MAKE_CODE(i32 %25)
  %27 = call i32 @encode_vlc_codeword(i32* %23, i32 %24, i32 %26)
  store i32 0, i32* %15, align 4
  store i32 3, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 64
  store i32* %29, i32** %6, align 8
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %70, %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 16384
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @GET_SIGN(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = xor i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @MAKE_CODE(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** @ff_prores_dc_codebook, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @encode_vlc_codeword(i32* %53, i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 1
  %64 = add nsw i32 %61, %63
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @FFMIN(i32 %66, i32 3)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %34
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 64
  store i32* %74, i32** %6, align 8
  br label %30

75:                                               ; preds = %30
  ret void
}

declare dso_local i32 @encode_vlc_codeword(i32*, i32, i32) #1

declare dso_local i32 @MAKE_CODE(i32) #1

declare dso_local i32 @GET_SIGN(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
