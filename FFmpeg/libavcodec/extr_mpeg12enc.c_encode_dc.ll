; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12enc.c_encode_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12enc.c_encode_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ff_mpeg12_vlc_dc_lum_bits = common dso_local global i32* null, align 8
@ff_mpeg12_vlc_dc_lum_code = common dso_local global i32* null, align 8
@ff_mpeg12_vlc_dc_chroma_bits = common dso_local global i32* null, align 8
@ff_mpeg12_vlc_dc_chroma_code = common dso_local global i32* null, align 8
@mpeg1_lum_dc_uni = common dso_local global i32* null, align 8
@mpeg1_chr_dc_uni = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @encode_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_dc(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 255
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp uge i32 %11, 511
  br i1 %12, label %13, label %74

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 -2, %17
  %19 = call i32 @av_log2_16bit(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 2, %23
  %25 = call i32 @av_log2_16bit(i32 %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** @ff_mpeg12_vlc_dc_lum_bits, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32*, i32** @ff_mpeg12_vlc_dc_lum_code, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @av_mod_uintp2(i32 %46, i32 %47)
  %49 = add nsw i32 %45, %48
  %50 = call i32 @put_bits(i32* %31, i32 %38, i32 %49)
  br label %73

51:                                               ; preds = %26
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** @ff_mpeg12_vlc_dc_chroma_bits, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32*, i32** @ff_mpeg12_vlc_dc_chroma_code, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @av_mod_uintp2(i32 %68, i32 %69)
  %71 = add nsw i32 %67, %70
  %72 = call i32 @put_bits(i32* %53, i32 %60, i32 %71)
  br label %73

73:                                               ; preds = %51, %29
  br label %114

74:                                               ; preds = %3
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** @mpeg1_lum_dc_uni, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 255
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 255
  %87 = load i32*, i32** @mpeg1_lum_dc_uni, align 8
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 255
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 8
  %94 = call i32 @put_bits(i32* %79, i32 %86, i32 %93)
  br label %113

95:                                               ; preds = %74
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32*, i32** @mpeg1_chr_dc_uni, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 255
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 255
  %105 = load i32*, i32** @mpeg1_chr_dc_uni, align 8
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 255
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 8
  %112 = call i32 @put_bits(i32* %97, i32 %104, i32 %111)
  br label %113

113:                                              ; preds = %95, %77
  br label %114

114:                                              ; preds = %113, %73
  ret void
}

declare dso_local i32 @av_log2_16bit(i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @av_mod_uintp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
