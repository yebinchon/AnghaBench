; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_rel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { i64, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"refcnt = %d info = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"throttle info ref cnt went negative!\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Freeing info = %p\0A\00", align 1
@throttle_lock_grp = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._throttle_io_info_t*)* @throttle_info_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throttle_info_rel(%struct._throttle_io_info_t* %0) #0 {
  %2 = alloca %struct._throttle_io_info_t*, align 8
  %3 = alloca i32, align 4
  store %struct._throttle_io_info_t* %0, %struct._throttle_io_info_t** %2, align 8
  %4 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %5 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %4, i32 0, i32 0
  %6 = call i32 @OSDecrementAtomic(i64* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %11 = call i32 (i8*, %struct._throttle_io_info_t*, ...) @DEBUG_ALLOC_THROTTLE_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct._throttle_io_info_t* %7, i32 %9, %struct._throttle_io_info_t* %10)
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %18 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %23 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %28 = call i32 (i8*, %struct._throttle_io_info_t*, ...) @DEBUG_ALLOC_THROTTLE_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct._throttle_io_info_t* %27)
  %29 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %30 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %29, i32 0, i32 1
  %31 = load i32, i32* @throttle_lock_grp, align 4
  %32 = call i32 @lck_mtx_destroy(i32* %30, i32 %31)
  %33 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %34 = load i32, i32* @M_TEMP, align 4
  %35 = call i32 @FREE(%struct._throttle_io_info_t* %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %21, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @OSDecrementAtomic(i64*) #1

declare dso_local i32 @DEBUG_ALLOC_THROTTLE_INFO(i8*, %struct._throttle_io_info_t*, ...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @FREE(%struct._throttle_io_info_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
