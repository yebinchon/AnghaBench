; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_release_last.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_release_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.kqueue = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.kqueue* }

@KQ_DYNAMIC = common dso_local global i32 0, align 4
@KQUEUE_MIGHT_BE_LAST_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, i32, %struct.kqueue*)* @kqueue_release_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_release_last(%struct.proc* %0, i32 %1, %struct.kqueue* %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.kqueue*, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.TYPE_3__* %4 to { i32, %struct.kqueue* }*
  %9 = getelementptr inbounds { i32, %struct.kqueue* }, { i32, %struct.kqueue* }* %8, i32 0, i32 0
  store i32 %1, i32* %9, align 8
  %10 = getelementptr inbounds { i32, %struct.kqueue* }, { i32, %struct.kqueue* }* %8, i32 0, i32 1
  store %struct.kqueue* %2, %struct.kqueue** %10, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %12 = load %struct.kqueue*, %struct.kqueue** %11, align 8
  store %struct.kqueue* %12, %struct.kqueue** %6, align 8
  %13 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %14 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KQ_DYNAMIC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %3
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = call i32 @kqhash_lock(%struct.proc* %20)
  %22 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %23 = load i32, i32* @KQUEUE_MIGHT_BE_LAST_REF, align 4
  %24 = call i64 @kqueue_release(%struct.kqueue* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @kqworkloop_invalidate(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load %struct.proc*, %struct.proc** %5, align 8
  %31 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %32 = call i32 @kqueue_hash_remove(%struct.proc* %30, %struct.kqueue* %31)
  %33 = load %struct.proc*, %struct.proc** %5, align 8
  %34 = call i32 @kqhash_unlock(%struct.proc* %33)
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @thread_deallocate(i64 %38)
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %42 = call i32 @kqueue_dealloc(%struct.kqueue* %41)
  br label %46

43:                                               ; preds = %19
  %44 = load %struct.proc*, %struct.proc** %5, align 8
  %45 = call i32 @kqhash_unlock(%struct.proc* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %3
  ret void
}

declare dso_local i32 @kqhash_lock(%struct.proc*) #1

declare dso_local i64 @kqueue_release(%struct.kqueue*, i32) #1

declare dso_local i64 @kqworkloop_invalidate(i32) #1

declare dso_local i32 @kqueue_hash_remove(%struct.proc*, %struct.kqueue*) #1

declare dso_local i32 @kqhash_unlock(%struct.proc*) #1

declare dso_local i32 @thread_deallocate(i64) #1

declare dso_local i32 @kqueue_dealloc(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
