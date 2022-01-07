; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_recheck_discard_flags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_recheck_discard_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { i32, i32, i32, i64, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AVDISCARD_ALL = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Now receiving stream_index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"No longer receiving stream_index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.representation**, i32)* @recheck_discard_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recheck_discard_flags(i32* %0, %struct.representation** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.representation**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.representation*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.representation** %1, %struct.representation*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %104, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %107

15:                                               ; preds = %11
  %16 = load %struct.representation**, %struct.representation*** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.representation*, %struct.representation** %16, i64 %18
  %20 = load %struct.representation*, %struct.representation** %19, align 8
  store %struct.representation* %20, %struct.representation** %9, align 8
  %21 = load %struct.representation*, %struct.representation** %9, align 8
  %22 = getelementptr inbounds %struct.representation, %struct.representation* %21, i32 0, i32 7
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load %struct.representation*, %struct.representation** %9, align 8
  %27 = getelementptr inbounds %struct.representation, %struct.representation* %26, i32 0, i32 7
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AVDISCARD_ALL, align 8
  %32 = icmp slt i64 %30, %31
  br label %33

33:                                               ; preds = %25, %15
  %34 = phi i1 [ true, %15 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %33
  %39 = load %struct.representation*, %struct.representation** %9, align 8
  %40 = getelementptr inbounds %struct.representation, %struct.representation* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %79, label %43

43:                                               ; preds = %38
  %44 = load %struct.representation*, %struct.representation** %9, align 8
  %45 = getelementptr inbounds %struct.representation, %struct.representation* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.representation*, %struct.representation** %9, align 8
  %47 = getelementptr inbounds %struct.representation, %struct.representation* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %66, %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load %struct.representation*, %struct.representation** %9, align 8
  %54 = getelementptr inbounds %struct.representation, %struct.representation* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.representation**, %struct.representation*** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.representation*, %struct.representation** %56, i64 %58
  %60 = load %struct.representation*, %struct.representation** %59, align 8
  %61 = getelementptr inbounds %struct.representation, %struct.representation* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @FFMAX(i32 %55, i32 %62)
  %64 = load %struct.representation*, %struct.representation** %9, align 8
  %65 = getelementptr inbounds %struct.representation, %struct.representation* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %48

69:                                               ; preds = %48
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.representation*, %struct.representation** %9, align 8
  %72 = call i32 @reopen_demux_for_component(i32* %70, %struct.representation* %71)
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @AV_LOG_INFO, align 4
  %75 = load %struct.representation*, %struct.representation** %9, align 8
  %76 = getelementptr inbounds %struct.representation, %struct.representation* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @av_log(i32* %73, i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %103

79:                                               ; preds = %38, %33
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %79
  %83 = load %struct.representation*, %struct.representation** %9, align 8
  %84 = getelementptr inbounds %struct.representation, %struct.representation* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load %struct.representation*, %struct.representation** %9, align 8
  %89 = call i32 @close_demux_for_component(%struct.representation* %88)
  %90 = load %struct.representation*, %struct.representation** %9, align 8
  %91 = getelementptr inbounds %struct.representation, %struct.representation* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.representation*, %struct.representation** %9, align 8
  %94 = getelementptr inbounds %struct.representation, %struct.representation* %93, i32 0, i32 1
  %95 = call i32 @ff_format_io_close(i32 %92, i32* %94)
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @AV_LOG_INFO, align 4
  %98 = load %struct.representation*, %struct.representation** %9, align 8
  %99 = getelementptr inbounds %struct.representation, %struct.representation* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @av_log(i32* %96, i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %87, %82, %79
  br label %103

103:                                              ; preds = %102, %69
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %11

107:                                              ; preds = %11
  ret void
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @reopen_demux_for_component(i32*, %struct.representation*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @close_demux_for_component(%struct.representation*) #1

declare dso_local i32 @ff_format_io_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
