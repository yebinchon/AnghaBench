; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_mutex.c_pthread_mutex_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_mutex.c_pthread_mutex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_init(%struct.TYPE_6__** %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %9 = icmp eq %struct.TYPE_6__** %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = call i64 @calloc(i32 1, i32 40)
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %6, align 4
  br label %46

19:                                               ; preds = %12
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %25 = icmp eq %struct.TYPE_5__** %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %19
  %31 = load i32, i32* @PTHREAD_MUTEX_DEFAULT, align 4
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i32 [ %31, %30 ], [ %36, %32 ]
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @pte_osSemaphoreCreate(i32 0, i32* %44)
  br label %46

46:                                               ; preds = %37, %17
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %48, align 8
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %10
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @pte_osSemaphoreCreate(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
