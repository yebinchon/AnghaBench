; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_copy_chapters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_copy_chapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_12__* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @copy_chapters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_chapters(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %9, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  %33 = call %struct.TYPE_13__** @av_realloc_f(%struct.TYPE_13__** %25, i32 %32, i32 8)
  store %struct.TYPE_13__** %33, %struct.TYPE_13__*** %10, align 8
  %34 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %35 = icmp ne %struct.TYPE_13__** %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %175

39:                                               ; preds = %3
  %40 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store %struct.TYPE_13__** %40, %struct.TYPE_13__*** %42, align 8
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %171, %39
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %174

49:                                               ; preds = %43
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %52, i64 %54
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %12, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %67

63:                                               ; preds = %49
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  br label %67

67:                                               ; preds = %63, %62
  %68 = phi i64 [ 0, %62 ], [ %66, %63 ]
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @av_rescale_q(i64 %73, i32 %74, i32 %77)
  store i64 %78, i64* %15, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @INT64_MAX, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %67
  %85 = load i64, i64* @INT64_MAX, align 8
  br label %95

86:                                               ; preds = %67
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @av_rescale_q(i64 %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %86, %84
  %96 = phi i64 [ %85, %84 ], [ %94, %86 ]
  store i64 %96, i64* %16, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %15, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %171

103:                                              ; preds = %95
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* @INT64_MAX, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* %15, align 8
  %113 = add nsw i64 %111, %112
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %174

116:                                              ; preds = %107, %103
  %117 = call %struct.TYPE_13__* @av_mallocz(i32 32)
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %13, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %119 = icmp ne %struct.TYPE_13__* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = call i32 @AVERROR(i32 %121)
  store i32 %122, i32* %4, align 4
  br label %175

123:                                              ; preds = %116
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %15, align 8
  %138 = sub nsw i64 %136, %137
  %139 = call i64 @FFMAX(i32 0, i64 %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %15, align 8
  %147 = sub nsw i64 %145, %146
  %148 = call i64 @FFMIN(i64 %142, i64 %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %123
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @av_dict_copy(i32* %155, i32 %158, i32 0)
  br label %160

160:                                              ; preds = %153, %123
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %163, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %164, i64 %169
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %170, align 8
  br label %171

171:                                              ; preds = %160, %102
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %43

174:                                              ; preds = %115, %43
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %120, %36
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_13__** @av_realloc_f(%struct.TYPE_13__**, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local %struct.TYPE_13__* @av_mallocz(i32) #1

declare dso_local i64 @FFMAX(i32, i64) #1

declare dso_local i64 @FFMIN(i64, i64) #1

declare dso_local i32 @av_dict_copy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
