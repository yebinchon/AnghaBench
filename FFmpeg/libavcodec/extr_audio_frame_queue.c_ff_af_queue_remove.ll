; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audio_frame_queue.c_ff_af_queue_remove.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audio_frame_queue.c_ff_af_queue_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Trying to remove %d samples, but the queue is empty\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Trying to remove %d more samples than there are in the queue\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_af_queue_remove(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19, %4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %32, %24
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AV_LOG_WARNING, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @av_log(i32 %48, i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ff_samples_to_time_base(i32 %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %52
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %125, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br label %72

72:                                               ; preds = %66, %63
  %73 = phi i1 [ false, %63 ], [ %71, %66 ]
  br i1 %73, label %74, label %128

74:                                               ; preds = %72
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @FFMIN(i64 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, %86
  store i64 %95, i64* %93, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %74
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %114
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %112, %74
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %63

128:                                              ; preds = %72
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %128
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %137, %128
  %149 = phi i1 [ false, %128 ], [ %147, %137 ]
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %11, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = mul i64 16, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @memmove(%struct.TYPE_6__* %155, %struct.TYPE_6__* %161, i32 %169)
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %225

178:                                              ; preds = %148
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 @av_assert0(i32 %184)
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %188, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @av_assert0(i32 %193)
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = icmp ne %struct.TYPE_6__* %197, null
  br i1 %198, label %199, label %218

199:                                              ; preds = %178
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %199
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, %210
  store i64 %217, i64* %215, align 8
  br label %218

218:                                              ; preds = %208, %199, %178
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @AV_LOG_DEBUG, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @av_log(i32 %221, i32 %222, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %218, %148
  %226 = load i32*, i32** %8, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @ff_samples_to_time_base(i32 %231, i32 %232)
  %234 = load i32*, i32** %8, align 8
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %228, %225
  ret void
}

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @ff_samples_to_time_base(i32, i32) #1

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
