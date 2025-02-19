; ModuleID = '/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread_cond_var.c_pthread_cond_destroy.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread_cond_var.c_pthread_cond_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_cond_destroy(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i64* %0, i64** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i64*, i64** %3, align 8
  %7 = icmp eq i64* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64*, i64** %3, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %8
  %15 = load i64*, i64** %3, align 8
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @_lock_acquire_recursive(i32* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @TAILQ_EMPTY(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @EBUSY, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %14
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @_lock_release_recursive(i32* %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i64*, i64** %3, align 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @_lock_close_recursive(i32* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = call i32 @free(%struct.TYPE_3__* %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @_lock_acquire_recursive(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @_lock_release_recursive(i32*) #1

declare dso_local i32 @_lock_close_recursive(i32*) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
