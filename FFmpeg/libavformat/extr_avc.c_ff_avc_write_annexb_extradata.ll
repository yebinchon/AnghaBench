; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avc.c_ff_avc_write_annexb_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avc.c_ff_avc_write_annexb_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_avc_write_annexb_extradata(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32**, i32*** %6, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @AV_RB32(i32* %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @AV_RB24(i32* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 0, i32* %4, align 4
  br label %110

25:                                               ; preds = %20, %3
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 11
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %25
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %4, align 4
  br label %110

36:                                               ; preds = %29
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  %39 = call i32 @AV_RB16(i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 11, %40
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %4, align 4
  br label %110

47:                                               ; preds = %36
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 9, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = call i32 @AV_RB16(i32* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 11, %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %4, align 4
  br label %110

63:                                               ; preds = %47
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 8, %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32* @av_mallocz(i64 %71)
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %4, align 4
  br label %110

78:                                               ; preds = %63
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = call i32 @AV_WB32(i32* %80, i32 1)
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @memcpy(i32* %83, i32* %85, i32 %86)
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 4, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = call i32 @AV_WB32(i32* %92, i32 1)
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 11, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @memcpy(i32* %98, i32* %103, i32 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = load i32**, i32*** %6, align 8
  store i32* %106, i32** %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %78, %75, %61, %45, %34, %24
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32* @av_mallocz(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
