; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_param_convert.c_mmal_parse_video_codec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_param_convert.c_mmal_parse_video_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@mmal_parse_video_codec.video_codec_enums = internal global [7 x %struct.TYPE_4__] [%struct.TYPE_4__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 133 }, %struct.TYPE_4__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 134 }, %struct.TYPE_4__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 131 }, %struct.TYPE_4__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 132 }, %struct.TYPE_4__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 128 }, %struct.TYPE_4__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 129 }, %struct.TYPE_4__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 130 }], align 16
@.str = private unnamed_addr constant [5 x i8] c"h264\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"h263\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mpeg4\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mpeg2\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vp8\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vp7\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vp6\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_parse_video_codec(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @vcos_countof(%struct.TYPE_4__* getelementptr inbounds ([7 x %struct.TYPE_4__], [7 x %struct.TYPE_4__]* @mmal_parse_video_codec.video_codec_enums, i64 0, i64 0))
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @parse_enum(i32* %5, %struct.TYPE_4__* getelementptr inbounds ([7 x %struct.TYPE_4__], [7 x %struct.TYPE_4__]* @mmal_parse_video_codec.video_codec_enums, i64 0, i64 0), i32 %7, i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  ret i32 %12
}

declare dso_local i32 @parse_enum(i32*, %struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @vcos_countof(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
