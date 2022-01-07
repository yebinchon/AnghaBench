; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_audio_fifo.c_test_function.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_audio_fifo.c_test_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"ERROR: av_audio_fifo_alloc returned NULL!\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ERROR: av_audio_fifo_write failed!\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"written: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"remaining samples in audio_fifo: %d\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"ERROR: av_audio_fifo_read failed!\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"read: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"ERROR: av_audio_fifo_peek failed!\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"peek:\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"peek_at:\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"ERROR: av_audio_fifo_peek_at failed!\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%d:\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ERROR: av_audio_fifo_drain failed!\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"drain failed to flush all samples in audio_fifo!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @test_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_function(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i8** null, i8*** %5, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_16__* @av_audio_fifo_alloc(i32 %9, i32 %12, i32 %15)
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 @ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @write_samples_to_audio_fifo(%struct.TYPE_16__* %22, %struct.TYPE_15__* %23, i32 %26, i32 0)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @write_samples_to_audio_fifo(%struct.TYPE_16__* %35, %struct.TYPE_15__* %36, i32 %39, i32 0)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = call i32 @ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %32
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = call i32 @av_audio_fifo_size(%struct.TYPE_16__* %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @read_samples_from_audio_fifo(%struct.TYPE_16__* %51, i8*** %5, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = call i32 @ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %45
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @print_audio_bytes(%struct.TYPE_15__* %63, i8** %64, i32 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = call i32 @av_audio_fifo_size(%struct.TYPE_16__* %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @av_audio_fifo_peek(%struct.TYPE_16__* %70, i8** %71, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = call i32 @ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %60
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @print_audio_bytes(%struct.TYPE_15__* %82, i8** %83, i32 %84)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %110, %80
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @av_audio_fifo_peek_at(%struct.TYPE_16__* %95, i8** %96, i32 1, i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call i32 @ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %94
  %104 = load i32, i32* %4, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @print_audio_bytes(%struct.TYPE_15__* %106, i8** %107, i32 %108)
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %88

113:                                              ; preds = %88
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @av_audio_fifo_drain(%struct.TYPE_16__* %115, i32 %118)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = call i32 @ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %113
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = load i8**, i8*** %5, align 8
  %134 = call i32 @free_data_planes(%struct.TYPE_16__* %132, i8** %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = call i32 @av_audio_fifo_free(%struct.TYPE_16__* %135)
  ret void
}

declare dso_local %struct.TYPE_16__* @av_audio_fifo_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @write_samples_to_audio_fifo(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @av_audio_fifo_size(%struct.TYPE_16__*) #1

declare dso_local i32 @read_samples_from_audio_fifo(%struct.TYPE_16__*, i8***, i32) #1

declare dso_local i32 @print_audio_bytes(%struct.TYPE_15__*, i8**, i32) #1

declare dso_local i32 @av_audio_fifo_peek(%struct.TYPE_16__*, i8**, i32) #1

declare dso_local i32 @av_audio_fifo_peek_at(%struct.TYPE_16__*, i8**, i32, i32) #1

declare dso_local i32 @av_audio_fifo_drain(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @free_data_planes(%struct.TYPE_16__*, i8**) #1

declare dso_local i32 @av_audio_fifo_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
