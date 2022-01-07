; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_seq_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_seq_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Width/height changing in CAVS\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Dimensions invalid\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"frame_rate_code %d is invalid\0A\00", align 1
@ff_mpeg12_frame_rate_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @decode_seq_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_seq_header(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  %10 = call i8* @get_bits(i32* %9, i32 8)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 10
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  %15 = call i8* @get_bits(i32* %14, i32 8)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 9
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %20 = call i32 @skip_bits1(i32* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  %23 = call i8* @get_bits(i32* %22, i32 14)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 6
  %27 = call i8* @get_bits(i32* %26, i32 14)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33, %1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44, %38
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @avpriv_report_missing_feature(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %55, i32* %2, align 4
  br label %160

56:                                               ; preds = %44, %33
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %65, i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %68, i32* %2, align 4
  br label %160

69:                                               ; preds = %59
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = call i32 @skip_bits(i32* %71, i32 2)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 6
  %75 = call i32 @skip_bits(i32* %74, i32 3)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 6
  %78 = call i8* @get_bits(i32* %77, i32 4)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  %83 = call i8* @get_bits(i32* %82, i32 4)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %69
  %88 = load i32, i32* %4, align 4
  %89 = icmp sgt i32 %88, 13
  br i1 %89, label %90, label %97

90:                                               ; preds = %87, %69
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* @AV_LOG_WARNING, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %93, i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  store i32 1, i32* %4, align 4
  br label %97

97:                                               ; preds = %90, %87
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 6
  %100 = call i32 @skip_bits(i32* %99, i32 18)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 6
  %103 = call i32 @skip_bits1(i32* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 6
  %106 = call i32 @skip_bits(i32* %105, i32 12)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 6
  %109 = call i32 @get_bits1(i32* %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ff_set_dimensions(%struct.TYPE_8__* %114, i32 %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %97
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %160

122:                                              ; preds = %97
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 15
  %133 = ashr i32 %132, 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 15
  %140 = ashr i32 %139, 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load i32*, i32** @ff_mpeg12_frame_rate_tab, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %122
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %158 = call i32 @ff_cavs_init_top_lines(%struct.TYPE_7__* %157)
  store i32 %158, i32* %2, align 4
  br label %160

159:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %156, %120, %62, %50
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ff_cavs_init_top_lines(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
