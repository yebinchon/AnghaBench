; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_expand_script.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_expand_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_script = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No events in script\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sbg_script*)* @expand_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_script(i8* %0, %struct.sbg_script* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sbg_script*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sbg_script* %1, %struct.sbg_script** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.sbg_script*, %struct.sbg_script** %5, align 8
  %11 = call i32 @expand_timestamps(i8* %9, %struct.sbg_script* %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.sbg_script*, %struct.sbg_script** %5, align 8
  %15 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.sbg_script*, %struct.sbg_script** %5, align 8
  %21 = load %struct.sbg_script*, %struct.sbg_script** %5, align 8
  %22 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @expand_tseq(i8* %19, %struct.sbg_script* %20, i32* %8, i32 0, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load %struct.sbg_script*, %struct.sbg_script** %5, align 8
  %38 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 @av_log(i8* %42, i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %3, align 4
  br label %66

46:                                               ; preds = %36
  %47 = load %struct.sbg_script*, %struct.sbg_script** %5, align 8
  %48 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.sbg_script*, %struct.sbg_script** %5, align 8
  %53 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.sbg_script*, %struct.sbg_script** %5, align 8
  %56 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sbg_script*, %struct.sbg_script** %5, align 8
  %64 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %51, %46
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %41, %30
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @expand_timestamps(i8*, %struct.sbg_script*) #1

declare dso_local i32 @expand_tseq(i8*, %struct.sbg_script*, i32*, i32, i32*) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
