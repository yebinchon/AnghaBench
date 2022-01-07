; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_gdbstub_getnextthread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_gdbstub_getnextthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32** }

@_lwp_thr_objects = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbstub_getnextthread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_lwp_thr_objects, i32 0, i32 0), align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_lwp_thr_objects, i32 0, i32 1), align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %13
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %5, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %51, %33
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_lwp_thr_objects, i32 0, i32 2), align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %40, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %56

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %35

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %13
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %48, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
