; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_iec61883.c_iec61883_callback.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_iec61883.c_iec61883_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iec61883_data = type { i64, i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"DV packet queue overrun, dropping.\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @iec61883_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iec61883_callback(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iec61883_data*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.iec61883_data*
  store %struct.iec61883_data* %13, %struct.iec61883_data** %9, align 8
  %14 = load %struct.iec61883_data*, %struct.iec61883_data** %9, align 8
  %15 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.iec61883_data*, %struct.iec61883_data** %9, align 8
  %18 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @AV_LOG_ERROR, align 4
  %23 = call i32 @av_log(i32* null, i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %87

24:                                               ; preds = %4
  %25 = call %struct.TYPE_4__* @av_mallocz(i32 24)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %10, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 -1, i32* %11, align 4
  br label %87

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @av_malloc(i64 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = call i32 @av_free(%struct.TYPE_4__* %42)
  store i32 -1, i32* %11, align 4
  br label %87

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @memcpy(i64 %50, i8* %51, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %61 = call i32 @memset(i64 %59, i32 0, i64 %60)
  %62 = load %struct.iec61883_data*, %struct.iec61883_data** %9, align 8
  %63 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %62, i32 0, i32 5
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %44
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = load %struct.iec61883_data*, %struct.iec61883_data** %9, align 8
  %69 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = load %struct.iec61883_data*, %struct.iec61883_data** %9, align 8
  %74 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %73, i32 0, i32 4
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %74, align 8
  br label %82

75:                                               ; preds = %44
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = load %struct.iec61883_data*, %struct.iec61883_data** %9, align 8
  %78 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %77, i32 0, i32 5
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = load %struct.iec61883_data*, %struct.iec61883_data** %9, align 8
  %81 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %80, i32 0, i32 4
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %81, align 8
  br label %82

82:                                               ; preds = %75, %66
  %83 = load %struct.iec61883_data*, %struct.iec61883_data** %9, align 8
  %84 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %82, %41, %28, %21
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_4__* @av_mallocz(i32) #1

declare dso_local i64 @av_malloc(i64) #1

declare dso_local i32 @av_free(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
