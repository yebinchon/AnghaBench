; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_gdbstub_indextoid.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_gdbstub_indextoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64* }

@_thr_idle = common dso_local global i32* null, align 8
@_lwp_thr_objects = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gdbstub_indextoid(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %36

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32*, i32** @_thr_idle, align 8
  store i32* %15, i32** %2, align 8
  br label %36

16:                                               ; preds = %11
  store i64 1, i64* %6, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_lwp_thr_objects, i32 0, i32 0), align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_lwp_thr_objects, i32 0, i32 1), align 8
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  %24 = add nsw i64 %20, %23
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %16
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_lwp_thr_objects, i32 0, i32 2), align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %28, %29
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  store i32* %34, i32** %2, align 8
  br label %36

35:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  br label %36

36:                                               ; preds = %35, %26, %14, %10
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
