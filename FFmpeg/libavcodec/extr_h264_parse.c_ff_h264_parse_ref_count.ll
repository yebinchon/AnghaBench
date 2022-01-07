; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_ff_h264_parse_ref_count.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_ff_h264_parse_ref_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@PICT_FRAME = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"reference overflow %u > %u or %u > %u\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"reference overflow %u > %u \0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_parse_ref_count(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %135

36:                                               ; preds = %7
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @PICT_FRAME, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 15, i32 31
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @get_bits1(i32* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %36
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @get_ue_golomb(i32* %49)
  %51 = add nsw i32 %50, 1
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @get_ue_golomb(i32* %58)
  %60 = add nsw i32 %59, 1
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  br label %66

63:                                               ; preds = %48
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 2, i32* %16, align 4
  br label %73

72:                                               ; preds = %67
  store i32 1, i32* %16, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ugt i32 %77, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %16, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %113

84:                                               ; preds = %81
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ugt i32 %88, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %84, %73
  %93 = load i8*, i8** %15, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, i8*, i32, i32, ...) @av_log(i8* %93, i32 %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %100, i32 %104, i32 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 0, i32* %109, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 0, i32* %111, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 0, i32* %112, align 4
  br label %143

113:                                              ; preds = %84, %81
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ugt i32 %117, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %113
  %122 = load i8*, i8** %15, align 8
  %123 = load i32, i32* @AV_LOG_DEBUG, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, i32, i8*, i32, i32, ...) @av_log(i8* %122, i32 %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %129)
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %121, %113
  br label %134

134:                                              ; preds = %133
  br label %140

135:                                              ; preds = %7
  store i32 0, i32* %16, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 0, i32* %137, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %134
  %141 = load i32, i32* %16, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  store i32 0, i32* %8, align 4
  br label %150

143:                                              ; preds = %92
  %144 = load i32*, i32** %9, align 8
  store i32 0, i32* %144, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 0, i32* %146, align 4
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 0, i32* %148, align 4
  %149 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %143, %140
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_ue_golomb(i32*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
