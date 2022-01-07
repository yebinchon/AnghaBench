; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729postfilter.c_ff_g729_postfilter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729postfilter.c_ff_g729_postfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBFRAME_SIZE = common dso_local global i32 0, align 4
@formant_pp_factor_num_pow = common dso_local global i32* null, align 8
@formant_pp_factor_den_pow = common dso_local global i32* null, align 8
@RES_PREV_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_g729_postfilter(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca [33 x i32], align 16
  %24 = alloca [11 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  %27 = load i32, i32* @SUBFRAME_SIZE, align 4
  %28 = add nsw i32 %27, 11
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %21, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %22, align 8
  %32 = getelementptr inbounds [33 x i32], [33 x i32]* %23, i64 0, i64 0
  %33 = call i32 @memset(i32* %32, i32 0, i32 132)
  store i32 0, i32* %26, align 4
  br label %34

34:                                               ; preds = %56, %10
  %35 = load i32, i32* %26, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %26, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** @formant_pp_factor_num_pow, align 8
  %45 = load i32, i32* %26, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %43, %48
  %50 = add nsw i32 %49, 16384
  %51 = ashr i32 %50, 15
  %52 = load i32, i32* %26, align 4
  %53 = add nsw i32 %52, 11
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [33 x i32], [33 x i32]* %23, i64 0, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %26, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %26, align 4
  br label %34

59:                                               ; preds = %34
  store i32 0, i32* %26, align 4
  br label %60

60:                                               ; preds = %82, %59
  %61 = load i32, i32* %26, align 4
  %62 = icmp slt i32 %61, 10
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %26, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @formant_pp_factor_den_pow, align 8
  %71 = load i32, i32* %26, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %69, %74
  %76 = add nsw i32 %75, 16384
  %77 = ashr i32 %76, 15
  %78 = load i32, i32* %26, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [11 x i32], [11 x i32]* %24, i64 0, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %63
  %83 = load i32, i32* %26, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %26, align 4
  br label %60

85:                                               ; preds = %60
  %86 = load i32*, i32** %19, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 -10
  %88 = load i32*, i32** %17, align 8
  %89 = call i32 @memcpy(i32* %87, i32* %88, i32 40)
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* @RES_PREV_DATA_SIZE, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = getelementptr inbounds [33 x i32], [33 x i32]* %23, i64 0, i64 0
  %95 = getelementptr inbounds i32, i32* %94, i64 11
  %96 = load i32*, i32** %19, align 8
  %97 = load i32, i32* %20, align 4
  %98 = call i32 @residual_filter(i32* %93, i32* %95, i32* %96, i32 %97)
  %99 = load i32*, i32** %17, align 8
  %100 = load i32*, i32** %19, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = getelementptr inbounds i32, i32* %103, i64 -10
  %105 = call i32 @memcpy(i32* %99, i32* %104, i32 40)
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = getelementptr inbounds i32, i32* %31, i64 10
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @long_term_filter(i32* %106, i32 %107, i32* %108, i32* %109, i32 %110)
  store i32 %111, i32* %26, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %26, align 4
  %115 = call i32 @FFMAX(i32 %113, i32 %114)
  %116 = load i32*, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32*, i32** %16, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = load i32, i32* %20, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* @RES_PREV_DATA_SIZE, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memmove(i32* %117, i32* %121, i32 %125)
  %127 = load i32*, i32** %11, align 8
  %128 = getelementptr inbounds [33 x i32], [33 x i32]* %23, i64 0, i64 0
  %129 = getelementptr inbounds [11 x i32], [11 x i32]* %24, i64 0, i64 0
  %130 = getelementptr inbounds i32, i32* %31, i64 10
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @get_tilt_comp(i32* %127, i32* %128, i32* %129, i32* %130, i32 %131)
  store i32 %132, i32* %25, align 4
  %133 = load i32*, i32** %18, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 10
  %135 = getelementptr inbounds [11 x i32], [11 x i32]* %24, i64 0, i64 0
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = getelementptr inbounds i32, i32* %31, i64 10
  %138 = load i32, i32* %20, align 4
  %139 = call i32 @ff_celp_lp_synthesis_filter(i32* %134, i32* %136, i32* %137, i32 %138, i32 10, i32 0, i32 0, i32 2048)
  %140 = load i32*, i32** %18, align 8
  %141 = load i32*, i32** %18, align 8
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 @memcpy(i32* %140, i32* %144, i32 40)
  %146 = load i32*, i32** %19, align 8
  %147 = load i32*, i32** %18, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 10
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %20, align 4
  %151 = load i32*, i32** %12, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @apply_tilt_comp(i32* %146, i32* %148, i32 %149, i32 %150, i32 %152)
  %154 = load i32*, i32** %12, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %155)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @residual_filter(i32*, i32*, i32*, i32) #2

declare dso_local i32 @long_term_filter(i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @memmove(i32*, i32*, i32) #2

declare dso_local i32 @get_tilt_comp(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @ff_celp_lp_synthesis_filter(i32*, i32*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @apply_tilt_comp(i32*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
