; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_throw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_throw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@pte_selfThreadKey = common dso_local global i32 0, align 4
@PTHREAD_CANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pte_throw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @pte_selfThreadKey, align 4
  %6 = call i64 @pthread_getspecific(i32 %5)
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 129
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 128
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %10, %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %17 = icmp eq %struct.TYPE_2__* null, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18, %15
  store i32 0, i32* %4, align 4
  %24 = load i32, i32* %2, align 4
  switch i32 %24, label %31 [
    i32 129, label %25
    i32 128, label %27
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @PTHREAD_CANCELED, align 4
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %23, %27, %25
  %32 = call i32 (...) @pte_thread_detach_and_exit_np()
  br label %33

33:                                               ; preds = %31, %18
  %34 = call i32 @pte_pop_cleanup_all(i32 1)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @longjmp(i32 %37, i32 %38)
  ret void
}

declare dso_local i64 @pthread_getspecific(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pte_thread_detach_and_exit_np(...) #1

declare dso_local i32 @pte_pop_cleanup_all(i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
