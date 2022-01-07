; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_set_tasks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_set_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSET_THING_TASK = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @processor_set_tasks(i32 %0, i64** %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i64**, i64*** %6, align 8
  %12 = bitcast i64** %11 to i8**
  %13 = load i64*, i64** %7, align 8
  %14 = load i32, i32* @PSET_THING_TASK, align 4
  %15 = call i64 @processor_set_things(i32 %10, i8** %12, i64* %13, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @KERN_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %4, align 8
  br label %43

21:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i64, i64* %9, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i64**, i64*** %6, align 8
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @convert_task_to_port(i64 %32)
  %34 = load i64**, i64*** %6, align 8
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 %33, i64* %37, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %22

41:                                               ; preds = %22
  %42 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %19
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @processor_set_things(i32, i8**, i64*, i32) #1

declare dso_local i64 @convert_task_to_port(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
