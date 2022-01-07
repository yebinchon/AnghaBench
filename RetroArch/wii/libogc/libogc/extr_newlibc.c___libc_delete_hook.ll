; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_newlibc.c___libc_delete_hook.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_newlibc.c___libc_delete_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_4__ = type { i64 }

@_REENT = common dso_local global %struct._reent* null, align 8
@libc_globl_reent = common dso_local global %struct._reent zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__libc_delete_hook(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct._reent*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp eq %struct.TYPE_4__* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct._reent*, %struct._reent** @_REENT, align 8
  store %struct._reent* %10, %struct._reent** %5, align 8
  br label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct._reent*
  store %struct._reent* %15, %struct._reent** %5, align 8
  br label %16

16:                                               ; preds = %11, %9
  %17 = load %struct._reent*, %struct._reent** %5, align 8
  %18 = icmp ne %struct._reent* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct._reent*, %struct._reent** %5, align 8
  %21 = icmp ne %struct._reent* %20, @libc_globl_reent
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct._reent*, %struct._reent** %5, align 8
  %24 = call i32 @_reclaim_reent(%struct._reent* %23)
  %25 = load %struct._reent*, %struct._reent** %5, align 8
  %26 = call i32 @free(%struct._reent* %25)
  br label %27

27:                                               ; preds = %22, %19, %16
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = icmp eq %struct.TYPE_4__* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store %struct._reent* null, %struct._reent** @_REENT, align 8
  br label %34

34:                                               ; preds = %33, %27
  ret i32 1
}

declare dso_local i32 @_reclaim_reent(%struct._reent*) #1

declare dso_local i32 @free(%struct._reent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
