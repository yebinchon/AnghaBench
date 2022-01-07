; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_interleaved_ue_golomb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_interleaved_ue_golomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@re = common dso_local global i32 0, align 4
@ff_interleaved_golomb_vlc_len = common dso_local global i32* null, align 8
@ff_interleaved_ue_golomb_vlc_code = common dso_local global i32* null, align 8
@ff_interleaved_dirac_golomb_vlc_code = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_interleaved_ue_golomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_interleaved_ue_golomb(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @re, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @OPEN_READER(i32 %6, i32* %7)
  %9 = load i32, i32* @re, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @UPDATE_CACHE(i32 %9, i32* %10)
  %12 = load i32, i32* @re, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @GET_CACHE(i32 %12, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, -1434451968
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 24
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @re, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** @ff_interleaved_golomb_vlc_len, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @LAST_SKIP_BITS(i32 %21, i32* %22, i32 %27)
  %29 = load i32, i32* @re, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @CLOSE_READER(i32 %29, i32* %30)
  %32 = load i32*, i32** @ff_interleaved_ue_golomb_vlc_code, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %104

37:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %96, %37
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 24
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @re, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** @ff_interleaved_golomb_vlc_len, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FFMIN(i32 %47, i32 8)
  %49 = call i32 @LAST_SKIP_BITS(i32 %41, i32* %42, i32 %48)
  %50 = load i32*, i32** @ff_interleaved_golomb_vlc_len, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 9
  br i1 %55, label %56, label %73

56:                                               ; preds = %38
  %57 = load i32*, i32** @ff_interleaved_golomb_vlc_len, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = ashr i32 %62, 1
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32*, i32** @ff_interleaved_dirac_golomb_vlc_code, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %98

73:                                               ; preds = %38
  %74 = load i32, i32* %5, align 4
  %75 = shl i32 %74, 4
  %76 = load i32*, i32** @ff_interleaved_dirac_golomb_vlc_code, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %75, %80
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @re, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @UPDATE_CACHE(i32 %82, i32* %83)
  %85 = load i32, i32* @re, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @GET_CACHE(i32 %85, i32* %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %5, align 4
  %90 = icmp ult i32 %89, 134217728
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* @re, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = call i64 @BITS_AVAILABLE(i32 %92, i32* %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %91, %88
  %97 = phi i1 [ false, %88 ], [ %95, %91 ]
  br i1 %97, label %38, label %98

98:                                               ; preds = %96, %56
  %99 = load i32, i32* @re, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @CLOSE_READER(i32 %99, i32* %100)
  %102 = load i32, i32* %5, align 4
  %103 = sub i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %18
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @BITS_AVAILABLE(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
