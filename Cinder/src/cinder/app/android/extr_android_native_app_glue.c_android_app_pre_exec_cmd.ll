; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_pre_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_pre_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Attaching input queue to looper\00", align 1
@LOOPER_ID_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @android_app_pre_exec_cmd(%struct.android_app* %0, i32 %1) #0 {
  %3 = alloca %struct.android_app*, align 8
  %4 = alloca i32, align 4
  store %struct.android_app* %0, %struct.android_app** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %95 [
    i32 133, label %6
    i32 134, label %48
    i32 128, label %63
    i32 131, label %67
    i32 130, label %67
    i32 132, label %67
    i32 129, label %67
    i32 136, label %80
    i32 135, label %92
  ]

6:                                                ; preds = %2
  %7 = load %struct.android_app*, %struct.android_app** %3, align 8
  %8 = getelementptr inbounds %struct.android_app, %struct.android_app* %7, i32 0, i32 4
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.android_app*, %struct.android_app** %3, align 8
  %11 = getelementptr inbounds %struct.android_app, %struct.android_app* %10, i32 0, i32 10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  %15 = load %struct.android_app*, %struct.android_app** %3, align 8
  %16 = getelementptr inbounds %struct.android_app, %struct.android_app* %15, i32 0, i32 10
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @AInputQueue_detachLooper(i32* %17)
  br label %19

19:                                               ; preds = %14, %6
  %20 = load %struct.android_app*, %struct.android_app** %3, align 8
  %21 = getelementptr inbounds %struct.android_app, %struct.android_app* %20, i32 0, i32 11
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.android_app*, %struct.android_app** %3, align 8
  %24 = getelementptr inbounds %struct.android_app, %struct.android_app* %23, i32 0, i32 10
  store i32* %22, i32** %24, align 8
  %25 = load %struct.android_app*, %struct.android_app** %3, align 8
  %26 = getelementptr inbounds %struct.android_app, %struct.android_app* %25, i32 0, i32 10
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = call i32 @LOGV(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.android_app*, %struct.android_app** %3, align 8
  %32 = getelementptr inbounds %struct.android_app, %struct.android_app* %31, i32 0, i32 10
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.android_app*, %struct.android_app** %3, align 8
  %35 = getelementptr inbounds %struct.android_app, %struct.android_app* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @LOOPER_ID_INPUT, align 4
  %38 = load %struct.android_app*, %struct.android_app** %3, align 8
  %39 = getelementptr inbounds %struct.android_app, %struct.android_app* %38, i32 0, i32 8
  %40 = call i32 @AInputQueue_attachLooper(i32* %33, i32 %36, i32 %37, i32* null, i32* %39)
  br label %41

41:                                               ; preds = %29, %19
  %42 = load %struct.android_app*, %struct.android_app** %3, align 8
  %43 = getelementptr inbounds %struct.android_app, %struct.android_app* %42, i32 0, i32 5
  %44 = call i32 @pthread_cond_broadcast(i32* %43)
  %45 = load %struct.android_app*, %struct.android_app** %3, align 8
  %46 = getelementptr inbounds %struct.android_app, %struct.android_app* %45, i32 0, i32 4
  %47 = call i32 @pthread_mutex_unlock(i32* %46)
  br label %95

48:                                               ; preds = %2
  %49 = load %struct.android_app*, %struct.android_app** %3, align 8
  %50 = getelementptr inbounds %struct.android_app, %struct.android_app* %49, i32 0, i32 4
  %51 = call i32 @pthread_mutex_lock(i32* %50)
  %52 = load %struct.android_app*, %struct.android_app** %3, align 8
  %53 = getelementptr inbounds %struct.android_app, %struct.android_app* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.android_app*, %struct.android_app** %3, align 8
  %56 = getelementptr inbounds %struct.android_app, %struct.android_app* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.android_app*, %struct.android_app** %3, align 8
  %58 = getelementptr inbounds %struct.android_app, %struct.android_app* %57, i32 0, i32 5
  %59 = call i32 @pthread_cond_broadcast(i32* %58)
  %60 = load %struct.android_app*, %struct.android_app** %3, align 8
  %61 = getelementptr inbounds %struct.android_app, %struct.android_app* %60, i32 0, i32 4
  %62 = call i32 @pthread_mutex_unlock(i32* %61)
  br label %95

63:                                               ; preds = %2
  %64 = load %struct.android_app*, %struct.android_app** %3, align 8
  %65 = getelementptr inbounds %struct.android_app, %struct.android_app* %64, i32 0, i32 5
  %66 = call i32 @pthread_cond_broadcast(i32* %65)
  br label %95

67:                                               ; preds = %2, %2, %2, %2
  %68 = load %struct.android_app*, %struct.android_app** %3, align 8
  %69 = getelementptr inbounds %struct.android_app, %struct.android_app* %68, i32 0, i32 4
  %70 = call i32 @pthread_mutex_lock(i32* %69)
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.android_app*, %struct.android_app** %3, align 8
  %73 = getelementptr inbounds %struct.android_app, %struct.android_app* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.android_app*, %struct.android_app** %3, align 8
  %75 = getelementptr inbounds %struct.android_app, %struct.android_app* %74, i32 0, i32 5
  %76 = call i32 @pthread_cond_broadcast(i32* %75)
  %77 = load %struct.android_app*, %struct.android_app** %3, align 8
  %78 = getelementptr inbounds %struct.android_app, %struct.android_app* %77, i32 0, i32 4
  %79 = call i32 @pthread_mutex_unlock(i32* %78)
  br label %95

80:                                               ; preds = %2
  %81 = load %struct.android_app*, %struct.android_app** %3, align 8
  %82 = getelementptr inbounds %struct.android_app, %struct.android_app* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.android_app*, %struct.android_app** %3, align 8
  %85 = getelementptr inbounds %struct.android_app, %struct.android_app* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @AConfiguration_fromAssetManager(i32 %83, i32 %88)
  %90 = load %struct.android_app*, %struct.android_app** %3, align 8
  %91 = call i32 @print_cur_config(%struct.android_app* %90)
  br label %95

92:                                               ; preds = %2
  %93 = load %struct.android_app*, %struct.android_app** %3, align 8
  %94 = getelementptr inbounds %struct.android_app, %struct.android_app* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %2, %92, %80, %67, %63, %48, %41
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @AInputQueue_detachLooper(i32*) #1

declare dso_local i32 @LOGV(i8*) #1

declare dso_local i32 @AInputQueue_attachLooper(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @AConfiguration_fromAssetManager(i32, i32) #1

declare dso_local i32 @print_cur_config(%struct.android_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
