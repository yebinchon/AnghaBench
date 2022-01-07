; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_enqueue_exception_with_corpse.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_task_enqueue_exception_with_corpse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TASK_NULL = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@EXC_RESOURCE = common dso_local global i32 0, align 4
@EXC_GUARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @task_enqueue_exception_with_corpse(i64 %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i64, i64* @TASK_NULL, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* @THREAD_NULL, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %20, i64* %6, align 8
  br label %64

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @task_generate_corpse_internal(i64 %22, i64* %12, i64* %13, i32 %23, i32 %26, i32 %29, i8* %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %21
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @THREAD_NULL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %40, i64* %6, align 8
  br label %64

41:                                               ; preds = %35
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @TASK_NULL, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @EXC_RESOURCE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @EXC_GUARD, align 4
  %53 = icmp eq i32 %51, %52
  br label %54

54:                                               ; preds = %50, %41
  %55 = phi i1 [ true, %41 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @thread_exception_enqueue(i64 %58, i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %21
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %62, %39, %19
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

declare dso_local i64 @task_generate_corpse_internal(i64, i64*, i64*, i32, i32, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_exception_enqueue(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
