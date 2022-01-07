; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_thread_issignal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_thread_issignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.uthread = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_issignal(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uthread*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @proc_lock(%struct.TYPE_5__* %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @get_bsdthread_info(i32 %11)
  %13 = inttoptr i64 %12 to %struct.uthread*
  store %struct.uthread* %13, %struct.uthread** %7, align 8
  %14 = load %struct.uthread*, %struct.uthread** %7, align 8
  %15 = icmp ne %struct.uthread* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.uthread*, %struct.uthread** %7, align 8
  %18 = getelementptr inbounds %struct.uthread, %struct.uthread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.uthread*, %struct.uthread** %7, align 8
  %21 = getelementptr inbounds %struct.uthread, %struct.uthread* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %16, %3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = call i32 @proc_unlock(%struct.TYPE_5__* %33)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @proc_lock(%struct.TYPE_5__*) #1

declare dso_local i64 @get_bsdthread_info(i32) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
