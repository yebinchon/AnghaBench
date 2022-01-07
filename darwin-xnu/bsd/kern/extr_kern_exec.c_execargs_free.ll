; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_execargs_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_execargs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@execargs_free_count = common dso_local global i32 0, align 4
@execargs_cache_size = common dso_local global i32 0, align 4
@execargs_cache = common dso_local global i64* null, align 8
@execargs_waiters = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_params*)* @execargs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execargs_free(%struct.image_params* %0) #0 {
  %2 = alloca %struct.image_params*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.image_params* %0, %struct.image_params** %2, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.image_params*, %struct.image_params** %2, align 8
  %9 = getelementptr inbounds %struct.image_params, %struct.image_params* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @execargs_purgeable_volatilize(i32* %10)
  store i64 %11, i64* %3, align 8
  %12 = call i32 (...) @execargs_lock_lock()
  %13 = load i32, i32* @execargs_free_count, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @execargs_free_count, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %39, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @execargs_cache_size, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load i64*, i64** @execargs_cache, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.image_params*, %struct.image_params** %2, align 8
  %29 = getelementptr inbounds %struct.image_params, %struct.image_params* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = ptrtoint i32* %30 to i64
  %32 = load i64*, i64** @execargs_cache, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %31, i64* %35, align 8
  %36 = load %struct.image_params*, %struct.image_params** %2, align 8
  %37 = getelementptr inbounds %struct.image_params, %struct.image_params* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %42

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %15

42:                                               ; preds = %27, %15
  %43 = load %struct.image_params*, %struct.image_params** %2, align 8
  %44 = getelementptr inbounds %struct.image_params, %struct.image_params* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i64, i64* @execargs_waiters, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %51, %42
  %54 = call i32 (...) @execargs_lock_unlock()
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @TRUE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 (...) @execargs_wakeup_waiters()
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @KERN_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 0, %64 ], [ %66, %65 ]
  ret i32 %68
}

declare dso_local i64 @execargs_purgeable_volatilize(i32*) #1

declare dso_local i32 @execargs_lock_lock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @execargs_lock_unlock(...) #1

declare dso_local i32 @execargs_wakeup_waiters(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
