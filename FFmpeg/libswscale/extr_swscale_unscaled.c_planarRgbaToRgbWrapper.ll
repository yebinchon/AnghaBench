; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planarRgbaToRgbWrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planarRgbaToRgbWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@AV_PIX_FMT_GBRAP = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unsupported planar RGB conversion %s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i32*, i32, i32, i32**, i32*)* @planarRgbaToRgbWrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @planarRgbaToRgbWrapper(%struct.TYPE_4__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32*], align 16
  %18 = alloca [4 x i32*], align 16
  %19 = alloca [4 x i32], align 16
  %20 = alloca [4 x i32], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %21 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
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
  %33 = getelementptr inbounds i32*, i32** %29, i64 1
  %34 = load i32**, i32*** %10, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %33, align 8
  %37 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %38 = load i32**, i32*** %10, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %37, align 8
  %41 = getelementptr inbounds i32*, i32** %37, i64 1
  %42 = load i32**, i32*** %10, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %41, align 8
  %45 = getelementptr inbounds i32*, i32** %41, i64 1
  %46 = load i32**, i32*** %10, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %45, align 8
  %49 = getelementptr inbounds i32*, i32** %45, i64 1
  %50 = load i32**, i32*** %10, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 3
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %49, align 8
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %53, align 4
  %57 = getelementptr inbounds i32, i32* %53, i64 1
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %57, align 4
  %61 = getelementptr inbounds i32, i32* %57, i64 1
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %61, align 4
  %65 = getelementptr inbounds i32, i32* %61, i64 1
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %65, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %69, align 4
  %73 = getelementptr inbounds i32, i32* %69, i64 1
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %73, align 4
  %77 = getelementptr inbounds i32, i32* %73, i64 1
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %77, align 4
  %81 = getelementptr inbounds i32, i32* %77, i64 1
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %81, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AV_PIX_FMT_GBRAP, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %7
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @av_get_pix_fmt_name(i32 %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @av_get_pix_fmt_name(i32 %100)
  %102 = call i32 @av_log(%struct.TYPE_4__* %91, i32 %92, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %101)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %8, align 4
  br label %211

104:                                              ; preds = %7
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %196 [
    i32 131, label %108
    i32 129, label %129
    i32 132, label %150
    i32 128, label %151
    i32 133, label %173
    i32 130, label %174
  ]

108:                                              ; preds = %104
  %109 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %111 = load i32**, i32*** %14, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  %121 = load i32*, i32** %15, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @gbr24ptopacked24(i32** %109, i32* %110, i32* %120, i32 %123, i32 %124, i32 %127)
  br label %209

129:                                              ; preds = %104
  %130 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %132 = load i32**, i32*** %14, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32*, i32** %15, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %134, i64 %140
  %142 = load i32*, i32** %15, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @gbr24ptopacked24(i32** %130, i32* %131, i32* %141, i32 %144, i32 %145, i32 %148)
  br label %209

150:                                              ; preds = %104
  store i32 1, i32* %16, align 4
  br label %151

151:                                              ; preds = %104, %150
  %152 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %154 = load i32**, i32*** %14, align 8
  %155 = getelementptr inbounds i32*, i32** %154, i64 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %156, i64 %162
  %164 = load i32*, i32** %15, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @gbraptopacked32(i32** %152, i32* %153, i32* %163, i32 %166, i32 %167, i32 %168, i32 %171)
  br label %209

173:                                              ; preds = %104
  store i32 1, i32* %16, align 4
  br label %174

174:                                              ; preds = %104, %173
  %175 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %177 = load i32**, i32*** %14, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load i32*, i32** %15, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %180, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  %187 = load i32*, i32** %15, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @gbraptopacked32(i32** %175, i32* %176, i32* %186, i32 %189, i32 %190, i32 %191, i32 %194)
  br label %209

196:                                              ; preds = %104
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %198 = load i32, i32* @AV_LOG_ERROR, align 4
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @av_get_pix_fmt_name(i32 %202)
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @av_get_pix_fmt_name(i32 %206)
  %208 = call i32 @av_log(%struct.TYPE_4__* %197, i32 %198, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %203, i32 %207)
  br label %209

209:                                              ; preds = %196, %174, %151, %129, %108
  %210 = load i32, i32* %13, align 4
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %209, %90
  %212 = load i32, i32* %8, align 4
  ret i32 %212
}

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @gbr24ptopacked24(i32**, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @gbraptopacked32(i32**, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
