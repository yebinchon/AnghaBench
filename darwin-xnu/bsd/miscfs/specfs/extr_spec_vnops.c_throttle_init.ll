; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { i32, i64, i64, i64*, i64*, i32*, i32, i32 }

@throttle_lock_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"throttle I/O\00", align 1
@throttle_lock_grp = common dso_local global i32 0, align 4
@throttle_lock_attr = common dso_local global i32 0, align 4
@LOWPRI_MAX_NUM_DEV = common dso_local global i32 0, align 4
@_throttle_io_info = common dso_local global %struct._throttle_io_info_t* null, align 8
@throttle_timer = common dso_local global i64 0, align 8
@THROTTLE_LEVEL_END = common dso_local global i32 0, align 4
@iosched_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throttle_init() #0 {
  %1 = alloca %struct._throttle_io_info_t*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %4, i32* @throttle_lock_grp_attr, align 4
  %5 = load i32, i32* @throttle_lock_grp_attr, align 4
  %6 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32 %6, i32* @throttle_lock_grp, align 4
  %7 = call i32 (...) @throttle_init_throttle_window()
  %8 = call i32 (...) @lck_attr_alloc_init()
  store i32 %8, i32* @throttle_lock_attr, align 4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %65, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @LOWPRI_MAX_NUM_DEV, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %9
  %14 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** @_throttle_io_info, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %14, i64 %16
  store %struct._throttle_io_info_t* %17, %struct._throttle_io_info_t** %1, align 8
  %18 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %1, align 8
  %19 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %18, i32 0, i32 7
  %20 = load i32, i32* @throttle_lock_grp, align 4
  %21 = load i32, i32* @throttle_lock_attr, align 4
  %22 = call i32 @lck_mtx_init(i32* %19, i32 %20, i32 %21)
  %23 = load i64, i64* @throttle_timer, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %1, align 8
  %26 = ptrtoint %struct._throttle_io_info_t* %25 to i32
  %27 = call i32 @thread_call_allocate(i32 %24, i32 %26)
  %28 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %1, align 8
  %29 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %54, %13
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @THROTTLE_LEVEL_END, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %1, align 8
  %36 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @TAILQ_INIT(i32* %40)
  %42 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %1, align 8
  %43 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 0, i64* %47, align 8
  %48 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %1, align 8
  %49 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load i32, i32* @THROTTLE_LEVEL_END, align 4
  %59 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %1, align 8
  %60 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %1, align 8
  %62 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %1, align 8
  %64 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %9

68:                                               ; preds = %9
  ret void
}

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @throttle_init_throttle_window(...) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @thread_call_allocate(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
