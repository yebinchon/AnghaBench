; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_ff_thread_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_ff_thread_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_19__, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@AV_CODEC_ID_FFV1 = common dso_local global i64 0, align 8
@STATE_INPUT_READY = common dso_local global i64 0, align 8
@memory_order_relaxed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_thread_decode_frame(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %8, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %9, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %22 = call i32 @async_unlock(%struct.TYPE_21__* %21)
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i64 %28
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %11, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = call i32 @submit_packet(%struct.TYPE_20__* %30, %struct.TYPE_24__* %31, %struct.TYPE_22__* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %186

37:                                               ; preds = %4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AV_CODEC_ID_FFV1, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = sub nsw i32 %44, %50
  %52 = sext i32 %51 to i64
  %53 = icmp ugt i64 %40, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %37
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32*, i32** %7, align 8
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  br label %186

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %156, %73
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i64 %80
  store %struct.TYPE_20__* %81, %struct.TYPE_20__** %11, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 7
  %84 = call i64 @atomic_load(i32* %83)
  %85 = load i64, i64* @STATE_INPUT_READY, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %74
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 5
  %90 = call i32 @pthread_mutex_lock(i32* %89)
  br label %91

91:                                               ; preds = %98, %87
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 7
  %94 = load i32, i32* @memory_order_relaxed, align 4
  %95 = call i64 @atomic_load_explicit(i32* %93, i32 %94)
  %96 = load i64, i64* @STATE_INPUT_READY, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 5
  %103 = call i32 @pthread_cond_wait(i32* %100, i32* %102)
  br label %91

104:                                              ; preds = %91
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 5
  %107 = call i32 @pthread_mutex_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %74
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @av_frame_move_ref(%struct.TYPE_23__* %109, i32 %112)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %12, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sge i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %136, %108
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %138
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %151, %154
  br label %156

156:                                              ; preds = %150, %147, %143, %138
  %157 = phi i1 [ false, %147 ], [ false, %143 ], [ false, %138 ], [ %155, %150 ]
  br i1 %157, label %74, label %158

158:                                              ; preds = %156
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @update_context_from_thread(%struct.TYPE_24__* %159, i32 %162, i32 1)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = icmp uge i64 %166, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %158
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %158
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %12, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %181, %175
  br label %186

186:                                              ; preds = %185, %68, %36
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %188 = call i32 @async_lock(%struct.TYPE_21__* %187)
  %189 = load i32, i32* %12, align 4
  ret i32 %189
}

declare dso_local i32 @async_unlock(%struct.TYPE_21__*) #1

declare dso_local i32 @submit_packet(%struct.TYPE_20__*, %struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @atomic_load_explicit(i32*, i32) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @av_frame_move_ref(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @update_context_from_thread(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @async_lock(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
