; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_newFromObject.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaFormat_newFromObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__**, i8*)* }

@amediaformat_class = common dso_local global i32 0, align 4
@jni_amediaformat_mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i8*)* @ff_AMediaFormat_newFromObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @ff_AMediaFormat_newFromObject(i8* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %4, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  %6 = call %struct.TYPE_14__* @av_mallocz(i32 16)
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %5, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %8 = icmp ne %struct.TYPE_14__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32* @amediaformat_class, i32** %12, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = call %struct.TYPE_13__** @ff_jni_get_env(%struct.TYPE_14__* %13)
  store %struct.TYPE_13__** %14, %struct.TYPE_13__*** %4, align 8
  %15 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %16 = icmp ne %struct.TYPE_13__** %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = call i32 @av_freep(%struct.TYPE_14__** %5)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %53

19:                                               ; preds = %10
  %20 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* @jni_amediaformat_mapping, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = call i64 @ff_jni_init_jfields(%struct.TYPE_13__** %20, i32* %22, i32 %23, i32 1, %struct.TYPE_14__* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %45

28:                                               ; preds = %19
  %29 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_13__**, i8*)*, i32 (%struct.TYPE_13__**, i8*)** %31, align 8
  %33 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 %32(%struct.TYPE_13__** %33, i8* %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  br label %45

43:                                               ; preds = %28
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %2, align 8
  br label %53

45:                                               ; preds = %42, %27
  %46 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* @jni_amediaformat_mapping, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = call i32 @ff_jni_reset_jfields(%struct.TYPE_13__** %46, i32* %48, i32 %49, i32 1, %struct.TYPE_14__* %50)
  %52 = call i32 @av_freep(%struct.TYPE_14__** %5)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %53

53:                                               ; preds = %45, %43, %17, %9
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %54
}

declare dso_local %struct.TYPE_14__* @av_mallocz(i32) #1

declare dso_local %struct.TYPE_13__** @ff_jni_get_env(%struct.TYPE_14__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_14__**) #1

declare dso_local i64 @ff_jni_init_jfields(%struct.TYPE_13__**, i32*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ff_jni_reset_jfields(%struct.TYPE_13__**, i32*, i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
