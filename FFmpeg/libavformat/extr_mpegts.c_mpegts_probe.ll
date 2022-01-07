; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_mpegts_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_mpegts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@TS_FEC_PACKET_SIZE = common dso_local global i32 0, align 4
@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@TS_DVHS_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TS score: %d %d\0A\00", align 1
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@CHECK_BLOCK = common dso_local global i32 0, align 4
@CHECK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mpegts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpegts_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TS_FEC_PACKET_SIZE, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %134

22:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %81, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @FFMIN(i32 %30, i32 100)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @TS_PACKET_SIZE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = load i32, i32* @TS_PACKET_SIZE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @TS_PACKET_SIZE, align 4
  %44 = call i32 @analyze(i64 %39, i32 %42, i32 %43, i32 1)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @TS_DVHS_PACKET_SIZE, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  %53 = load i32, i32* @TS_DVHS_PACKET_SIZE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @TS_DVHS_PACKET_SIZE, align 4
  %57 = call i32 @analyze(i64 %52, i32 %55, i32 %56, i32 1)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @TS_FEC_PACKET_SIZE, align 4
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load i32, i32* @TS_FEC_PACKET_SIZE, align 4
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* @TS_FEC_PACKET_SIZE, align 4
  %70 = call i32 @analyze(i64 %65, i32 %68, i32 %69, i32 1)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @FFMAX3(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @FFMAX(i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %27
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 100
  store i32 %83, i32* %7, align 4
  br label %23

84:                                               ; preds = %23
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 10
  %87 = load i32, i32* %8, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 %89, 10
  %91 = sdiv i32 %90, 100
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @ff_dlog(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %95, 10
  br i1 %96, label %97, label %105

97:                                               ; preds = %84
  %98 = load i32, i32* %6, align 4
  %99 = icmp sgt i32 %98, 6
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %101, %102
  %104 = sub nsw i32 %103, 10
  store i32 %104, i32* %2, align 4
  br label %134

105:                                              ; preds = %97, %84
  %106 = load i32, i32* %8, align 4
  %107 = icmp sge i32 %106, 10
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %109, 6
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %113 = sdiv i32 %112, 2
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %113, %114
  %116 = sub nsw i32 %115, 10
  store i32 %116, i32* %2, align 4
  br label %134

117:                                              ; preds = %108, %105
  %118 = load i32, i32* %8, align 4
  %119 = icmp sge i32 %118, 10
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = icmp sgt i32 %121, 6
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %125 = sdiv i32 %124, 2
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %125, %126
  %128 = sub nsw i32 %127, 10
  store i32 %128, i32* %2, align 4
  br label %134

129:                                              ; preds = %120, %117
  %130 = load i32, i32* %6, align 4
  %131 = icmp sgt i32 %130, 6
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 2, i32* %2, align 4
  br label %134

133:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %132, %123, %111, %100, %21
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @analyze(i64, i32, i32, i32) #1

declare dso_local i32 @FFMAX3(i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ff_dlog(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
