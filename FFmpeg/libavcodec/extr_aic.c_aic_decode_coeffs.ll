; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aic.c_aic_decode_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aic.c_aic_decode_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aic_num_band_coeffs = common dso_local global i32* null, align 8
@aic_scan = common dso_local global i64** null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @aic_decode_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic_decode_coeffs(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i32*, i32** @aic_num_band_coeffs, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i64**, i64*** @aic_scan, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64*, i64** %27, i64 %31
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** %18, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @get_bits_left(i32* %34)
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %6, align 4
  br label %151

39:                                               ; preds = %5
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @get_bits1(i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @get_bits1(i32* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @get_bits(i32* %44, i32 3)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %39
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @get_bits1(i32* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @get_bits(i32* %51, i32 3)
  store i32 %52, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %53

53:                                               ; preds = %106, %48
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %109

57:                                               ; preds = %53
  store i32 -1, i32* %20, align 4
  br label %58

58:                                               ; preds = %96, %57
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @GET_CODE(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %21, align 4
  %64 = icmp uge i32 %63, 65536
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %6, align 4
  br label %151

67:                                               ; preds = %58
  %68 = load i32, i32* %21, align 4
  %69 = add i32 %68, 1
  %70 = load i32, i32* %20, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %101

76:                                               ; preds = %67
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @GET_CODE(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %21, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %21, align 4
  %84 = icmp uge i32 %83, 65536
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %6, align 4
  br label %151

87:                                               ; preds = %76
  %88 = load i32, i32* %21, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i64*, i64** %18, align 8
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  store i32 %88, i32* %95, align 4
  br label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %17, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %58, label %101

101:                                              ; preds = %96, %75
  %102 = load i32, i32* %17, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %8, align 8
  br label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  br label %53

109:                                              ; preds = %53
  br label %150

110:                                              ; preds = %39
  store i32 0, i32* %19, align 4
  br label %111

111:                                              ; preds = %146, %110
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %149

115:                                              ; preds = %111
  store i32 0, i32* %20, align 4
  br label %116

116:                                              ; preds = %138, %115
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %116
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @GET_CODE(i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %21, align 4
  %126 = icmp uge i32 %125, 65536
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %128, i32* %6, align 4
  br label %151

129:                                              ; preds = %120
  %130 = load i32, i32* %21, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = load i64*, i64** %18, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  store i32 %130, i32* %137, align 4
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %20, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %20, align 4
  br label %116

141:                                              ; preds = %116
  %142 = load i32, i32* %17, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %8, align 8
  br label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %19, align 4
  br label %111

149:                                              ; preds = %111
  br label %150

150:                                              ; preds = %149, %109
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %127, %85, %65, %37
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @GET_CODE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
