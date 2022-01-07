; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_read_le.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_read_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid le value at %s: bitstream ended.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i8*, i32*, i32*)* @cbs_vp9_read_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_vp9_read_le(%struct.TYPE_4__* %0, i32* %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [33 x i8], align 16
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* %10, align 4
  %20 = srem i32 %19, 8
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @av_assert0(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @get_bits_count(i32* %29)
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %28, %6
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @get_bits_left(i32* %32)
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @av_log(i32 %39, i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %7, align 4
  br label %110

44:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @get_bits(i32* %50, i32 8)
  %52 = load i32, i32* %16, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 8
  store i32 %58, i32* %16, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %59
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %93, %64
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i32, i32* %18, align 4
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %75, %76
  %78 = ashr i32 %74, %77
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 49, i32 48
  %83 = trunc i32 %82 to i8
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [33 x i8], [33 x i8]* %17, i64 0, i64 %87
  store i8 %83, i8* %88, align 1
  br label %89

89:                                               ; preds = %73
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %18, align 4
  br label %70

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 8
  store i32 %95, i32* %16, align 4
  br label %65

96:                                               ; preds = %65
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [33 x i8], [33 x i8]* %17, i64 0, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = getelementptr inbounds [33 x i8], [33 x i8]* %17, i64 0, i64 0
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__* %100, i32 %101, i8* %102, i32* %103, i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %96, %59
  %108 = load i32, i32* %14, align 4
  %109 = load i32*, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %107, %36
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__*, i32, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
