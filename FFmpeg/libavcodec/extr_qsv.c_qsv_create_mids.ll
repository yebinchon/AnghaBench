; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_qsv_create_mids.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_qsv_create_mids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__*, i32 }

@mids_buf_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_21__*)* @qsv_create_mids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @qsv_create_mids(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %4, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %23 = call %struct.TYPE_21__* @av_buffer_ref(%struct.TYPE_21__* %22)
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %8, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %25 = icmp ne %struct.TYPE_21__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %78

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.TYPE_18__* @av_mallocz_array(i32 %28, i32 16)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %9, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 @av_buffer_unref(%struct.TYPE_21__** %8)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %78

34:                                               ; preds = %27
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = bitcast %struct.TYPE_18__* %35 to i32*
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 16
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @mids_buf_free, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = call %struct.TYPE_21__* @av_buffer_create(i32* %36, i32 %40, i32 %41, %struct.TYPE_21__* %42, i32 0)
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %7, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = icmp ne %struct.TYPE_21__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = call i32 @av_buffer_unref(%struct.TYPE_21__** %8)
  %48 = call i32 @av_freep(%struct.TYPE_18__** %9)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %78

49:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i64 %57
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %11, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store %struct.TYPE_21__* %70, %struct.TYPE_21__** %72, align 8
  br label %73

73:                                               ; preds = %54
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %50

76:                                               ; preds = %50
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %77, %struct.TYPE_21__** %2, align 8
  br label %78

78:                                               ; preds = %76, %46, %32, %26
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  ret %struct.TYPE_21__* %79
}

declare dso_local %struct.TYPE_21__* @av_buffer_ref(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_18__* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_21__**) #1

declare dso_local %struct.TYPE_21__* @av_buffer_create(i32*, i32, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_18__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
