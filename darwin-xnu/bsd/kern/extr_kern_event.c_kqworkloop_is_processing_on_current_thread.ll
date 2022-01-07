; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_is_processing_on_current_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_is_processing_on_current_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { %struct.TYPE_2__, %struct.kqueue }
%struct.TYPE_2__ = type { i64 }
%struct.kqueue = type { i32 }

@KQ_PROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqworkloop*)* @kqworkloop_is_processing_on_current_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqworkloop_is_processing_on_current_thread(%struct.kqworkloop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kqworkloop*, align 8
  %4 = alloca %struct.kqueue*, align 8
  store %struct.kqworkloop* %0, %struct.kqworkloop** %3, align 8
  %5 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %6 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %5, i32 0, i32 1
  store %struct.kqueue* %6, %struct.kqueue** %4, align 8
  %7 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %8 = call i32 @kqlock_held(%struct.kqueue* %7)
  %9 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %10 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KQ_PROCESSING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %17 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 (...) @current_thread()
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i64 @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
