; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_real_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_real_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i64, i64, i64, i32, %struct.TYPE_12__*)* @real_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @real_seek(%struct.TYPE_12__* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5, %struct.TYPE_12__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %15, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %16, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %8, align 4
  br label %173

35:                                               ; preds = %26
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %38, i64 %40
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %46 = call i32 @rescale_interval(i32 %44, i32 %45, i64* %11, i64* %12, i64* %13)
  br label %47

47:                                               ; preds = %35, %7
  store i32 0, i32* %18, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %19, align 4
  %51 = load i64, i64* %12, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %19, align 4
  br label %63

54:                                               ; preds = %47
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ESPIPE, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %8, align 4
  br label %173

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %88, %63
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %18, align 4
  %67 = sub nsw i32 %65, %66
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = add nsw i32 %70, %71
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %20, align 4
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %74, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i32, i32* %20, align 4
  store i32 %85, i32* %19, align 4
  br label %88

86:                                               ; preds = %69
  %87 = load i32, i32* %20, align 4
  store i32 %87, i32* %18, align 4
  br label %88

88:                                               ; preds = %86, %84
  br label %64

89:                                               ; preds = %64
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = icmp ne %struct.TYPE_10__* %92, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @open_file(%struct.TYPE_12__* %101, i32 %102)
  store i32 %103, i32* %17, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %17, align 4
  store i32 %106, i32* %8, align 4
  br label %173

107:                                              ; preds = %100
  br label %112

108:                                              ; preds = %89
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %111, align 8
  br label %112

112:                                              ; preds = %108, %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @try_seek(%struct.TYPE_12__* %113, i32 %114, i64 %115, i64 %116, i64 %117, i32 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %171

122:                                              ; preds = %112
  %123 = load i32, i32* %18, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %129, label %171

129:                                              ; preds = %122
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %129
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 %149
  %151 = icmp eq %struct.TYPE_10__* %144, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %141
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %154, align 8
  br label %155

155:                                              ; preds = %152, %141
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %157, 1
  %159 = call i32 @open_file(%struct.TYPE_12__* %156, i32 %158)
  store i32 %159, i32* %17, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* %17, align 4
  store i32 %162, i32* %8, align 4
  br label %173

163:                                              ; preds = %155
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @try_seek(%struct.TYPE_12__* %164, i32 %165, i64 %166, i64 %167, i64 %168, i32 %169)
  store i32 %170, i32* %17, align 4
  br label %171

171:                                              ; preds = %163, %129, %122, %112
  %172 = load i32, i32* %17, align 4
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %171, %161, %105, %59, %32
  %174 = load i32, i32* %8, align 4
  ret i32 %174
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @rescale_interval(i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @open_file(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @try_seek(%struct.TYPE_12__*, i32, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
