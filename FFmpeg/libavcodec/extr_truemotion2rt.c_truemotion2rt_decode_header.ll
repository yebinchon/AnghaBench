; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2rt.c_truemotion2rt_decode_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2rt.c_truemotion2rt_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"input packet too small (%d)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid header size (%d)\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Header size: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @truemotion2rt_decode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truemotion2rt_decode_header(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  %18 = bitcast [128 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 512, i1 false)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @av_log(%struct.TYPE_10__* %28, i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %3, align 4
  br label %134

33:                                               ; preds = %2
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 5
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 3
  %42 = or i32 %37, %41
  %43 = and i32 %42, 127
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @av_log(%struct.TYPE_10__* %47, i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %3, align 4
  br label %134

52:                                               ; preds = %33
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @av_log(%struct.TYPE_10__* %58, i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %3, align 4
  br label %134

63:                                               ; preds = %52
  store i32 1, i32* %14, align 4
  br label %64

64:                                               ; preds = %85, %63
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %73, %79
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %68
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %64

88:                                               ; preds = %64
  %89 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = add nsw i32 1, %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %111, label %106

106:                                              ; preds = %88
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 4
  br i1 %110, label %111, label %113

111:                                              ; preds = %106, %88
  %112 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %112, i32* %3, align 4
  br label %134

113:                                              ; preds = %106
  %114 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  %116 = call i32 @AV_RL16(i32* %115)
  store i32 %116, i32* %12, align 4
  %117 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %118 = getelementptr inbounds i32, i32* %117, i64 7
  %119 = call i32 @AV_RL16(i32* %118)
  store i32 %119, i32* %11, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @ff_set_dimensions(%struct.TYPE_10__* %120, i32 %121, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %113
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %3, align 4
  br label %134

128:                                              ; preds = %113
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = load i32, i32* @AV_LOG_DEBUG, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @av_log(%struct.TYPE_10__* %129, i32 %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %128, %126, %111, %57, %46, %27
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32) #2

declare dso_local i32 @AV_RL16(i32*) #2

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_10__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
