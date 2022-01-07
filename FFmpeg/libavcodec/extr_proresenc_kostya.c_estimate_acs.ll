; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_estimate_acs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_estimate_acs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_prores_run_to_cb_index = common dso_local global i32* null, align 8
@ff_prores_lev_to_cb_index = common dso_local global i32* null, align 8
@ff_prores_ac_codebook = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i64*, i32*)* @estimate_acs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_acs(i32* %0, i32* %1, i32 %2, i32 %3, i64* %4, i32* %5) #0 {
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
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 6
  store i32 %23, i32* %19, align 4
  %24 = load i32*, i32** @ff_prores_run_to_cb_index, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i32*, i32** @ff_prores_lev_to_cb_index, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %30

30:                                               ; preds = %124, %6
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 64
  br i1 %32, label %33, label %127

33:                                               ; preds = %30
  %34 = load i64*, i64** %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %120, %33
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %123

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i64*, i64** %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %49, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @FFABS(i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load i64*, i64** %11, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = srem i32 %64, %72
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %73
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %44
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @FFABS(i32 %80)
  store i32 %81, i32* %20, align 4
  %82 = load i32*, i32** @ff_prores_ac_codebook, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i64 @estimate_vlc(i32 %86, i32 %87)
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %21, align 4
  %93 = load i32*, i32** @ff_prores_ac_codebook, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %20, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i64 @estimate_vlc(i32 %97, i32 %99)
  %101 = add nsw i64 %100, 1
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %21, align 4
  %106 = load i32*, i32** @ff_prores_run_to_cb_index, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i64 @FFMIN(i32 %107, i32 15)
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %17, align 4
  %111 = load i32*, i32** @ff_prores_lev_to_cb_index, align 8
  %112 = load i32, i32* %20, align 4
  %113 = call i64 @FFMIN(i32 %112, i32 9)
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %119

116:                                              ; preds = %44
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %116, %79
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 64
  store i32 %122, i32* %13, align 4
  br label %40

123:                                              ; preds = %40
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %30

127:                                              ; preds = %30
  %128 = load i32, i32* %21, align 4
  ret i32 %128
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i64 @estimate_vlc(i32, i32) #1

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
