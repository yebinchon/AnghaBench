; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_ff_dca_core_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_ff_dca_core_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }

@HEADER_CORE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Read past end of core frame\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dca_core_parse(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 7
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @init_get_bits8(i32* %18, i32* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %92

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = call i32 @parse_frame_header(%struct.TYPE_8__* %31)
  store i32 %32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %92

36:                                               ; preds = %25
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = call i32 @alloc_sample_buffer(%struct.TYPE_8__* %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %92

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = load i32, i32* @HEADER_CORE, align 4
  %45 = call i32 @parse_frame_data(%struct.TYPE_8__* %43, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %92

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = call i32 @parse_optional_info(%struct.TYPE_8__* %50)
  store i32 %51, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %92

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %70, 8
  %72 = call i64 @ff_dca_seek_bits(i32* %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %65
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* @AV_LOG_ERROR, align 4
  %79 = call i32 @av_log(%struct.TYPE_9__* %77, i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AV_EF_EXPLODE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %65
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %88, %53, %47, %40, %34, %23
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @parse_frame_header(%struct.TYPE_8__*) #1

declare dso_local i32 @alloc_sample_buffer(%struct.TYPE_8__*) #1

declare dso_local i32 @parse_frame_data(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @parse_optional_info(%struct.TYPE_8__*) #1

declare dso_local i64 @ff_dca_seek_bits(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
