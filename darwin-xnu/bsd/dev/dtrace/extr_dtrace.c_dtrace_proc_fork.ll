; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_proc_fork.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_proc_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32* }

@DTRACE_LAZY_DOFS_DUPLICATED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_proc_fork(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %3
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = call i32 @dtrace_sprlock(%struct.TYPE_14__* %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = call i32 @dtrace_fasttrap_fork(%struct.TYPE_14__* %17, %struct.TYPE_14__* %18)
  br label %20

20:                                               ; preds = %16, %9
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i32 @dtrace_sprunlock(%struct.TYPE_14__* %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = call i64 @dtrace_lazy_dofs_duplicate(%struct.TYPE_14__* %23, %struct.TYPE_14__* %24)
  %26 = load i64, i64* @DTRACE_LAZY_DOFS_DUPLICATED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  br i1 true, label %35, label %39

35:                                               ; preds = %34
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call i32 @dtrace_helpers_fork(%struct.TYPE_14__* %36, %struct.TYPE_14__* %37)
  br label %39

39:                                               ; preds = %35, %34, %29
  br label %40

40:                                               ; preds = %28, %39, %3
  ret void
}

declare dso_local i32 @dtrace_sprlock(%struct.TYPE_14__*) #1

declare dso_local i32 @dtrace_fasttrap_fork(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @dtrace_sprunlock(%struct.TYPE_14__*) #1

declare dso_local i64 @dtrace_lazy_dofs_duplicate(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @dtrace_helpers_fork(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
