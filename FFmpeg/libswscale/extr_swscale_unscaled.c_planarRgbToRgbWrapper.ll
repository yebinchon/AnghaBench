; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planarRgbToRgbWrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planarRgbToRgbWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@AV_PIX_FMT_GBRP = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unsupported planar RGB conversion %s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i32*, i32, i32, i32**, i32*)* @planarRgbToRgbWrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @planarRgbToRgbWrapper(%struct.TYPE_4__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32*], align 16
  %18 = alloca [3 x i32*], align 16
  %19 = alloca [3 x i32], align 4
  %20 = alloca [3 x i32], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %21 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  %22 = load i32**, i32*** %10, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds i32*, i32** %21, i64 1
  %26 = load i32**, i32*** %10, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds i32*, i32** %25, i64 1
  %30 = load i32**, i32*** %10, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %29, align 8
  %33 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %34 = load i32**, i32*** %10, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds i32*, i32** %33, i64 1
  %38 = load i32**, i32*** %10, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %37, align 8
  %41 = getelementptr inbounds i32*, i32** %37, i64 1
  %42 = load i32**, i32*** %10, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %41, align 8
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %45, align 4
  %49 = getelementptr inbounds i32, i32* %45, i64 1
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %49, align 4
  %53 = getelementptr inbounds i32, i32* %49, i64 1
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %53, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %57, align 4
  %61 = getelementptr inbounds i32, i32* %57, i64 1
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %61, align 4
  %65 = getelementptr inbounds i32, i32* %61, i64 1
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %65, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AV_PIX_FMT_GBRP, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %7
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @av_get_pix_fmt_name(i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @av_get_pix_fmt_name(i32 %84)
  %86 = call i32 @av_log(%struct.TYPE_4__* %75, i32 %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %8, align 4
  br label %195

88:                                               ; preds = %7
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %180 [
    i32 131, label %92
    i32 129, label %113
    i32 132, label %134
    i32 128, label %135
    i32 133, label %157
    i32 130, label %158
  ]

92:                                               ; preds = %88
  %93 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %95 = load i32**, i32*** %14, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %15, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  %105 = load i32*, i32** %15, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @gbr24ptopacked24(i32** %93, i32* %94, i32* %104, i32 %107, i32 %108, i32 %111)
  br label %193

113:                                              ; preds = %88
  %114 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %116 = load i32**, i32*** %14, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %119, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %118, i64 %124
  %126 = load i32*, i32** %15, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @gbr24ptopacked24(i32** %114, i32* %115, i32* %125, i32 %128, i32 %129, i32 %132)
  br label %193

134:                                              ; preds = %88
  store i32 1, i32* %16, align 4
  br label %135

135:                                              ; preds = %88, %134
  %136 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %138 = load i32**, i32*** %14, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %140, i64 %146
  %148 = load i32*, i32** %15, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @gbr24ptopacked32(i32** %136, i32* %137, i32* %147, i32 %150, i32 %151, i32 %152, i32 %155)
  br label %193

157:                                              ; preds = %88
  store i32 1, i32* %16, align 4
  br label %158

158:                                              ; preds = %88, %157
  %159 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %161 = load i32**, i32*** %14, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32*, i32** %15, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %164, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %163, i64 %169
  %171 = load i32*, i32** %15, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @gbr24ptopacked32(i32** %159, i32* %160, i32* %170, i32 %173, i32 %174, i32 %175, i32 %178)
  br label %193

180:                                              ; preds = %88
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %182 = load i32, i32* @AV_LOG_ERROR, align 4
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @av_get_pix_fmt_name(i32 %186)
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @av_get_pix_fmt_name(i32 %190)
  %192 = call i32 @av_log(%struct.TYPE_4__* %181, i32 %182, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %187, i32 %191)
  br label %193

193:                                              ; preds = %180, %158, %135, %113, %92
  %194 = load i32, i32* %13, align 4
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %193, %74
  %196 = load i32, i32* %8, align 4
  ret i32 %196
}

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @gbr24ptopacked24(i32**, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @gbr24ptopacked32(i32**, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
