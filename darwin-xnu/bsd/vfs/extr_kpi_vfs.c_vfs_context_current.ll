; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_context_current.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_context_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @vfs_context_current() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  %3 = call i32 (...) @current_thread()
  %4 = call i32 @get_bsdthread_info(i32 %3)
  %5 = sext i32 %4 to i64
  %6 = inttoptr i64 %5 to %struct.TYPE_6__*
  store volatile %struct.TYPE_6__* %6, %struct.TYPE_6__** %2, align 8
  %7 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load volatile %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %1, align 8
  br label %18

18:                                               ; preds = %15, %9
  br label %19

19:                                               ; preds = %18, %0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call %struct.TYPE_5__* (...) @vfs_context_kernel()
  br label %26

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi %struct.TYPE_5__* [ %23, %22 ], [ %25, %24 ]
  ret %struct.TYPE_5__* %27
}

declare dso_local i32 @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local %struct.TYPE_5__* @vfs_context_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
