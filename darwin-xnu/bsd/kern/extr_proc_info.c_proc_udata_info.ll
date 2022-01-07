; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_udata_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_udata_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@PROC_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_udata_info(i32 %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.TYPE_5__* @proc_find(i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %13, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PROC_NULL, align 8
  %18 = icmp eq %struct.TYPE_5__* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ESRCH, align 4
  store i32 %20, i32* %6, align 4
  br label %59

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 (...) @proc_selfpid()
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EACCES, align 4
  store i32 %28, i32* %12, align 4
  br label %50

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %12, align 4
  br label %50

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %47 [
    i32 128, label %37
    i32 129, label %42
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = call i32 @copyin(i32 %38, i32* %40, i32 4)
  store i32 %41, i32* %12, align 4
  br label %49

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @copyout(i32* %44, i32 %45, i32 4)
  store i32 %46, i32* %12, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @ENOTSUP, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %47, %42, %37
  br label %50

50:                                               ; preds = %49, %33, %27
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = call i32 @proc_rele(%struct.TYPE_5__* %51)
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64*, i64** %11, align 8
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %19
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_5__* @proc_find(i32) #1

declare dso_local i64 @proc_selfpid(...) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @proc_rele(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
