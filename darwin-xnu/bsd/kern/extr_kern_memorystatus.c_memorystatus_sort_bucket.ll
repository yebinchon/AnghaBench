; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_sort_bucket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_sort_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MEMSTAT_BUCKET_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@JETSAM_SORT_DEFAULT = common dso_local global i32 0, align 4
@COALITION_SORT_DEFAULT = common dso_local global i32 0, align 4
@memstat_bucket = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @memorystatus_sort_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_sort_bucket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MEMSTAT_BUCKET_COUNT, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @JETSAM_SORT_DEFAULT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @COALITION_SORT_DEFAULT, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %16
  %21 = call i32 (...) @proc_list_lock()
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memstat_bucket, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 (...) @proc_list_unlock()
  store i32 0, i32* %3, align 4
  br label %47

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %42 [
    i32 128, label %33
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @memorystatus_sort_by_largest_coalition_locked(i32 %34, i32 %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @memorystatus_sort_by_largest_process_locked(i32 %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %45

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @memorystatus_sort_by_largest_process_locked(i32 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = call i32 (...) @proc_list_unlock()
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %29, %18, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @memorystatus_sort_by_largest_coalition_locked(i32, i32) #1

declare dso_local i32 @memorystatus_sort_by_largest_process_locked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
