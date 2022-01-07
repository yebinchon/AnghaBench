; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_strip_wavpack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_strip_wavpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@WV_HEADER_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*)* @mkv_strip_wavpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_strip_wavpack(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32* @av_malloc(i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %126

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %96, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @WV_HEADER_SIZE, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %118

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @ff_wv_parse_header(%struct.TYPE_3__* %12, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %123

33:                                               ; preds = %27
  %34 = load i32, i32* @WV_HEADER_SIZE, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %5, align 8
  %38 = load i32, i32* @WV_HEADER_SIZE, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %11, align 4
  br label %123

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @AV_WL32(i32* %55, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %51, %47
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @AV_WL32(i32* %65, i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @AV_WL32(i32* %73, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 8
  store i32 %78, i32* %10, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %61
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %82, %61
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @AV_WL32(i32* %90, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %86, %82
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @memcpy(i32* %100, i32* %101, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %10, align 4
  br label %23

118:                                              ; preds = %23
  %119 = load i32*, i32** %8, align 8
  %120 = load i32**, i32*** %6, align 8
  store i32* %119, i32** %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32*, i32** %7, align 8
  store i32 %121, i32* %122, align 4
  store i32 0, i32* %4, align 4
  br label %126

123:                                              ; preds = %45, %32
  %124 = call i32 @av_freep(i32** %8)
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %123, %118, %19
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_wv_parse_header(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
