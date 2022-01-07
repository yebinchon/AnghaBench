; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_channel_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_channel_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }

@FIR = common dso_local global i64 0, align 8
@IIR = common dso_local global i64 0, align 8
@PARAM_FIR = common dso_local global i32 0, align 4
@PARAM_IIR = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Total filter orders too high.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"FIR and IIR filters must use the same precision.\0A\00", align 1
@PARAM_HUFFOFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid huff_lsbs.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*, i32)* @read_channel_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_channel_params(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %19
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %25
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %11, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i64, i64* @FIR, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %30
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %12, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i64, i64* @IIR, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %35
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %13, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PARAM_FIR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %4
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @get_bits1(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* @FIR, align 8
  %53 = call i32 @read_filter_params(%struct.TYPE_8__* %48, i32* %49, i32 %50, i32 %51, i64 %52)
  store i32 %53, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %5, align 4
  br label %180

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %43
  br label %59

59:                                               ; preds = %58, %4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PARAM_IIR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load i32*, i32** %8, align 8
  %68 = call i64 @get_bits1(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i64, i64* @IIR, align 8
  %76 = call i32 @read_filter_params(%struct.TYPE_8__* %71, i32* %72, i32 %73, i32 %74, i64 %75)
  store i32 %76, i32* %14, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  br label %180

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %85, %88
  %90 = icmp sgt i32 %89, 8
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 @av_log(i32 %94, i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %5, align 4
  br label %180

98:                                               ; preds = %82
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %98
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = call i32 @av_log(i32 %119, i32 %120, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %5, align 4
  br label %180

123:                                              ; preds = %108, %103, %98
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %133, %128, %123
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @PARAM_HUFFOFFSET, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load i32*, i32** %8, align 8
  %148 = call i64 @get_bits1(i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @get_sbits(i32* %151, i32 15)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %146
  br label %156

156:                                              ; preds = %155, %139
  %157 = load i32*, i32** %8, align 8
  %158 = call i8* @get_bits(i32* %157, i32 2)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = call i8* @get_bits(i32* %161, i32 5)
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %168, 24
  br i1 %169, label %170, label %179

170:                                              ; preds = %156
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = call i32 @av_log(i32 %173, i32 %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  store i32 0, i32* %177, align 8
  %178 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %178, i32* %5, align 4
  br label %180

179:                                              ; preds = %156
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %170, %116, %91, %78, %55
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @read_filter_params(%struct.TYPE_8__*, i32*, i32, i32, i64) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
