; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_key.c_pthread_key_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_key.c_pthread_key_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { void (i8*)*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PTE_OS_OK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_INITIALIZER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_key_create(%struct.TYPE_4__** %0, void (i8*)* %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = call i64 @calloc(i32 1, i32 16)
  %9 = inttoptr i64 %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  store i32 %12, i32* %5, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = call i64 @pte_osTlsAlloc(i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PTE_OS_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @EAGAIN, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = call i32 @free(%struct.TYPE_4__* %22)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %35

24:                                               ; preds = %13
  %25 = load void (i8*)*, void (i8*)** %4, align 8
  %26 = icmp ne void (i8*)* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* @PTHREAD_MUTEX_INITIALIZER, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load void (i8*)*, void (i8*)** %4, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store void (i8*)* %31, void (i8*)** %33, align 8
  br label %34

34:                                               ; preds = %27, %24
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35, %11
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %38, align 8
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @pte_osTlsAlloc(i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
