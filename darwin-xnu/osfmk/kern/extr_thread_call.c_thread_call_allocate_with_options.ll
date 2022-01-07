; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_allocate_with_options.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_allocate_with_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@THREAD_CALL_INDEX_HIGH = common dso_local global i32 0, align 4
@THREAD_CALL_INDEX_KERNEL = common dso_local global i32 0, align 4
@THREAD_CALL_INDEX_USER = common dso_local global i32 0, align 4
@THREAD_CALL_INDEX_LOW = common dso_local global i32 0, align 4
@THREAD_CALL_INDEX_KERNEL_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid thread call pri value: %d\00", align 1
@THREAD_CALL_OPTIONS_ONCE = common dso_local global i32 0, align 4
@THREAD_CALL_ONCE = common dso_local global i32 0, align 4
@THREAD_CALL_OPTIONS_SIGNAL = common dso_local global i32 0, align 4
@THREAD_CALL_SIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @thread_call_allocate_with_options(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TYPE_4__* @thread_call_allocate(i32 %10, i32 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %9, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %34 [
    i32 132, label %14
    i32 131, label %18
    i32 128, label %22
    i32 129, label %26
    i32 130, label %30
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @THREAD_CALL_INDEX_HIGH, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %37

18:                                               ; preds = %4
  %19 = load i32, i32* @THREAD_CALL_INDEX_KERNEL, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %37

22:                                               ; preds = %4
  %23 = load i32, i32* @THREAD_CALL_INDEX_USER, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %37

26:                                               ; preds = %4
  %27 = load i32, i32* @THREAD_CALL_INDEX_LOW, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %37

30:                                               ; preds = %4
  %31 = load i32, i32* @THREAD_CALL_INDEX_KERNEL_HIGH, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %30, %26, %22, %18, %14
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @THREAD_CALL_OPTIONS_ONCE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @THREAD_CALL_ONCE, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @THREAD_CALL_OPTIONS_SIGNAL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* @THREAD_CALL_SIGNAL, align 4
  %55 = load i32, i32* @THREAD_CALL_ONCE, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  ret %struct.TYPE_4__* %62
}

declare dso_local %struct.TYPE_4__* @thread_call_allocate(i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
