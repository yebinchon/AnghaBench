; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_read_ns.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_read_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Invalid non-symmetric value at %s: bitstream ended.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i64, i8*, i32*, i64*)* @cbs_av1_read_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_av1_read_ns(%struct.TYPE_4__* %0, i32* %1, i64 %2, i8* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [33 x i8], align 16
  %21 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @av_assert0(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @get_bits_count(i32* %31)
  store i32 %32, i32* %18, align 4
  br label %33

33:                                               ; preds = %30, %6
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @av_log2(i64 %34)
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = shl i32 1, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %14, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @get_bits_left(i32* %42)
  %44 = load i32, i32* %19, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @av_log(i32 %49, i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %7, align 4
  br label %134

54:                                               ; preds = %33
  %55 = load i32, i32* %19, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i64 @get_bits(i32* %59, i32 %61)
  store i64 %62, i64* %15, align 8
  br label %64

63:                                               ; preds = %54
  store i64 0, i64* %15, align 8
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %15, align 8
  store i64 %69, i64* %17, align 8
  br label %79

70:                                               ; preds = %64
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @get_bits1(i32* %71)
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %15, align 8
  %74 = shl i64 %73, 1
  %75 = load i64, i64* %14, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load i64, i64* %16, align 8
  %78 = add nsw i64 %76, %77
  store i64 %78, i64* %17, align 8
  br label %79

79:                                               ; preds = %70, %68
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %131

84:                                               ; preds = %79
  store i32 0, i32* %21, align 4
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %19, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = load i64, i64* %15, align 8
  %92 = load i32, i32* %21, align 4
  %93 = zext i32 %92 to i64
  %94 = ashr i64 %91, %93
  %95 = and i64 %94, 1
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 49, i32 48
  %99 = trunc i32 %98 to i8
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 %101
  store i8 %99, i8* %102, align 1
  br label %103

103:                                              ; preds = %90
  %104 = load i32, i32* %21, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %21, align 4
  br label %85

106:                                              ; preds = %85
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %14, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i64, i64* %16, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 49, i32 48
  %115 = trunc i32 %114 to i8
  %116 = load i32, i32* %21, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %21, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 %118
  store i8 %115, i8* %119, align 1
  br label %120

120:                                              ; preds = %110, %106
  %121 = load i32, i32* %21, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %125 = load i32, i32* %18, align 4
  %126 = load i8*, i8** %11, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 0
  %129 = load i64, i64* %17, align 8
  %130 = call i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__* %124, i32 %125, i8* %126, i32* %127, i8* %128, i64 %129)
  br label %131

131:                                              ; preds = %120, %79
  %132 = load i64, i64* %17, align 8
  %133 = load i64*, i64** %13, align 8
  store i64 %132, i64* %133, align 8
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %131, %46
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @av_log2(i64) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i8*) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__*, i32, i8*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
