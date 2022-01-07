; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_data.c_ff_audio_data_combine.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_data.c_ff_audio_data_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i64*, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sample format mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"offset out-of-bounds: src=%d dst=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dst is read-only\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"error reallocating dst\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_audio_data_combine(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23, %5
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %32, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %6, align 4
  br label %204

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49, %46, %40, %37
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %56, i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %6, align 4
  br label %204

63:                                               ; preds = %49
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp sgt i32 %64, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %71, %63
  %78 = load i32, i32* %11, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %204

81:                                               ; preds = %77
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %87, i32 %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %6, align 4
  br label %204

92:                                               ; preds = %81
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @ff_audio_data_realloc(%struct.TYPE_6__* %93, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %103, i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %204

107:                                              ; preds = %92
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %14, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %195, %107
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %198

122:                                              ; preds = %116
  %123 = load i32, i32* %15, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %160

125:                                              ; preds = %122
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 5
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %132, %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %146, %152
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %154, %157
  %159 = call i32 @memmove(i64 %139, i64 %153, i32 %158)
  br label %160

160:                                              ; preds = %125, %122
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 5
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 %168, %171
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %167, %173
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %182, %185
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %181, %187
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %189, %192
  %194 = call i32 @memcpy(i64 %174, i64 %188, i32 %193)
  br label %195

195:                                              ; preds = %160
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %13, align 4
  br label %116

198:                                              ; preds = %116
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 8
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %198, %102, %86, %80, %55, %31
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_audio_data_realloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
