; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_render_fontconfig.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_render_fontconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"fontconfig is not available, ignoring font option.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FC_FILE = common dso_local global i32 0, align 4
@FcMatchPattern = common dso_local global i32 0, align 4
@FcResultMatch = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i8*)* @render_fontconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_fontconfig(%struct.TYPE_4__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AV_LOG_WARNING, align 4
  %14 = call i32 (i32, i32, i8*, ...) @av_log(i32 %12, i32 %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %9, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = call i32 @AVERROR(i32 %16)
  ret i32 %17
}

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
