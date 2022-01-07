; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_new.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__, i32, i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__**, i32*)*, i32 (%struct.TYPE_17__**, i32*)*, i32* (%struct.TYPE_17__**, i32, i32)* }

@amediaformat_class = common dso_local global i32 0, align 4
@jni_amediaformat_mapping = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @ff_AMediaFormat_new() #0 {
  %1 = alloca %struct.TYPE_18__*, align 8
  %2 = alloca %struct.TYPE_17__**, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_17__** null, %struct.TYPE_17__*** %2, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = call %struct.TYPE_18__* @av_mallocz(i32 24)
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %3, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %7 = icmp ne %struct.TYPE_18__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %1, align 8
  br label %87

9:                                                ; preds = %0
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  store i32* @amediaformat_class, i32** %11, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = call %struct.TYPE_17__** @ff_jni_get_env(%struct.TYPE_18__* %12)
  store %struct.TYPE_17__** %13, %struct.TYPE_17__*** %2, align 8
  %14 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %2, align 8
  %15 = icmp ne %struct.TYPE_17__** %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = call i32 @av_freep(%struct.TYPE_18__** %3)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %1, align 8
  br label %87

18:                                               ; preds = %9
  %19 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %2, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* @jni_amediaformat_mapping, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = call i64 @ff_jni_init_jfields(%struct.TYPE_17__** %19, %struct.TYPE_19__* %21, i32 %22, i32 1, %struct.TYPE_18__* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %61

27:                                               ; preds = %18
  %28 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %2, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load i32* (%struct.TYPE_17__**, i32, i32)*, i32* (%struct.TYPE_17__**, i32, i32)** %30, align 8
  %32 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %2, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32* %31(%struct.TYPE_17__** %32, i32 %36, i32 %40)
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %27
  br label %61

45:                                               ; preds = %27
  %46 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %2, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_17__**, i32*)*, i32 (%struct.TYPE_17__**, i32*)** %48, align 8
  %50 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %2, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 %49(%struct.TYPE_17__** %50, i32* %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  br label %61

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %59, %44, %26
  %62 = load i32*, i32** %4, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %2, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_17__**, i32*)*, i32 (%struct.TYPE_17__**, i32*)** %67, align 8
  %69 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %2, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 %68(%struct.TYPE_17__** %69, i32* %70)
  br label %72

72:                                               ; preds = %64, %61
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %2, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* @jni_amediaformat_mapping, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = call i32 @ff_jni_reset_jfields(%struct.TYPE_17__** %78, %struct.TYPE_19__* %80, i32 %81, i32 1, %struct.TYPE_18__* %82)
  %84 = call i32 @av_freep(%struct.TYPE_18__** %3)
  br label %85

85:                                               ; preds = %77, %72
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %1, align 8
  br label %87

87:                                               ; preds = %85, %16, %8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  ret %struct.TYPE_18__* %88
}

declare dso_local %struct.TYPE_18__* @av_mallocz(i32) #1

declare dso_local %struct.TYPE_17__** @ff_jni_get_env(%struct.TYPE_18__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_18__**) #1

declare dso_local i64 @ff_jni_init_jfields(%struct.TYPE_17__**, %struct.TYPE_19__*, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ff_jni_reset_jfields(%struct.TYPE_17__**, %struct.TYPE_19__*, i32, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
