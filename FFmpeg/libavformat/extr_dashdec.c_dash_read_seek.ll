; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_dash_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_dash_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__**, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, i64 }
%struct.TYPE_12__ = type { i32 }

@AVSEEK_FLAG_BACKWARD = common dso_local global i32 0, align 4
@AV_ROUND_DOWN = common dso_local global i32 0, align 4
@AV_ROUND_UP = common dso_local global i32 0, align 4
@AVSEEK_FLAG_BYTE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32)* @dash_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dash_read_seek(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @AV_ROUND_DOWN, align 4
  br label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @AV_ROUND_UP, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @av_rescale_rnd(i32 %17, i32 1000, i32 %27, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @AVSEEK_FLAG_BYTE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %36
  %49 = load i32, i32* @ENOSYS, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %5, align 4
  br label %167

51:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %86, %51
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %65, i64 %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %74, i64 %76
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @dash_seek(%struct.TYPE_11__* %62, %struct.TYPE_12__* %69, i32 %70, i32 %71, i32 %83)
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %61, %58
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %52

89:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %124, %89
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %103, i64 %105
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %112, i64 %114
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @dash_seek(%struct.TYPE_11__* %100, %struct.TYPE_12__* %107, i32 %108, i32 %109, i32 %121)
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %99, %96
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %90

127:                                              ; preds = %90
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %162, %127
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %128
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %141, i64 %143
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %150, i64 %152
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i32 @dash_seek(%struct.TYPE_11__* %138, %struct.TYPE_12__* %145, i32 %146, i32 %147, i32 %159)
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %137, %134
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %128

165:                                              ; preds = %128
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %48
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @av_rescale_rnd(i32, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @dash_seek(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
