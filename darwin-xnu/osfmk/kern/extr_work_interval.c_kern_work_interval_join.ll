; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_kern_work_interval_join.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_kern_work_interval_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_interval = type { i32 }

@MACH_PORT_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kern_work_interval_join(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.work_interval*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.work_interval* null, %struct.work_interval** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MACH_PORT_NULL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @thread_set_work_interval(i32 %12, %struct.work_interval* null)
  %14 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %14, i64* %3, align 8
  br label %32

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @port_name_to_work_interval(i64 %16, %struct.work_interval** %6)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @KERN_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %3, align 8
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.work_interval*, %struct.work_interval** %6, align 8
  %25 = icmp ne %struct.work_interval* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.work_interval*, %struct.work_interval** %6, align 8
  %30 = call i32 @thread_set_work_interval(i32 %28, %struct.work_interval* %29)
  %31 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %23, %21, %11
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i32 @thread_set_work_interval(i32, %struct.work_interval*) #1

declare dso_local i64 @port_name_to_work_interval(i64, %struct.work_interval**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
