; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpc7.c_idx_to_quant.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpc7.c_idx_to_quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SAMPLES_PER_BAND = common dso_local global i32 0, align 4
@quant_vlc = common dso_local global %struct.TYPE_5__** null, align 8
@mpc7_idx30 = common dso_local global i32* null, align 8
@mpc7_idx31 = common dso_local global i32* null, align 8
@mpc7_idx32 = common dso_local global i32* null, align 8
@mpc7_idx50 = common dso_local global i32* null, align 8
@mpc7_idx51 = common dso_local global i32* null, align 8
@mpc7_quant_vlc_off = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32, i32*)* @idx_to_quant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idx_to_quant(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %172 [
    i32 -1, label %13
    i32 1, label %30
    i32 2, label %75
    i32 3, label %113
    i32 4, label %113
    i32 5, label %113
    i32 6, label %113
    i32 7, label %113
    i32 8, label %150
    i32 9, label %150
    i32 10, label %150
    i32 11, label %150
    i32 12, label %150
    i32 13, label %150
    i32 14, label %150
    i32 15, label %150
    i32 16, label %150
    i32 17, label %150
  ]

13:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %26, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @SAMPLES_PER_BAND, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @av_lfg_get(i32* %20)
  %22 = and i32 %21, 1020
  %23 = sub nsw i32 %22, 510
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %14

29:                                               ; preds = %14
  br label %173

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @get_bits1(i32* %31)
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %71, %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SAMPLES_PER_BAND, align 4
  %36 = sdiv i32 %35, 3
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @quant_vlc, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %40, i64 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @get_vlc2(i32* %39, i32 %47, i32 9, i32 2)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** @mpc7_idx30, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32*, i32** @mpc7_idx31, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32*, i32** @mpc7_idx32, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  br label %71

71:                                               ; preds = %38
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %33

74:                                               ; preds = %33
  br label %173

75:                                               ; preds = %4
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @get_bits1(i32* %76)
  store i32 %77, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %109, %75
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @SAMPLES_PER_BAND, align 4
  %81 = sdiv i32 %80, 2
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @quant_vlc, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %85, i64 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @get_vlc2(i32* %84, i32 %92, i32 9, i32 2)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load i32*, i32** @mpc7_idx50, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32*, i32** @mpc7_idx51, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  br label %109

109:                                              ; preds = %83
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %78

112:                                              ; preds = %78
  br label %173

113:                                              ; preds = %4, %4, %4, %4, %4
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @get_bits1(i32* %114)
  store i32 %115, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %146, %113
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @SAMPLES_PER_BAND, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %116
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @quant_vlc, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %122, i64 %125
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @get_vlc2(i32* %121, i32 %132, i32 9, i32 2)
  %134 = load i8**, i8*** @mpc7_quant_vlc_off, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = ptrtoint i8* %133 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %8, align 8
  store i32 %143, i32* %144, align 4
  br label %146

146:                                              ; preds = %120
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %116

149:                                              ; preds = %116
  br label %173

150:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %151 = load i32, i32* %7, align 4
  %152 = sub nsw i32 %151, 2
  %153 = shl i32 1, %152
  %154 = sub nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %168, %150
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @SAMPLES_PER_BAND, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %155
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sub nsw i32 %161, 1
  %163 = call i32 @get_bits(i32* %160, i32 %162)
  %164 = load i32, i32* %11, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %8, align 8
  store i32 %165, i32* %166, align 4
  br label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %155

171:                                              ; preds = %155
  br label %173

172:                                              ; preds = %4
  br label %173

173:                                              ; preds = %172, %171, %149, %112, %74, %29
  ret void
}

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i8* @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
