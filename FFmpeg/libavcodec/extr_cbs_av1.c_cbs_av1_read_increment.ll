; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_read_increment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_read_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Invalid increment value at %s: bitstream ended.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32, i8*, i32*)* @cbs_av1_read_increment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_av1_read_increment(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [33 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 32
  br label %27

27:                                               ; preds = %21, %6
  %28 = phi i1 [ false, %6 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @av_assert0(i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @get_bits_count(i32* %36)
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %35, %27
  store i32 0, i32* %16, align 4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %72, %38
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @get_bits_left(i32* %45)
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @av_log(i32 %51, i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %7, align 4
  br label %91

56:                                               ; preds = %44
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @get_bits1(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %16, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds [33 x i8], [33 x i8]* %17, i64 0, i64 %63
  store i8 49, i8* %64, align 1
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %72

67:                                               ; preds = %56
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds [33 x i8], [33 x i8]* %17, i64 0, i64 %70
  store i8 48, i8* %71, align 1
  br label %73

72:                                               ; preds = %60
  br label %40

73:                                               ; preds = %67, %40
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [33 x i8], [33 x i8]* %17, i64 0, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds [33 x i8], [33 x i8]* %17, i64 0, i64 0
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__* %82, i32 %83, i8* %84, i32* null, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %73
  %89 = load i32, i32* %14, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %88, %48
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i8*) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__*, i32, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
