; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_image_copy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_image_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@FF_PSEUDOPAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"av_image_get_linesize failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32**, i32*, i32, i32, i32, void (i32*, i32, i32*, i32, i32, i32)*)* @image_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_copy(i32** %0, i32* %1, i32** %2, i32* %3, i32 %4, i32 %5, i32 %6, void (i32*, i32, i32*, i32, i32, i32)* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca void (i32*, i32, i32*, i32, i32, i32)*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store void (i32*, i32, i32*, i32, i32, i32)* %7, void (i32*, i32, i32*, i32, i32, i32)** %16, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call %struct.TYPE_5__* @av_pix_fmt_desc_get(i32 %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %17, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %8
  br label %167

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @FF_PSEUDOPAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %89

48:                                               ; preds = %41, %34
  %49 = load void (i32*, i32, i32*, i32, i32, i32)*, void (i32*, i32, i32*, i32, i32, i32)** %16, align 8
  %50 = load i32**, i32*** %9, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32**, i32*** %11, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  call void %49(i32* %52, i32 %55, i32* %58, i32 %61, i32 %62, i32 %63)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %48
  %71 = load i32**, i32*** %9, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i32**, i32*** %11, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75, %48
  %81 = load i32**, i32*** %9, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32**, i32*** %11, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @memcpy(i32* %83, i32* %86, i32 1024)
  br label %88

88:                                               ; preds = %80, %75, %70
  br label %167

89:                                               ; preds = %41
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i32, i32* %18, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load i32, i32* %19, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  %107 = call i32 @FFMAX(i32 %97, i64 %106)
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  br label %90

111:                                              ; preds = %90
  store i32 0, i32* %18, align 4
  br label %112

112:                                              ; preds = %163, %111
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %166

116:                                              ; preds = %112
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @av_image_get_linesize(i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* %21, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32, i32* @AV_LOG_ERROR, align 4
  %126 = call i32 @av_log(i32* null, i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %167

127:                                              ; preds = %116
  %128 = load i32, i32* %18, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %18, align 4
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %139

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @AV_CEIL_RSHIFT(i32 %134, i32 %137)
  store i32 %138, i32* %20, align 4
  br label %139

139:                                              ; preds = %133, %130
  %140 = load void (i32*, i32, i32*, i32, i32, i32)*, void (i32*, i32, i32*, i32, i32, i32)** %16, align 8
  %141 = load i32**, i32*** %9, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32**, i32*** %11, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %20, align 4
  call void %140(i32* %145, i32 %150, i32* %155, i32 %160, i32 %161, i32 %162)
  br label %163

163:                                              ; preds = %139
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %18, align 4
  br label %112

166:                                              ; preds = %112
  br label %167

167:                                              ; preds = %33, %124, %166, %88
  ret void
}

declare dso_local %struct.TYPE_5__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @av_image_get_linesize(i32, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
