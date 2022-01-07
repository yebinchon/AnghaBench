; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_uuidprof_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_uuidprof_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i32, i32 }

@INT32_MAX = common dso_local global double 0.000000e+00, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Frame rate %f outside supported range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PROF\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FPRF\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"APRF\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mp4a\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"VPRF\00", align 1
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"avc1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mp4v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @mov_write_uuidprof_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_uuidprof_tag(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %15, i64 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %8, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, 65536
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = sdiv i64 %46, %51
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %40
  %55 = phi i64 [ %52, %40 ], [ 0, %53 ]
  %56 = sitofp i64 %55 to double
  store double %56, double* %10, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 1000
  store i32 %60, i32* %11, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 1000
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 800, %65
  %67 = call i32 @FFMIN(i32 %64, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load double, double* %10, align 8
  %69 = fcmp olt double %68, 0.000000e+00
  br i1 %69, label %74, label %70

70:                                               ; preds = %54
  %71 = load double, double* %10, align 8
  %72 = load double, double* @INT32_MAX, align 8
  %73 = fcmp ogt double %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70, %54
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = load double, double* %10, align 8
  %78 = fdiv double %77, 6.553600e+04
  %79 = call i32 @av_log(%struct.TYPE_9__* %75, i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), double %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = call i32 @AVERROR(i32 %80)
  store i32 %81, i32* %3, align 4
  br label %193

82:                                               ; preds = %70
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @avio_wb32(i32* %83, i32 148)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @ffio_wfourcc(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @ffio_wfourcc(i32* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @avio_wb32(i32* %89, i32 567431118)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @avio_wb32(i32* %91, i32 -1148688036)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @avio_wb32(i32* %93, i32 -87439552)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @avio_wb32(i32* %95, i32 0)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @avio_wb32(i32* %97, i32 3)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @avio_wb32(i32* %99, i32 20)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @ffio_wfourcc(i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @avio_wb32(i32* %103, i32 0)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @avio_wb32(i32* %105, i32 0)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @avio_wb32(i32* %107, i32 0)
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @avio_wb32(i32* %109, i32 44)
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @ffio_wfourcc(i32* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @avio_wb32(i32* %113, i32 0)
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @avio_wb32(i32* %115, i32 2)
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @ffio_wfourcc(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @avio_wb32(i32* %119, i32 527)
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @avio_wb32(i32* %121, i32 0)
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @avio_wb32(i32* %123, i32 %124)
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @avio_wb32(i32* %126, i32 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @avio_wb32(i32* %129, i32 %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @avio_wb32(i32* %132, i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @avio_wb32(i32* %137, i32 52)
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @ffio_wfourcc(i32* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @avio_wb32(i32* %141, i32 0)
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @avio_wb32(i32* %143, i32 1)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %82
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @ffio_wfourcc(i32* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @avio_wb16(i32* %153, i32 333)
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @avio_wb16(i32* %155, i32 21)
  br label %164

157:                                              ; preds = %82
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @ffio_wfourcc(i32* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @avio_wb16(i32* %160, i32 0)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @avio_wb16(i32* %162, i32 259)
  br label %164

164:                                              ; preds = %157, %150
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @avio_wb32(i32* %165, i32 0)
  %167 = load i32*, i32** %4, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @avio_wb32(i32* %167, i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @avio_wb32(i32* %170, i32 %171)
  %173 = load i32*, i32** %4, align 8
  %174 = load double, double* %10, align 8
  %175 = fptosi double %174 to i32
  %176 = call i32 @avio_wb32(i32* %173, i32 %175)
  %177 = load i32*, i32** %4, align 8
  %178 = load double, double* %10, align 8
  %179 = fptosi double %178 to i32
  %180 = call i32 @avio_wb32(i32* %177, i32 %179)
  %181 = load i32*, i32** %4, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @avio_wb16(i32* %181, i32 %184)
  %186 = load i32*, i32** %4, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @avio_wb16(i32* %186, i32 %189)
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @avio_wb32(i32* %191, i32 65537)
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %164, %74
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, double) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
