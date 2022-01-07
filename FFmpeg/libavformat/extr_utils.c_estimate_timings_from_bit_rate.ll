; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_estimate_timings_from_bit_rate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_estimate_timings_from_bit_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, %struct.TYPE_15__**, %struct.TYPE_13__*, i64 }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_14__, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@INT64_MAX = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Estimating duration from bitrate, this may be inaccurate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @estimate_timings_from_bit_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @estimate_timings_from_bit_rate(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %106

13:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %98, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %101

20:                                               ; preds = %14
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %23, i64 %25
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %7, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %20
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %43, %34, %20
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %55
  %63 = load i32, i32* @INT64_MAX, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %64, %69
  %71 = load i64, i64* %8, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i64 0, i64* %8, align 8
  br label %101

74:                                               ; preds = %62
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %8, align 8
  br label %97

82:                                               ; preds = %55
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i64 0, i64* %8, align 8
  br label %101

96:                                               ; preds = %90, %82
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %14

101:                                              ; preds = %95, %73, %14
  %102 = load i64, i64* %8, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %1
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %203

112:                                              ; preds = %106
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %203

117:                                              ; preds = %112
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @avio_size(i64 %125)
  br label %128

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %122
  %129 = phi i64 [ %126, %122 ], [ 0, %127 ]
  store i64 %129, i64* %3, align 8
  %130 = load i64, i64* %3, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %130, %135
  br i1 %136, label %137, label %202

137:                                              ; preds = %128
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %3, align 8
  %144 = sub nsw i64 %143, %142
  store i64 %144, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %198, %137
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %201

151:                                              ; preds = %145
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %154, i64 %156
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  store %struct.TYPE_15__* %158, %struct.TYPE_15__** %7, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @INT64_MAX, align 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sdiv i32 %163, %166
  %168 = icmp sle i32 %162, %167
  br i1 %168, label %169, label %197

169:                                              ; preds = %151
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %197

175:                                              ; preds = %169
  %176 = load i64, i64* %3, align 8
  %177 = mul nsw i64 8, %176
  %178 = trunc i64 %177 to i32
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %186, %191
  %193 = call i64 @av_rescale(i32 %178, i32 %182, i64 %192)
  store i64 %193, i64* %4, align 8
  %194 = load i64, i64* %4, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  store i32 1, i32* %6, align 4
  br label %197

197:                                              ; preds = %175, %169, %151
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %5, align 4
  br label %145

201:                                              ; preds = %145
  br label %202

202:                                              ; preds = %201, %128
  br label %203

203:                                              ; preds = %202, %112, %106
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %208 = load i32, i32* @AV_LOG_WARNING, align 4
  %209 = call i32 @av_log(%struct.TYPE_16__* %207, i32 %208, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %210

210:                                              ; preds = %206, %203
  ret void
}

declare dso_local i64 @avio_size(i64) #1

declare dso_local i64 @av_rescale(i32, i32, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
