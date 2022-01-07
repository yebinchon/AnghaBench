; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_skip_multiple_stsd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_skip_multiple_stsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ff_codec_movvideo_tags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"AV1x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"AVup\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"apcn\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"apch\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dvpp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dvcp\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"multiple fourcc not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32, i32)* @mov_skip_multiple_stsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_skip_multiple_stsd(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @ff_codec_movvideo_tags, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @ff_codec_get_id(i32 %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %54, %59
  br i1 %60, label %65, label %74

61:                                               ; preds = %46
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @MKTAG(i8 signext 106, i8 signext 112, i8 signext 101, i8 signext 103)
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61, %53
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* @AV_LOG_WARNING, align 4
  %70 = call i32 @av_log(%struct.TYPE_5__* %68, i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @avio_skip(i32* %71, i32 %72)
  store i32 1, i32* %6, align 4
  br label %75

74:                                               ; preds = %61, %53, %42, %38, %34, %30, %26, %18, %5
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %65
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @ff_codec_get_id(i32, i32) #1

declare dso_local i32 @AV_RL32(i8*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
