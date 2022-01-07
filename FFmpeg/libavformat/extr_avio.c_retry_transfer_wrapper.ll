; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_retry_transfer_wrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_retry_transfer_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32 }

@AVERROR_EXIT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@AVIO_FLAG_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32, i32 (%struct.TYPE_5__*, i32*, i32)*)* @retry_transfer_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retry_transfer_wrapper(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 (%struct.TYPE_5__*, i32*, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.TYPE_5__*, i32*, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (%struct.TYPE_5__*, i32*, i32)* %4, i32 (%struct.TYPE_5__*, i32*, i32)** %11, align 8
  store i32 5, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %115, %42, %5
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %119

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = call i64 @ff_check_interrupt(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %26, i32* %6, align 4
  br label %121

27:                                               ; preds = %20
  %28 = load i32 (%struct.TYPE_5__*, i32*, i32)*, i32 (%struct.TYPE_5__*, i32*, i32)** %11, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i32 %28(%struct.TYPE_5__* %29, i32* %33, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @EINTR, align 4
  %40 = call i32 @AVERROR(i32 %39)
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %16

43:                                               ; preds = %27
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AVIO_FLAG_NONBLOCK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %121

52:                                               ; preds = %43
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = call i32 @AVERROR(i32 %54)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %14, align 4
  br label %88

63:                                               ; preds = %57
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load i64, i64* %15, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call i64 (...) @av_gettime_relative()
  store i64 %72, i64* %15, align 8
  br label %85

73:                                               ; preds = %68
  %74 = call i64 (...) @av_gettime_relative()
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = icmp sgt i64 %74, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @EIO, align 4
  %83 = call i32 @AVERROR(i32 %82)
  store i32 %83, i32* %6, align 4
  br label %121

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %71
  br label %86

86:                                               ; preds = %85, %63
  %87 = call i32 @av_usleep(i32 1000)
  br label %88

88:                                               ; preds = %86, %60
  br label %109

89:                                               ; preds = %52
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @AVERROR_EOF, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32, i32* %13, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  br label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @AVERROR_EOF, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %6, align 4
  br label %121

102:                                              ; preds = %89
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %121

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %88
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @FFMAX(i32 %113, i32 2)
  store i32 %114, i32* %14, align 4
  store i64 0, i64* %15, align 8
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %13, align 4
  br label %16

119:                                              ; preds = %16
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %105, %100, %81, %50, %25
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i64 @ff_check_interrupt(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_gettime_relative(...) #1

declare dso_local i32 @av_usleep(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
