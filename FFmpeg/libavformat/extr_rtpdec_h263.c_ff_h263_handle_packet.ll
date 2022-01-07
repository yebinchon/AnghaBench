; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_h263.c_ff_h263_handle_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_h263.c_ff_h263_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Too short H.263 RTP packet\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h263_handle_packet(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_7__* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %9
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 @av_log(i32* %28, i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %10, align 4
  br label %107

32:                                               ; preds = %9
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 @AV_RB16(i32* %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %21, align 4
  %36 = and i32 %35, 1024
  %37 = ashr i32 %36, 9
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %21, align 4
  %39 = and i32 %38, 512
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %21, align 4
  %41 = and i32 %40, 504
  %42 = ashr i32 %41, 3
  store i32 %42, i32* %24, align 4
  %43 = load i32*, i32** %16, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32* %44, i32** %16, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %23, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = load i32*, i32** %16, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32* %51, i32** %16, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %49, %32
  %55 = load i32, i32* %24, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %24, align 4
  %59 = load i32*, i32** %16, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %16, align 8
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %17, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %57, %54
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 @av_log(i32* %69, i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %10, align 4
  br label %107

73:                                               ; preds = %65
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %22, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i64 @av_new_packet(%struct.TYPE_7__* %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = call i32 @av_log(i32* %81, i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %10, align 4
  br label %107

86:                                               ; preds = %73
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %20, align 8
  %95 = load i32, i32* %22, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load i32*, i32** %20, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %20, align 8
  store i32 0, i32* %98, align 4
  %100 = load i32*, i32** %20, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %20, align 8
  store i32 0, i32* %100, align 4
  br label %102

102:                                              ; preds = %97, %86
  %103 = load i32*, i32** %20, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @memcpy(i32* %103, i32* %104, i32 %105)
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %102, %80, %68, %27
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
