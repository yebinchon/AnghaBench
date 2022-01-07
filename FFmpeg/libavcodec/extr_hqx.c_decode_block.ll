; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HQX_DC_VLC_BITS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@HQX_AC_Q128 = common dso_local global i32 0, align 4
@HQX_AC_Q64 = common dso_local global i32 0, align 4
@HQX_AC_Q32 = common dso_local global i32 0, align 4
@HQX_AC_Q16 = common dso_local global i32 0, align 4
@HQX_AC_Q8 = common dso_local global i32 0, align 4
@HQX_AC_Q0 = common dso_local global i32 0, align 4
@ff_hqx_ac = common dso_local global i32* null, align 8
@ff_zigzag_direct = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32, i32*, i32*)* @decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_block(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %19, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @memset(i32* %20, i32 0, i32 256)
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HQX_DC_VLC_BITS, align 4
  %27 = call i32 @get_vlc2(i32* %22, i32 %25, i32 %26, i32 2)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %7, align 4
  br label %110

32:                                               ; preds = %6
  %33 = load i32, i32* %15, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 12, %39
  %41 = shl i32 %38, %40
  %42 = call i32 @sign_extend(i32 %41, i32 12)
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @get_bits(i32* %46, i32 2)
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp sge i32 %50, 128
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @HQX_AC_Q128, align 4
  store i32 %53, i32* %16, align 4
  br label %80

54:                                               ; preds = %32
  %55 = load i32, i32* %14, align 4
  %56 = icmp sge i32 %55, 64
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @HQX_AC_Q64, align 4
  store i32 %58, i32* %16, align 4
  br label %79

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  %61 = icmp sge i32 %60, 32
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @HQX_AC_Q32, align 4
  store i32 %63, i32* %16, align 4
  br label %78

64:                                               ; preds = %59
  %65 = load i32, i32* %14, align 4
  %66 = icmp sge i32 %65, 16
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @HQX_AC_Q16, align 4
  store i32 %68, i32* %16, align 4
  br label %77

69:                                               ; preds = %64
  %70 = load i32, i32* %14, align 4
  %71 = icmp sge i32 %70, 8
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @HQX_AC_Q8, align 4
  store i32 %73, i32* %16, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @HQX_AC_Q0, align 4
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %74, %72
  br label %77

77:                                               ; preds = %76, %67
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %57
  br label %80

80:                                               ; preds = %79, %52
  br label %81

81:                                               ; preds = %106, %80
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** @ff_hqx_ac, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @hqx_get_ac(i32* %82, i32* %86, i32* %17, i32* %18)
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp sge i32 %91, 64
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %109

94:                                               ; preds = %81
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %14, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32*, i32** %12, align 8
  %99 = load i64*, i64** @ff_zigzag_direct, align 8
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %98, i64 %104
  store i32 %97, i32* %105, align 4
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %19, align 4
  %108 = icmp slt i32 %107, 64
  br i1 %108, label %81, label %109

109:                                              ; preds = %106, %93
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %109, %30
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @hqx_get_ac(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
