; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_barrier.c_pthread_barrier_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_barrier.c_pthread_barrier_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_PRIVATE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_barrier_init(%struct.TYPE_7__** %0, %struct.TYPE_6__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %10 = icmp eq %struct.TYPE_7__** %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %78

16:                                               ; preds = %11
  %17 = call i64 @calloc(i32 1, i32 32)
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  %19 = icmp ne %struct.TYPE_7__* null, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %22 = icmp ne %struct.TYPE_6__** %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %34

32:                                               ; preds = %23, %20
  %33 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi i32 [ %31, %27 ], [ %33, %32 ]
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @sem_init(i32* %48, i32 %51, i32 0)
  %53 = icmp eq i64 0, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %34
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @sem_init(i32* %58, i32 %61, i32 0)
  %63 = icmp eq i64 0, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %66, align 8
  store i32 0, i32* %4, align 4
  br label %78

67:                                               ; preds = %54
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i32 @sem_destroy(i32* %71)
  br label %73

73:                                               ; preds = %67, %34
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = call i32 @free(%struct.TYPE_7__* %74)
  br label %76

76:                                               ; preds = %73, %16
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %64, %14
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @sem_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
