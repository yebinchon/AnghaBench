; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_execargs_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_execargs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i8*, i8*, i8*, i32, i32 }

@execargs_free_count = common dso_local global i64 0, align 8
@execargs_waiters = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@execargs_cache_size = common dso_local global i32 0, align 4
@execargs_cache = common dso_local global i64* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NCARGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_params*)* @execargs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execargs_alloc(%struct.image_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_params*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  store i32 -1, i32* %7, align 4
  %9 = call i32 (...) @execargs_lock_lock()
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i64, i64* @execargs_free_count, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* @execargs_waiters, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @execargs_waiters, align 4
  %16 = call i64 (...) @execargs_lock_sleep()
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* @execargs_waiters, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @execargs_waiters, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @THREAD_AWAKENED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = call i32 (...) @execargs_lock_unlock()
  %24 = load i32, i32* @EINTR, align 4
  store i32 %24, i32* %2, align 4
  br label %111

25:                                               ; preds = %13
  br label %10

26:                                               ; preds = %10
  %27 = load i64, i64* @execargs_free_count, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* @execargs_free_count, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %56, %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @execargs_cache_size, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load i64*, i64** @execargs_cache, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i64*, i64** @execargs_cache, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.image_params*, %struct.image_params** %3, align 8
  %50 = getelementptr inbounds %struct.image_params, %struct.image_params* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i64*, i64** @execargs_cache, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 0, i64* %54, align 8
  br label %59

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %29

59:                                               ; preds = %41, %29
  %60 = load i64, i64* @execargs_free_count, align 8
  %61 = icmp sge i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = call i32 (...) @execargs_lock_unlock()
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.image_params*, %struct.image_params** %3, align 8
  %69 = getelementptr inbounds %struct.image_params, %struct.image_params* %68, i32 0, i32 0
  %70 = call i64 @execargs_purgeable_allocate(i8** %69)
  store i64 %70, i64* %4, align 8
  br label %76

71:                                               ; preds = %59
  %72 = load %struct.image_params*, %struct.image_params** %3, align 8
  %73 = getelementptr inbounds %struct.image_params, %struct.image_params* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @execargs_purgeable_reference(i8* %74)
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %71, %67
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @KERN_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @KERN_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @ENOMEM, align 4
  store i32 %86, i32* %2, align 4
  br label %111

87:                                               ; preds = %76
  %88 = load %struct.image_params*, %struct.image_params** %3, align 8
  %89 = getelementptr inbounds %struct.image_params, %struct.image_params* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* @NCARGS, align 4
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  %96 = load %struct.image_params*, %struct.image_params** %3, align 8
  %97 = getelementptr inbounds %struct.image_params, %struct.image_params* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.image_params*, %struct.image_params** %3, align 8
  %99 = getelementptr inbounds %struct.image_params, %struct.image_params* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.image_params*, %struct.image_params** %3, align 8
  %102 = getelementptr inbounds %struct.image_params, %struct.image_params* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @NCARGS, align 4
  %104 = load %struct.image_params*, %struct.image_params** %3, align 8
  %105 = getelementptr inbounds %struct.image_params, %struct.image_params* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @NCARGS, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = add nsw i32 %106, %107
  %109 = load %struct.image_params*, %struct.image_params** %3, align 8
  %110 = getelementptr inbounds %struct.image_params, %struct.image_params* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %87, %85, %22
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @execargs_lock_lock(...) #1

declare dso_local i64 @execargs_lock_sleep(...) #1

declare dso_local i32 @execargs_lock_unlock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @execargs_purgeable_allocate(i8**) #1

declare dso_local i64 @execargs_purgeable_reference(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
