; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_drop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.knote = type { i32, i32, i32 }
%struct.knote_lock_ctx = type { i32 }
%struct.TYPE_2__ = type { i64, i32 (%struct.knote*)* }

@KN_DROPPING = common dso_local global i32 0, align 4
@KN_LOCKED = common dso_local global i32 0, align 4
@KN_ATTACHED = common dso_local global i32 0, align 4
@KN_VANISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqueue*, %struct.knote*, %struct.knote_lock_ctx*)* @knote_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_drop(%struct.kqueue* %0, %struct.knote* %1, %struct.knote_lock_ctx* %2) #0 {
  %4 = alloca %struct.kqueue*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.knote_lock_ctx*, align 8
  %7 = alloca %struct.proc*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  store %struct.knote_lock_ctx* %2, %struct.knote_lock_ctx** %6, align 8
  %8 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %9 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %8, i32 0, i32 0
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %7, align 8
  %11 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %12 = call i32 @kqlock_held(%struct.kqueue* %11)
  %13 = load %struct.knote*, %struct.knote** %5, align 8
  %14 = getelementptr inbounds %struct.knote, %struct.knote* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KN_DROPPING, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.knote_lock_ctx*, %struct.knote_lock_ctx** %6, align 8
  %22 = icmp eq %struct.knote_lock_ctx* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.knote*, %struct.knote** %5, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @KN_LOCKED, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %32

32:                                               ; preds = %23, %3
  %33 = load i32, i32* @KN_DROPPING, align 4
  %34 = load %struct.knote*, %struct.knote** %5, align 8
  %35 = getelementptr inbounds %struct.knote, %struct.knote* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.knote*, %struct.knote** %5, align 8
  %39 = call i32 @knote_unsuppress(%struct.knote* %38)
  %40 = load %struct.knote*, %struct.knote** %5, align 8
  %41 = call i32 @knote_dequeue(%struct.knote* %40)
  %42 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %43 = load %struct.knote*, %struct.knote** %5, align 8
  %44 = call i32 @knote_wait_for_filter_events(%struct.kqueue* %42, %struct.knote* %43)
  %45 = load %struct.knote*, %struct.knote** %5, align 8
  %46 = getelementptr inbounds %struct.knote, %struct.knote* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @KN_ATTACHED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %32
  %52 = load %struct.knote*, %struct.knote** %5, align 8
  %53 = call %struct.TYPE_2__* @knote_fops(%struct.knote* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.knote*)*, i32 (%struct.knote*)** %54, align 8
  %56 = load %struct.knote*, %struct.knote** %5, align 8
  %57 = call i32 %55(%struct.knote* %56)
  br label %58

58:                                               ; preds = %51, %32
  %59 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %60 = load %struct.knote*, %struct.knote** %5, align 8
  %61 = load %struct.proc*, %struct.proc** %7, align 8
  %62 = load %struct.knote_lock_ctx*, %struct.knote_lock_ctx** %6, align 8
  %63 = call i32 @kq_remove_knote(%struct.kqueue* %59, %struct.knote* %60, %struct.proc* %61, %struct.knote_lock_ctx* %62)
  %64 = load %struct.knote*, %struct.knote** %5, align 8
  %65 = call %struct.TYPE_2__* @knote_fops(%struct.knote* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %58
  %70 = load %struct.knote*, %struct.knote** %5, align 8
  %71 = getelementptr inbounds %struct.knote, %struct.knote* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @KN_VANISHED, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.proc*, %struct.proc** %7, align 8
  %78 = load %struct.knote*, %struct.knote** %5, align 8
  %79 = getelementptr inbounds %struct.knote, %struct.knote* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.knote*, %struct.knote** %5, align 8
  %82 = getelementptr inbounds %struct.knote, %struct.knote* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @fp_drop(%struct.proc* %77, i32 %80, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %76, %69, %58
  %86 = load %struct.knote*, %struct.knote** %5, align 8
  %87 = call i32 @knote_free(%struct.knote* %86)
  ret void
}

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @knote_unsuppress(%struct.knote*) #1

declare dso_local i32 @knote_dequeue(%struct.knote*) #1

declare dso_local i32 @knote_wait_for_filter_events(%struct.kqueue*, %struct.knote*) #1

declare dso_local %struct.TYPE_2__* @knote_fops(%struct.knote*) #1

declare dso_local i32 @kq_remove_knote(%struct.kqueue*, %struct.knote*, %struct.proc*, %struct.knote_lock_ctx*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, i32, i32) #1

declare dso_local i32 @knote_free(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
