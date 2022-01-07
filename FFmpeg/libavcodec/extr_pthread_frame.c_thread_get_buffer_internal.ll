; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_thread_get_buffer_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_thread_get_buffer_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__*, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_21__** }
%struct.TYPE_15__ = type { i64 }

@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@STATE_SETTING_UP = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"get_buffer() cannot be called after ff_thread_finish_setup()\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@STATE_GET_BUFFER = common dso_local global i32 0, align 4
@memory_order_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i32)* @thread_get_buffer_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_get_buffer_internal(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %8, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %19, i64 1
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %20, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %23, i64 0
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %24, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FF_THREAD_FRAME, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ff_get_buffer(%struct.TYPE_21__* %32, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %173

38:                                               ; preds = %3
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 5
  %41 = call i64 @atomic_load(i32* %40)
  %42 = load i64, i64* @STATE_SETTING_UP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = call i64 @THREAD_SAFE_CALLBACKS(%struct.TYPE_21__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 @av_log(%struct.TYPE_21__* %56, i32 %57, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %173

59:                                               ; preds = %51, %38
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %59
  %67 = call %struct.TYPE_15__* @av_buffer_alloc(i32 8)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %69, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = icmp ne %struct.TYPE_15__* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %4, align 4
  br label %173

77:                                               ; preds = %66
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = call i32 @atomic_init(i32* %85, i32 -1)
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = call i32 @atomic_init(i32* %88, i32 -1)
  br label %90

90:                                               ; preds = %77, %59
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = call i32 @pthread_mutex_lock(i32* %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = call i64 @THREAD_SAFE_CALLBACKS(%struct.TYPE_21__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ff_get_buffer(%struct.TYPE_21__* %100, i32 %103, i32 %104)
  store i32 %105, i32* %9, align 4
  br label %145

106:                                              ; preds = %90
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 3
  %109 = call i32 @pthread_mutex_lock(i32* %108)
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 5
  %120 = load i32, i32* @STATE_GET_BUFFER, align 4
  %121 = load i32, i32* @memory_order_release, align 4
  %122 = call i32 @atomic_store_explicit(i32* %119, i32 %120, i32 %121)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 4
  %125 = call i32 @pthread_cond_broadcast(i32* %124)
  br label %126

126:                                              ; preds = %132, %106
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 5
  %129 = call i64 @atomic_load(i32* %128)
  %130 = load i64, i64* @STATE_SETTING_UP, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 3
  %137 = call i32 @pthread_cond_wait(i32* %134, i32* %136)
  br label %126

138:                                              ; preds = %126
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %9, align 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 3
  %144 = call i32 @pthread_mutex_unlock(i32* %143)
  br label %145

145:                                              ; preds = %138, %99
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %147 = call i64 @THREAD_SAFE_CALLBACKS(%struct.TYPE_21__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %145
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %158 = call i32 @ff_thread_finish_setup(%struct.TYPE_21__* %157)
  br label %159

159:                                              ; preds = %156, %149, %145
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = call i32 @av_buffer_unref(%struct.TYPE_15__** %164)
  br label %166

166:                                              ; preds = %162, %159
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = call i32 @pthread_mutex_unlock(i32* %170)
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %166, %74, %55, %31
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i64 @THREAD_SAFE_CALLBACKS(%struct.TYPE_21__*) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local %struct.TYPE_15__* @av_buffer_alloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @atomic_store_explicit(i32*, i32, i32) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ff_thread_finish_setup(%struct.TYPE_21__*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
