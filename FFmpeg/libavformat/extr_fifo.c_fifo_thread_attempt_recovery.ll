; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_fifo.c_fifo_thread_attempt_recovery.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_fifo.c_fifo_thread_attempt_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_17__**, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Recovery attempt #%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Recovery attempt #%d\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Recovery successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i32)* @fifo_thread_attempt_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_thread_attempt_recovery(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %8, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %9, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %10, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @is_recoverable(%struct.TYPE_20__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %12, align 4
  br label %173

28:                                               ; preds = %3
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = call i32 @fifo_thread_write_trailer(%struct.TYPE_18__* %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @AV_NOPTS_VALUE, align 8
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i64 [ %51, %50 ], [ 0, %52 ]
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %110

57:                                               ; preds = %40
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %57
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %70, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %71, i64 %74
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %13, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %88 = call i64 @av_rescale_q(i64 %85, i32 %86, i32 %87)
  store i64 %88, i64* %11, align 8
  br label %93

89:                                               ; preds = %62
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %89, %68
  br label %100

94:                                               ; preds = %57
  %95 = call i64 (...) @av_gettime_relative()
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  store i64 %99, i64* %11, align 8
  br label %100

100:                                              ; preds = %94, %93
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @EAGAIN, align 4
  %108 = call i32 @AVERROR(i32 %107)
  store i32 %108, i32* %4, align 4
  br label %177

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %53
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %110
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %121 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %120, i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %124, i64 %127)
  br label %136

129:                                              ; preds = %110
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %131 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %130, i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %129, %119
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  store i32 1, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %141, %136
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %152 = call i32 @fifo_thread_dispatch_message(%struct.TYPE_18__* %150, %struct.TYPE_19__* %151)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %149
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i64 @is_recoverable(%struct.TYPE_20__* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @fifo_thread_process_recovery_failure(%struct.TYPE_18__* %161, %struct.TYPE_21__* %162, i32 %163)
  store i32 %164, i32* %4, align 4
  br label %177

165:                                              ; preds = %155
  br label %173

166:                                              ; preds = %149
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %168 = load i32, i32* @AV_LOG_INFO, align 4
  %169 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %167, i32 %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 2
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %177

173:                                              ; preds = %165, %26
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = call i32 @free_message(%struct.TYPE_19__* %174)
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %173, %172, %160, %106
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i64 @is_recoverable(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @fifo_thread_write_trailer(%struct.TYPE_18__*) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i64 @av_gettime_relative(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*, ...) #1

declare dso_local i32 @fifo_thread_dispatch_message(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @fifo_thread_process_recovery_failure(%struct.TYPE_18__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @free_message(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
