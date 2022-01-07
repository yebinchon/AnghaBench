; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidthreadinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidthreadinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.proc_threadinfo = type { i32 }
%struct.proc_threadinfo_internal = type { i32 }

@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidthreadinfo(%struct.TYPE_3__* %0, i32 %1, i32 %2, %struct.proc_threadinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc_threadinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.proc_threadinfo* %3, %struct.proc_threadinfo** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.proc_threadinfo*, %struct.proc_threadinfo** %9, align 8
  %14 = call i32 @bzero(%struct.proc_threadinfo* %13, i32 4)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.proc_threadinfo*, %struct.proc_threadinfo** %9, align 8
  %21 = bitcast %struct.proc_threadinfo* %20 to %struct.proc_threadinfo_internal*
  %22 = call i32 @fill_taskthreadinfo(i32 %17, i32 %18, i32 %19, %struct.proc_threadinfo_internal* %21, i32* null, i32* null)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @ESRCH, align 4
  store i32 %26, i32* %5, align 4
  br label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @bzero(%struct.proc_threadinfo*, i32) #1

declare dso_local i32 @fill_taskthreadinfo(i32, i32, i32, %struct.proc_threadinfo_internal*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
