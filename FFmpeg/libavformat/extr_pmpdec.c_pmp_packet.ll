; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_pmpdec.c_pmp_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_pmpdec.c_pmp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32*, i32 }
%struct.TYPE_9__ = type { i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No audio packets.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot (re)allocate packet buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @pmp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmp_packet(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @avio_feof(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %21, i32* %3, align 4
  br label %139

22:                                               ; preds = %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %92

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @avio_r8(i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 @av_log(%struct.TYPE_10__* %37, i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %3, align 4
  br label %139

41:                                               ; preds = %27
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @avio_skip(i32* %51, i32 8)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @av_fast_malloc(i32** %56, i32* %58, i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %41
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 @av_log(%struct.TYPE_10__* %69, i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %139

74:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @avio_rl32(i32* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %75

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %22
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @av_get_packet(i32* %93, %struct.TYPE_9__* %94, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %92
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = urem i64 %115, %119
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %112
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = srem i32 %126, %129
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %122, %112
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %68, %36, %20
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @av_fast_malloc(i32**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
