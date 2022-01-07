; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_streamselect.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_streamselect.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32, i32*, i64*, %struct.TYPE_17__, i64, %struct.TYPE_15__** }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %19, align 8
  store %struct.TYPE_15__** %20, %struct.TYPE_15__*** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %40, %1
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %31, i64 %33
  %35 = call i32 @ff_framesync_get_frame(%struct.TYPE_17__* %29, i32 %30, %struct.TYPE_15__** %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %2, align 4
  br label %176

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %21

43:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %165, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %168

50:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %161, %50
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %164

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %160

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %80, i64 %82
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %79, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %72
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %91, i64 %93
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %161

100:                                              ; preds = %88, %72, %67
  %101 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %101, i64 %103
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = call %struct.TYPE_15__* @av_frame_clone(%struct.TYPE_15__* %105)
  store %struct.TYPE_15__* %106, %struct.TYPE_15__** %11, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %108 = icmp ne %struct.TYPE_15__* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %2, align 4
  br label %176

112:                                              ; preds = %100
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %123, i64 %125
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @av_rescale_q(i32 %116, i32 %120, i32 %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %133, i64 %135
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  store i64 %139, i64* %145, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %148, i64 %150
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %154 = call i32 @ff_filter_frame(%struct.TYPE_18__* %152, %struct.TYPE_15__* %153)
  store i32 %154, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %112
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %2, align 4
  br label %176

159:                                              ; preds = %112
  br label %160

160:                                              ; preds = %159, %57
  br label %161

161:                                              ; preds = %160, %99
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %51

164:                                              ; preds = %51
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %44

168:                                              ; preds = %44
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = call i32 @ff_filter_set_ready(%struct.TYPE_16__* %172, i32 100)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %157, %109, %37
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @ff_framesync_get_frame(%struct.TYPE_17__*, i32, %struct.TYPE_15__**, i32) #1

declare dso_local %struct.TYPE_15__* @av_frame_clone(%struct.TYPE_15__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ff_filter_set_ready(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
