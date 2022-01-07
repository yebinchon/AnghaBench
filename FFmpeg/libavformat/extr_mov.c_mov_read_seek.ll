; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__**, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32, i32)* @mov_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_seek(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %5, align 4
  br label %175

30:                                               ; preds = %4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %33, i64 %35
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %11, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @mov_seek_stream(%struct.TYPE_17__* %38, %struct.TYPE_16__* %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %175

47:                                               ; preds = %30
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %123

52:                                               ; preds = %47
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %119, %52
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %122

67:                                               ; preds = %61
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %70, i64 %72
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %16, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %79, i64 %81
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %11, align 8
  %84 = load i32, i32* %8, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %67
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  br label %91

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i32 [ %89, %86 ], [ 0, %90 ]
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %119

99:                                               ; preds = %91
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %103, i64 %105
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @av_rescale_q(i32 %100, i32 %109, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @mov_seek_stream(%struct.TYPE_17__* %114, %struct.TYPE_16__* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %99, %98
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %61

122:                                              ; preds = %61
  br label %174

123:                                              ; preds = %47
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %143, %123
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %124
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %133, i64 %135
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  store %struct.TYPE_16__* %137, %struct.TYPE_16__** %11, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  store %struct.TYPE_14__* %140, %struct.TYPE_14__** %17, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %142 = call i32 @mov_current_sample_set(%struct.TYPE_14__* %141, i32 0)
  br label %143

143:                                              ; preds = %130
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %124

146:                                              ; preds = %124
  br label %147

147:                                              ; preds = %146, %170
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = call i32* @mov_find_next_sample(%struct.TYPE_17__* %148, %struct.TYPE_16__** %11)
  store i32* %149, i32** %19, align 8
  %150 = load i32*, i32** %19, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %153, i32* %5, align 4
  br label %175

154:                                              ; preds = %147
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  store %struct.TYPE_14__* %157, %struct.TYPE_14__** %18, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %154
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %173

170:                                              ; preds = %163, %154
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %172 = call i32 @mov_current_sample_inc(%struct.TYPE_14__* %171)
  br label %147

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173, %122
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %174, %152, %45, %28
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @mov_seek_stream(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @mov_current_sample_set(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @mov_find_next_sample(%struct.TYPE_17__*, %struct.TYPE_16__**) #1

declare dso_local i32 @mov_current_sample_inc(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
