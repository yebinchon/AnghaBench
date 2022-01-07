; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tscc.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tscc.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_17__*, i32, i32, %struct.TYPE_22__, i64, i32, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32, i64, i32, i32* }
%struct.TYPE_20__ = type { i32, i32** }
%struct.TYPE_19__ = type { i32, i32* }

@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Inflate reset error: %d\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Inflate error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_19__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_21__* %0, i8* %1, i32* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %12, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %13, align 8
  store i32 0, i32* %15, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %39 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %40 = call i32* @av_packet_get_side_data(%struct.TYPE_19__* %38, i32 %39, i32* %16)
  store i32* %40, i32** %17, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @AVPALETTE_SIZE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  store i32 1, i32* %15, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* @AVPALETTE_SIZE, align 4
  %53 = call i32 @memcpy(i32* %50, i32* %51, i32 %52)
  br label %63

54:                                               ; preds = %43, %37
  %55 = load i32*, i32** %17, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @av_log(%struct.TYPE_21__* %58, i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  %67 = call i32 @inflateReset(%struct.TYPE_22__* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @Z_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @av_log(%struct.TYPE_21__* %72, i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %76, i32* %5, align 4
  br label %194

77:                                               ; preds = %64
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 3
  store i32* %78, i32** %81, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  store i64 %94, i64* %97, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 4
  %100 = load i32, i32* @Z_FINISH, align 4
  %101 = call i32 @inflate(%struct.TYPE_22__* %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @Z_DATA_ERROR, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %77
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %5, align 4
  br label %194

110:                                              ; preds = %105, %77
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @Z_OK, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @Z_STREAM_END, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @Z_DATA_ERROR, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @av_log(%struct.TYPE_21__* %123, i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %127, i32* %5, align 4
  br label %194

128:                                              ; preds = %118, %114, %110
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %131 = call i32 @ff_reget_buffer(%struct.TYPE_21__* %129, %struct.TYPE_20__* %130, i32 0)
  store i32 %131, i32* %14, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %5, align 4
  br label %194

135:                                              ; preds = %128
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @Z_DATA_ERROR, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %162

139:                                              ; preds = %135
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %147, %151
  %153 = call i32 @bytestream2_init(i32* %141, i32 %144, i64 %152)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 2
  %161 = call i32 @ff_msrle_decode(%struct.TYPE_21__* %154, %struct.TYPE_20__* %155, i32 %158, i32* %160)
  br label %162

162:                                              ; preds = %139, %135
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %162
  %171 = load i32, i32* %15, align 4
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* @AVPALETTE_SIZE, align 4
  %183 = call i32 @memcpy(i32* %178, i32* %181, i32 %182)
  br label %184

184:                                              ; preds = %170, %162
  %185 = load i8*, i8** %7, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %187 = call i32 @av_frame_ref(i8* %185, %struct.TYPE_20__* %186)
  store i32 %187, i32* %14, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %5, align 4
  br label %194

191:                                              ; preds = %184
  %192 = load i32*, i32** %8, align 8
  store i32 1, i32* %192, align 4
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %191, %189, %133, %122, %108, %71
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, i32) #1

declare dso_local i32 @inflateReset(%struct.TYPE_22__*) #1

declare dso_local i32 @inflate(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32, i64) #1

declare dso_local i32 @ff_msrle_decode(%struct.TYPE_21__*, %struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
