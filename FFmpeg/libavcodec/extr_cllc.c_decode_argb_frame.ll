; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cllc.c_decode_argb_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cllc.c_decode_argb_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not read code table %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_10__*)* @decode_argb_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_argb_frame(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %18, align 16
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 128, i32* %19, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 128, i32* %20, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 128, i32* %21, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @skip_bits(i32* %27, i32 16)
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %63, %3
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %36
  %38 = call i32 @read_code_table(%struct.TYPE_9__* %33, i32* %34, i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %48
  %50 = call i32 @ff_free_vlc(i32* %49)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %42

54:                                               ; preds = %42
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @av_log(%struct.TYPE_11__* %57, i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %104

62:                                               ; preds = %32
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %29

66:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @read_argb_line(%struct.TYPE_9__* %74, i32* %75, i32* %76, i32* %77, i32* %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %9, align 8
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %67

91:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %100, %91
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %97
  %99 = call i32 @ff_free_vlc(i32* %98)
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %92

103:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %54
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @read_code_table(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @ff_free_vlc(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i32 @read_argb_line(%struct.TYPE_9__*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
