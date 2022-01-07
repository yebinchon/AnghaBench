; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_mdhd_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_mdhd_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32 }

@INT32_MAX = common dso_local global i32 0, align 4
@MODE_ISM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"mdhd\00", align 1
@MODE_MOV = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [186 x i8] c"FATAL error, file duration too long for timebase, this file will not be\0Aplayable with QuickTime. Choose a different timebase with -video_track_timescale or a different container format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, %struct.TYPE_5__*)* @mov_write_mdhd_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_mdhd_tag(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @INT32_MAX, align 4
  %12 = icmp slt i32 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 1
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MODE_ISM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @avio_wb32(i32* %25, i32 44)
  br label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @avio_wb32(i32* %28, i32 32)
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ffio_wfourcc(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @avio_w8(i32* %34, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @avio_wb24(i32* %37, i32 0)
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @avio_wb64(i32* %42, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @avio_wb64(i32* %47, i32 %50)
  br label %63

52:                                               ; preds = %30
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @avio_wb32(i32* %53, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @avio_wb32(i32* %58, i32 %61)
  br label %63

63:                                               ; preds = %52, %41
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @avio_wb32(i32* %64, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %63
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MODE_ISM, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @UINT64_C(i32 -1)
  %85 = call i32 @avio_wb64(i32* %83, i32 %84)
  br label %89

86:                                               ; preds = %79
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @avio_wb32(i32* %87, i32 -1)
  br label %89

89:                                               ; preds = %86, %82
  %90 = phi i32 [ %85, %82 ], [ %88, %86 ]
  br label %125

91:                                               ; preds = %73, %63
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @avio_wb64(i32* %100, i32 0)
  br label %105

102:                                              ; preds = %96
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @avio_wb32(i32* %103, i32 0)
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i32 [ %101, %99 ], [ %104, %102 ]
  br label %124

107:                                              ; preds = %91
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32*, i32** %4, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @avio_wb64(i32* %111, i32 %114)
  br label %122

116:                                              ; preds = %107
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @avio_wb32(i32* %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %110
  %123 = phi i32 [ %115, %110 ], [ %121, %116 ]
  br label %124

124:                                              ; preds = %122, %105
  br label %125

125:                                              ; preds = %124, %89
  %126 = load i32*, i32** %4, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @avio_wb16(i32* %126, i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @avio_wb16(i32* %131, i32 0)
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MODE_MOV, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = call i32 @av_log(i32* null, i32 %142, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %135, %125
  ret i32 32
}

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
