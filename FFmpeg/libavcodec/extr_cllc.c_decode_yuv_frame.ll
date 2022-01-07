; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cllc.c_decode_yuv_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cllc.c_decode_yuv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i64** }

@.str = private unnamed_addr constant [12 x i8] c"Blocked YUV\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not read code table %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_11__*)* @decode_yuv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_yuv_frame(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x i64*], align 16
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 128, i32* %19, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 128, i32* %20, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 128, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i64**, i64*** %23, align 8
  %25 = getelementptr inbounds i64*, i64** %24, i64 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 0
  store i64* %26, i64** %27, align 16
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64**, i64*** %29, align 8
  %31 = getelementptr inbounds i64*, i64** %30, i64 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 1
  store i64* %32, i64** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64**, i64*** %35, align 8
  %37 = getelementptr inbounds i64*, i64** %36, i64 2
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 2
  store i64* %38, i64** %39, align 16
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @skip_bits(i32* %40, i32 8)
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @get_bits(i32* %42, i32 8)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = call i32 @avpriv_request_sample(%struct.TYPE_12__* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %51, i32* %4, align 4
  br label %156

52:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %87, %52
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %90

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %60
  %62 = call i32 @read_code_table(%struct.TYPE_10__* %57, i32* %58, i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %56
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %75, %65
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %72
  %74 = call i32 @ff_free_vlc(i32* %73)
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %66

78:                                               ; preds = %66
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @av_log(%struct.TYPE_12__* %81, i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  br label %156

86:                                               ; preds = %56
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %53

90:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %140, %90
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %143

97:                                               ; preds = %91
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %102 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 0
  %103 = load i64*, i64** %102, align 16
  %104 = call i32 @read_yuv_component_line(%struct.TYPE_10__* %98, i32* %99, i32* %100, i32* %101, i64* %103, i32 0)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %109 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 1
  %110 = load i64*, i64** %109, align 8
  %111 = call i32 @read_yuv_component_line(%struct.TYPE_10__* %105, i32* %106, i32* %107, i32* %108, i64* %110, i32 1)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %116 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 2
  %117 = load i64*, i64** %116, align 16
  %118 = call i32 @read_yuv_component_line(%struct.TYPE_10__* %112, i32* %113, i32* %114, i32* %115, i64* %117, i32 1)
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %136, %97
  %120 = load i32, i32* %14, align 4
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x i64*], [3 x i64*]* %10, i64 0, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = sext i32 %129 to i64
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64* %135, i64** %132, align 8
  br label %136

136:                                              ; preds = %122
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %119

139:                                              ; preds = %119
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %91

143:                                              ; preds = %91
  store i32 0, i32* %13, align 4
  br label %144

144:                                              ; preds = %152, %143
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %149
  %151 = call i32 @ff_free_vlc(i32* %150)
  br label %152

152:                                              ; preds = %147
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %144

155:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %78, %46
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @read_code_table(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @ff_free_vlc(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @read_yuv_component_line(%struct.TYPE_10__*, i32*, i32*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
