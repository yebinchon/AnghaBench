; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_barrier.c_pthread_barrier_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_barrier.c_pthread_barrier_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@PTE_OBJECT_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_barrier_destroy(%struct.TYPE_4__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %7 = icmp eq %struct.TYPE_4__** %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i64, i64* @PTE_OBJECT_INVALID, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  %13 = icmp eq %struct.TYPE_4__* %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %49

16:                                               ; preds = %8
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %5, align 8
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i32 @sem_destroy(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = icmp eq i32 0, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %16
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = call i32 @sem_destroy(i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = icmp eq i32 0, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = call i32 @free(%struct.TYPE_4__* %34)
  store i32 0, i32* %2, align 4
  br label %49

36:                                               ; preds = %26
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sem_init(i32* %40, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %36, %16
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %47, align 8
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %33, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @sem_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @sem_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
