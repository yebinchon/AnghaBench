; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_parse_vui.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_parse_vui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32)* @hvcc_parse_vui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvcc_parse_vui(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @get_bits1(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @get_bits(i32* %12, i32 8)
  %14 = icmp eq i32 %13, 255
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @skip_bits_long(i32* %16, i32 32)
  br label %18

18:                                               ; preds = %15, %11
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @get_bits1(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @skip_bits1(i32* %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @get_bits1(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @skip_bits(i32* %31, i32 4)
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @get_bits1(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @skip_bits(i32* %37, i32 24)
  br label %39

39:                                               ; preds = %36, %30
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @get_bits1(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @get_ue_golomb_long(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @get_ue_golomb_long(i32* %47)
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @skip_bits(i32* %50, i32 3)
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @get_bits1(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @get_ue_golomb_long(i32* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @get_ue_golomb_long(i32* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @get_ue_golomb_long(i32* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @get_ue_golomb_long(i32* %62)
  br label %64

64:                                               ; preds = %55, %49
  %65 = load i32*, i32** %4, align 8
  %66 = call i64 @get_bits1(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @skip_timing_info(i32* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i64 @get_bits1(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @skip_hrd_parameters(i32* %75, i32 1, i32 %76)
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32*, i32** %4, align 8
  %81 = call i64 @get_bits1(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @skip_bits(i32* %84, i32 3)
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @get_ue_golomb_long(i32* %86)
  store i32 %87, i32* %7, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @FFMIN(i32 %90, i32 %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @get_ue_golomb_long(i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @get_ue_golomb_long(i32* %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @get_ue_golomb_long(i32* %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @get_ue_golomb_long(i32* %101)
  br label %103

103:                                              ; preds = %83, %79
  ret void
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_ue_golomb_long(i32*) #1

declare dso_local i32 @skip_timing_info(i32*) #1

declare dso_local i32 @skip_hrd_parameters(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
