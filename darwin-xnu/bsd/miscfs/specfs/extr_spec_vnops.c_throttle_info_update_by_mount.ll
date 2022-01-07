; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_update_by_mount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_update_by_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct._throttle_io_info_t = type opaque
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@_throttle_io_info = common dso_local global i32* null, align 8
@LOWPRI_MAX_NUM_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @throttle_info_update_by_mount(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct._throttle_io_info_t*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @current_thread()
  %8 = call %struct.TYPE_7__* @get_bsdthread_info(i32 %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = call i64 @disk_conditioner_mount_is_ssd(%struct.TYPE_8__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32*, i32** @_throttle_io_info, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = bitcast i32* %22 to %struct._throttle_io_info_t*
  store %struct._throttle_io_info_t* %23, %struct._throttle_io_info_t** %3, align 8
  br label %31

24:                                               ; preds = %1
  %25 = load i32*, i32** @_throttle_io_info, align 8
  %26 = load i32, i32* @LOWPRI_MAX_NUM_DEV, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = bitcast i32* %29 to %struct._throttle_io_info_t*
  store %struct._throttle_io_info_t* %30, %struct._throttle_io_info_t** %3, align 8
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %3, align 8
  %39 = bitcast %struct._throttle_io_info_t* %38 to i8*
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @throttle_info_set_initial_window(%struct.TYPE_7__* %37, i8* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %3, align 8
  %45 = bitcast %struct._throttle_io_info_t* %44 to i8*
  ret i8* %45
}

declare dso_local %struct.TYPE_7__* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @disk_conditioner_mount_is_ssd(%struct.TYPE_8__*) #1

declare dso_local i32 @throttle_info_set_initial_window(%struct.TYPE_7__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
