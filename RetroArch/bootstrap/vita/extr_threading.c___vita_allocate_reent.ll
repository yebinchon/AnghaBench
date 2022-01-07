; ModuleID = '/home/carl/AnghaBench/RetroArch/bootstrap/vita/extr_threading.c___vita_allocate_reent.c'
source_filename = "/home/carl/AnghaBench/RetroArch/bootstrap/vita/extr_threading.c___vita_allocate_reent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reent_for_thread = type { i64 }

@MAX_THREADS = common dso_local global i32 0, align 4
@reent_list = common dso_local global %struct.reent_for_thread* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reent_for_thread* ()* @__vita_allocate_reent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reent_for_thread* @__vita_allocate_reent() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.reent_for_thread*, align 8
  store %struct.reent_for_thread* null, %struct.reent_for_thread** %2, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %21, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_THREADS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load %struct.reent_for_thread*, %struct.reent_for_thread** @reent_list, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.reent_for_thread, %struct.reent_for_thread* %8, i64 %10
  %12 = getelementptr inbounds %struct.reent_for_thread, %struct.reent_for_thread* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.reent_for_thread*, %struct.reent_for_thread** @reent_list, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.reent_for_thread, %struct.reent_for_thread* %16, i64 %18
  store %struct.reent_for_thread* %19, %struct.reent_for_thread** %2, align 8
  br label %24

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %3

24:                                               ; preds = %15, %3
  %25 = load %struct.reent_for_thread*, %struct.reent_for_thread** %2, align 8
  ret %struct.reent_for_thread* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
