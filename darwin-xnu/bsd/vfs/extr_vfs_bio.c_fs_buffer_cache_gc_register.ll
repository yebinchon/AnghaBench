; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_fs_buffer_cache_gc_register.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_fs_buffer_cache_gc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i32, i8*)*, i8* }

@buf_gc_callout = common dso_local global i32 0, align 4
@FS_BUFFER_CACHE_GC_CALLOUTS_MAX_SIZE = common dso_local global i32 0, align 4
@fs_callouts = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fs_buffer_cache_gc_register(void (i32, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void (i32, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store void (i32, i8*)* %0, void (i32, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @buf_gc_callout, align 4
  %8 = call i32 @lck_mtx_lock(i32 %7)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @FS_BUFFER_CACHE_GC_CALLOUTS_MAX_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs_callouts, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load void (i32, i8*)*, void (i32, i8*)** %18, align 8
  %20 = icmp eq void (i32, i8*)* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %13
  %22 = load void (i32, i8*)*, void (i32, i8*)** %4, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs_callouts, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store void (i32, i8*)* %22, void (i32, i8*)** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs_callouts, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i8* %28, i8** %33, align 8
  %34 = load i32, i32* @buf_gc_callout, align 4
  %35 = call i32 @lck_mtx_unlock(i32 %34)
  store i32 0, i32* %3, align 4
  br label %44

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load i32, i32* @buf_gc_callout, align 4
  %42 = call i32 @lck_mtx_unlock(i32 %41)
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
