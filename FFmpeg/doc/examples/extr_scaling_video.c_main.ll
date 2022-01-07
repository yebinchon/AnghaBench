; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_scaling_video.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_scaling_video.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwsContext = type { i32 }

@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB24 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [239 x i8] c"Usage: %s output_file output_size\0AAPI example program to show how to scale an image with libswscale.\0AThis program generates a series of pictures, rescales them to the given output_size and saves them to an output file named output_file\0A.\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Invalid size '%s', must be in the form WxH or a valid size abbreviation\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not open destination file %s\0A\00", align 1
@SWS_BILINEAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [88 x i8] c"Impossible to create scale context for the conversion fmt:%s s:%dx%d -> fmt:%s s:%dx%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Could not allocate source image\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Could not allocate destination image\0A\00", align 1
@.str.7 = private unnamed_addr constant [111 x i8] c"Scaling succeeded. Play the output file with the command:\0Affplay -f rawvideo -pix_fmt %s -video_size %dx%d %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4 x i32*], align 16
  %7 = alloca [4 x i32*], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.SwsContext*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 320, i32* %10, align 4
  store i32 240, i32* %11, align 4
  %23 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @AV_PIX_FMT_RGB24, align 4
  store i32 %24, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %2
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %17, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = call i64 @av_parse_video_size(i32* %12, i32* %13, i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %34
  %50 = load i8*, i8** %17, align 8
  %51 = call i32* @fopen(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %51, i32** %18, align 8
  %52 = load i32*, i32** %18, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** %17, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @SWS_BILINEAR, align 4
  %67 = call %struct.SwsContext* @sws_getContext(i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32* null, i32* null, i32* null)
  store %struct.SwsContext* %67, %struct.SwsContext** %20, align 8
  %68 = load %struct.SwsContext*, %struct.SwsContext** %20, align 8
  %69 = icmp ne %struct.SwsContext* %68, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i8* @av_get_pix_fmt_name(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i8* @av_get_pix_fmt_name(i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0), i8* %73, i32 %74, i32 %75, i8* %77, i32 %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %22, align 4
  br label %140

83:                                               ; preds = %59
  %84 = getelementptr inbounds [4 x i32*], [4 x i32*]* %6, i64 0, i64 0
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @av_image_alloc(i32** %84, i32* %85, i32 %86, i32 %87, i32 %88, i32 16)
  store i32 %89, i32* %22, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %140

94:                                               ; preds = %83
  %95 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @av_image_alloc(i32** %95, i32* %96, i32 %97, i32 %98, i32 %99, i32 1)
  store i32 %100, i32* %22, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @stderr, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %140

105:                                              ; preds = %94
  %106 = load i32, i32* %22, align 4
  store i32 %106, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %107

107:                                              ; preds = %129, %105
  %108 = load i32, i32* %21, align 4
  %109 = icmp slt i32 %108, 100
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  %111 = getelementptr inbounds [4 x i32*], [4 x i32*]* %6, i64 0, i64 0
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %21, align 4
  %116 = call i32 @fill_yuv_image(i32** %111, i32* %112, i32 %113, i32 %114, i32 %115)
  %117 = load %struct.SwsContext*, %struct.SwsContext** %20, align 8
  %118 = getelementptr inbounds [4 x i32*], [4 x i32*]* %6, i64 0, i64 0
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %120 = load i32, i32* %11, align 4
  %121 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %123 = call i32 @sws_scale(%struct.SwsContext* %117, i32** %118, i32* %119, i32 0, i32 %120, i32** %121, i32* %122)
  %124 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %125 = load i32*, i32** %124, align 16
  %126 = load i32, i32* %19, align 4
  %127 = load i32*, i32** %18, align 8
  %128 = call i32 @fwrite(i32* %125, i32 1, i32 %126, i32* %127)
  br label %129

129:                                              ; preds = %110
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %21, align 4
  br label %107

132:                                              ; preds = %107
  %133 = load i32, i32* @stderr, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i8* @av_get_pix_fmt_name(i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i8*, i8** %17, align 8
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.7, i64 0, i64 0), i8* %135, i32 %136, i32 %137, i8* %138)
  br label %140

140:                                              ; preds = %132, %102, %91, %70
  %141 = load i32*, i32** %18, align 8
  %142 = call i32 @fclose(i32* %141)
  %143 = getelementptr inbounds [4 x i32*], [4 x i32*]* %6, i64 0, i64 0
  %144 = call i32 @av_freep(i32** %143)
  %145 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %146 = call i32 @av_freep(i32** %145)
  %147 = load %struct.SwsContext*, %struct.SwsContext** %20, align 8
  %148 = call i32 @sws_freeContext(%struct.SwsContext* %147)
  %149 = load i32, i32* %22, align 4
  %150 = icmp slt i32 %149, 0
  %151 = zext i1 %150 to i32
  ret i32 %151
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @av_parse_video_size(i32*, i32*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.SwsContext* @sws_getContext(i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_alloc(i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @fill_yuv_image(i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @sws_scale(%struct.SwsContext*, i32**, i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @sws_freeContext(%struct.SwsContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
