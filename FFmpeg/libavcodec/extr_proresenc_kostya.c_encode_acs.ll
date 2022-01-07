; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_acs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_acs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_prores_run_to_cb_index = common dso_local global i32* null, align 8
@ff_prores_lev_to_cb_index = common dso_local global i32* null, align 8
@ff_prores_ac_codebook = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i64*, i32*)* @encode_acs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_acs(i32* %0, i32* %1, i32 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %21, 6
  store i32 %22, i32* %19, align 4
  %23 = load i32*, i32** @ff_prores_run_to_cb_index, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %17, align 4
  %26 = load i32*, i32** @ff_prores_lev_to_cb_index, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %18, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %29

29:                                               ; preds = %102, %6
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 64
  br i1 %31, label %32, label %105

32:                                               ; preds = %29
  %33 = load i64*, i64** %11, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %98, %32
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %101

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %48, %56
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %43
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @FFABS(i32 %61)
  store i32 %62, i32* %20, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** @ff_prores_ac_codebook, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @encode_vlc_codeword(i32* %63, i32 %68, i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** @ff_prores_ac_codebook, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %20, align 4
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @encode_vlc_codeword(i32* %71, i32 %76, i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @GET_SIGN(i32 %81)
  %83 = call i32 @put_sbits(i32* %80, i32 1, i32 %82)
  %84 = load i32*, i32** @ff_prores_run_to_cb_index, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i64 @FFMIN(i32 %85, i32 15)
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %17, align 4
  %89 = load i32*, i32** @ff_prores_lev_to_cb_index, align 8
  %90 = load i32, i32* %20, align 4
  %91 = call i64 @FFMIN(i32 %90, i32 9)
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %97

94:                                               ; preds = %43
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %94, %60
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 64
  store i32 %100, i32* %13, align 4
  br label %39

101:                                              ; preds = %39
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %29

105:                                              ; preds = %29
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @encode_vlc_codeword(i32*, i32, i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

declare dso_local i32 @GET_SIGN(i32) #1

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
