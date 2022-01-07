; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_ff_h264_decode_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_ff_h264_decode_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"avcC %d too short\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Decoding sps %d from avcC failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Decoding pps %d from avcC failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_decode_extradata(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %7
  store i32 -1, i32* %8, align 4
  br label %165

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %151

32:                                               ; preds = %27
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %20, align 8
  %34 = load i32*, i32** %12, align 8
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 7
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %15, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @av_log(i8* %38, i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %8, align 4
  br label %165

43:                                               ; preds = %32
  %44 = load i32*, i32** %20, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 31
  store i32 %47, i32* %18, align 4
  %48 = load i32*, i32** %20, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  store i32* %49, i32** %20, align 8
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %92, %43
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %50
  %55 = load i32*, i32** %20, align 8
  %56 = call i32 @AV_RB16(i32* %55)
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = load i32*, i32** %20, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = sub nsw i64 %61, %67
  %69 = icmp sgt i64 %59, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %71, i32* %8, align 4
  br label %165

72:                                               ; preds = %54
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* %19, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @decode_extradata_ps_mp4(i32* %73, i32 %74, i32* %75, i32 %76, i8* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load i8*, i8** %15, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @av_log(i8* %82, i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %8, align 4
  br label %165

87:                                               ; preds = %72
  %88 = load i32, i32* %19, align 4
  %89 = load i32*, i32** %20, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %20, align 8
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %50

95:                                               ; preds = %50
  %96 = load i32*, i32** %20, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %20, align 8
  %98 = load i32, i32* %96, align 4
  store i32 %98, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %141, %95
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %144

103:                                              ; preds = %99
  %104 = load i32*, i32** %20, align 8
  %105 = call i32 @AV_RB16(i32* %104)
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = load i32*, i32** %20, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = sub nsw i64 %110, %116
  %118 = icmp sgt i64 %108, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %103
  %120 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %120, i32* %8, align 4
  br label %165

121:                                              ; preds = %103
  %122 = load i32*, i32** %20, align 8
  %123 = load i32, i32* %19, align 4
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i8*, i8** %15, align 8
  %127 = call i32 @decode_extradata_ps_mp4(i32* %122, i32 %123, i32* %124, i32 %125, i8* %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %121
  %131 = load i8*, i8** %15, align 8
  %132 = load i32, i32* @AV_LOG_ERROR, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @av_log(i8* %131, i32 %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %8, align 4
  br label %165

136:                                              ; preds = %121
  %137 = load i32, i32* %19, align 4
  %138 = load i32*, i32** %20, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %20, align 8
  br label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %99

144:                                              ; preds = %99
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 3
  %149 = add nsw i32 %148, 1
  %150 = load i32*, i32** %13, align 8
  store i32 %149, i32* %150, align 4
  br label %163

151:                                              ; preds = %27
  %152 = load i32*, i32** %12, align 8
  store i32 0, i32* %152, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = load i8*, i8** %15, align 8
  %157 = call i32 @decode_extradata_ps(i32* %153, i32 %154, i32* %155, i32 0, i8* %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %16, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %8, align 4
  br label %165

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162, %144
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %163, %160, %130, %119, %81, %70, %37, %26
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

declare dso_local i32 @av_log(i8*, i32, i8*, i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @decode_extradata_ps_mp4(i32*, i32, i32*, i32, i8*) #1

declare dso_local i32 @decode_extradata_ps(i32*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
