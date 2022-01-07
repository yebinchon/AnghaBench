; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_rgbToPlanarRgbWrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_rgbToPlanarRgbWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unsupported planar RGB conversion %s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i32*, i32, i32, i32**, i32*)* @rgbToPlanarRgbWrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgbToPlanarRgbWrapper(%struct.TYPE_4__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32*], align 16
  %19 = alloca [3 x i32*], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %21 = load i32*, i32** %14, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds i32, i32* %20, i64 1
  %25 = load i32*, i32** %14, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds i32, i32* %24, i64 1
  %29 = load i32*, i32** %14, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds i32, i32* %32, i64 1
  %37 = load i32*, i32** %14, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds i32, i32* %36, i64 1
  %41 = load i32*, i32** %14, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %45 = load i32**, i32*** %13, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  store i32* %54, i32** %44, align 8
  %55 = getelementptr inbounds i32*, i32** %44, i64 1
  %56 = load i32**, i32*** %13, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  store i32* %65, i32** %55, align 8
  %66 = getelementptr inbounds i32*, i32** %55, i64 1
  %67 = load i32**, i32*** %13, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  store i32* %76, i32** %66, align 8
  %77 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %78 = load i32**, i32*** %13, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %80, i64 %86
  store i32* %87, i32** %77, align 8
  %88 = getelementptr inbounds i32*, i32** %77, i64 1
  %89 = load i32**, i32*** %13, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %91, i64 %97
  store i32* %98, i32** %88, align 8
  %99 = getelementptr inbounds i32*, i32** %88, i64 1
  %100 = load i32**, i32*** %13, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  store i32* %109, i32** %99, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %175 [
    i32 129, label %113
    i32 131, label %128
    i32 132, label %143
    i32 128, label %144
    i32 133, label %159
    i32 130, label %160
  ]

113:                                              ; preds = %7
  %114 = load i32**, i32*** %9, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @packedtogbr24p(i32* %116, i32 %119, i32** %120, i32* %121, i32 %122, i32 %123, i32 3, i32 %126)
  br label %187

128:                                              ; preds = %7
  %129 = load i32**, i32*** %9, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @packedtogbr24p(i32* %131, i32 %134, i32** %135, i32* %136, i32 %137, i32 %138, i32 3, i32 %141)
  br label %187

143:                                              ; preds = %7
  store i32 1, i32* %15, align 4
  br label %144

144:                                              ; preds = %7, %143
  %145 = load i32**, i32*** %9, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %152 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @packedtogbr24p(i32* %147, i32 %150, i32** %151, i32* %152, i32 %153, i32 %154, i32 4, i32 %157)
  br label %187

159:                                              ; preds = %7
  store i32 1, i32* %15, align 4
  br label %160

160:                                              ; preds = %7, %159
  %161 = load i32**, i32*** %9, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @packedtogbr24p(i32* %163, i32 %166, i32** %167, i32* %168, i32 %169, i32 %170, i32 4, i32 %173)
  br label %187

175:                                              ; preds = %7
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %177 = load i32, i32* @AV_LOG_ERROR, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @av_get_pix_fmt_name(i32 %180)
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @av_get_pix_fmt_name(i32 %184)
  %186 = call i32 @av_log(%struct.TYPE_4__* %176, i32 %177, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %181, i32 %185)
  br label %187

187:                                              ; preds = %175, %160, %144, %128, %113
  %188 = load i32, i32* %12, align 4
  ret i32 %188
}

declare dso_local i32 @packedtogbr24p(i32*, i32, i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
