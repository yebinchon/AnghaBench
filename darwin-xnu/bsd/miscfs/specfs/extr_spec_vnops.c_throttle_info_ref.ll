; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_ref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"refcnt = %d info = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Taking a reference without calling create throttle info!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._throttle_io_info_t*)* @throttle_info_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throttle_info_ref(%struct._throttle_io_info_t* %0) #0 {
  %2 = alloca %struct._throttle_io_info_t*, align 8
  %3 = alloca i32, align 4
  store %struct._throttle_io_info_t* %0, %struct._throttle_io_info_t** %2, align 8
  %4 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %5 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %4, i32 0, i32 1
  %6 = call i32 @OSIncrementAtomic(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %11 = call i32 @DEBUG_ALLOC_THROTTLE_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct._throttle_io_info_t* %7, i32 %9, %struct._throttle_io_info_t* %10)
  %12 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %2, align 8
  %13 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @panic(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @DEBUG_ALLOC_THROTTLE_INFO(i8*, %struct._throttle_io_info_t*, i32, %struct._throttle_io_info_t*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
