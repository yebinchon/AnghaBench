; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_framequeue.c_ff_framequeue_skip_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_framequeue.c_ff_framequeue_skip_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i64, i64*, i64*, i64*, i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_framequeue_skip_samples(%struct.TYPE_10__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = call i32 @check_consistency(%struct.TYPE_10__* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @av_assert1(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call %struct.TYPE_11__* @bucket(%struct.TYPE_10__* %18, i32 0)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %20, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @av_assert1(i32 %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @av_sample_fmt_is_planar(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  br label %44

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ %42, %37 ], [ 1, %43 ]
  store i32 %45, i32* %10, align 4
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @av_get_bytes_per_sample(i32 %51)
  %53 = mul i64 %46, %52
  store i64 %53, i64* %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %44
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %8, align 8
  %64 = mul i64 %63, %62
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %56, %44
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @av_make_q(i32 1, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @av_rescale_q(i64 %74, i32 %80, i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %82
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %73, %65
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %95, %90
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %104, %97
  store i64 %105, i64* %103, align 8
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %122, %89
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %106
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, %111
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %110
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %106

125:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %154, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %133 = icmp slt i32 %131, %132
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i1 [ false, %126 ], [ %133, %130 ]
  br i1 %135, label %136, label %157

136:                                              ; preds = %134
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 4
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %145, i64* %153, align 8
  br label %154

154:                                              ; preds = %136
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %126

157:                                              ; preds = %134
  %158 = load i64, i64* %5, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, %158
  store i64 %162, i64* %160, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  store i32 1, i32* %164, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = call i32 @ff_framequeue_update_peeked(%struct.TYPE_10__* %165, i32 0)
  ret void
}

declare dso_local i32 @check_consistency(%struct.TYPE_10__*) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local %struct.TYPE_11__* @bucket(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_sample_fmt_is_planar(i32) #1

declare dso_local i64 @av_get_bytes_per_sample(i32) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @av_make_q(i32, i32) #1

declare dso_local i32 @ff_framequeue_update_peeked(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
