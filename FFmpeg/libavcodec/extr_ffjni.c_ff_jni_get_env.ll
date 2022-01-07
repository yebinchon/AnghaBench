; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_get_env.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_get_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__**, i8**, i32)*, i32 (%struct.TYPE_5__**, i32**, i32*)* }

@lock = common dso_local global i32 0, align 4
@java_vm = common dso_local global %struct.TYPE_5__** null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"No Java virtual machine has been registered\0A\00", align 1
@once = common dso_local global i32 0, align 4
@jni_create_pthread_key = common dso_local global i32 0, align 4
@current_env = common dso_local global i32 0, align 4
@JNI_VERSION_1_6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Failed to attach the JNI environment to the current thread\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"The specified JNI version is not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Failed to get the JNI environment attached to this thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_jni_get_env(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %5 = call i32 @pthread_mutex_lock(i32* @lock)
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @java_vm, align 8
  %7 = icmp eq %struct.TYPE_5__** %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call %struct.TYPE_5__** @av_jni_get_java_vm(i8* %9)
  store %struct.TYPE_5__** %10, %struct.TYPE_5__*** @java_vm, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @java_vm, align 8
  %13 = icmp ne %struct.TYPE_5__** %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* @AV_LOG_ERROR, align 4
  %17 = call i32 @av_log(i8* %15, i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %62

18:                                               ; preds = %11
  %19 = load i32, i32* @jni_create_pthread_key, align 4
  %20 = call i32 @pthread_once(i32* @once, i32 %19)
  %21 = load i32, i32* @current_env, align 4
  %22 = call i32* @pthread_getspecific(i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %62

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @java_vm, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_5__**, i8**, i32)*, i32 (%struct.TYPE_5__**, i8**, i32)** %28, align 8
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @java_vm, align 8
  %31 = bitcast i32** %4 to i8**
  %32 = load i32, i32* @JNI_VERSION_1_6, align 4
  %33 = call i32 %29(%struct.TYPE_5__** %30, i8** %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  switch i32 %34, label %57 [
    i32 130, label %35
    i32 128, label %52
    i32 129, label %53
  ]

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @java_vm, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_5__**, i32**, i32*)*, i32 (%struct.TYPE_5__**, i32**, i32*)** %38, align 8
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @java_vm, align 8
  %41 = call i32 %39(%struct.TYPE_5__** %40, i32** %4, i32* null)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i8*, i8** %2, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 @av_log(i8* %44, i32 %45, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %51

47:                                               ; preds = %35
  %48 = load i32, i32* @current_env, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @pthread_setspecific(i32 %48, i32* %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %61

52:                                               ; preds = %25
  br label %61

53:                                               ; preds = %25
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 @av_log(i8* %54, i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %61

57:                                               ; preds = %25
  %58 = load i8*, i8** %2, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(i8* %58, i32 %59, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %53, %52, %51
  br label %62

62:                                               ; preds = %61, %24, %14
  %63 = call i32 @pthread_mutex_unlock(i32* @lock)
  %64 = load i32*, i32** %4, align 8
  ret i32* %64
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_5__** @av_jni_get_java_vm(i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @pthread_once(i32*, i32) #1

declare dso_local i32* @pthread_getspecific(i32) #1

declare dso_local i32 @pthread_setspecific(i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
