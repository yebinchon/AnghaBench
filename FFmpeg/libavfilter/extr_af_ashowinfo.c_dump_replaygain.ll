; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ashowinfo.c_dump_replaygain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ashowinfo.c_dump_replaygain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"replaygain: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid data\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"track gain\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"track peak\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"album gain\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"album peak\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @dump_replaygain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_replaygain(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @AV_LOG_INFO, align 4
  %8 = call i32 @av_log(i32* %6, i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @AV_LOG_INFO, align 4
  %17 = call i32 @av_log(i32* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @print_gain(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @print_peak(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @print_gain(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @print_peak(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @print_gain(i32*, i8*, i32) #1

declare dso_local i32 @print_peak(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
