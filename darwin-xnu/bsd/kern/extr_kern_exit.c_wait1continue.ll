; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_wait1continue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_wait1continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct._wait4_data }
%struct._wait4_data = type { i32*, %struct.wait4_nocancel_args* }
%struct.wait4_nocancel_args = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait1continue(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uthread*, align 8
  %7 = alloca %struct._wait4_data*, align 8
  %8 = alloca %struct.wait4_nocancel_args*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = call i32 (...) @current_proc()
  store i32 %15, i32* %4, align 4
  %16 = call i32 (...) @current_thread()
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @get_bsdthread_info(i32 %17)
  %19 = inttoptr i64 %18 to %struct.uthread*
  store %struct.uthread* %19, %struct.uthread** %6, align 8
  %20 = load %struct.uthread*, %struct.uthread** %6, align 8
  %21 = getelementptr inbounds %struct.uthread, %struct.uthread* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct._wait4_data* %22, %struct._wait4_data** %7, align 8
  %23 = load %struct._wait4_data*, %struct._wait4_data** %7, align 8
  %24 = getelementptr inbounds %struct._wait4_data, %struct._wait4_data* %23, i32 0, i32 1
  %25 = load %struct.wait4_nocancel_args*, %struct.wait4_nocancel_args** %24, align 8
  store %struct.wait4_nocancel_args* %25, %struct.wait4_nocancel_args** %8, align 8
  %26 = load %struct._wait4_data*, %struct._wait4_data** %7, align 8
  %27 = getelementptr inbounds %struct._wait4_data, %struct._wait4_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.wait4_nocancel_args*, %struct.wait4_nocancel_args** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @wait4_nocancel(i32 %29, %struct.wait4_nocancel_args* %30, i32* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @get_bsdthread_info(i32) #1

declare dso_local i32 @wait4_nocancel(i32, %struct.wait4_nocancel_args*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
