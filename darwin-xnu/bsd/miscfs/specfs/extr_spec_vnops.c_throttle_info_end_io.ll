; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_end_io.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { i32 }
%struct.TYPE_7__ = type { %struct.bufattr }
%struct.bufattr = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }

@BA_STRATEGY_TRACKED_IO = common dso_local global i32 0, align 4
@_throttle_io_info = common dso_local global %struct._throttle_io_info_t* null, align 8
@LOWPRI_MAX_NUM_DEV = common dso_local global i32 0, align 4
@BA_IO_TIER_UPGRADE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throttle_info_end_io(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.bufattr*, align 8
  %5 = alloca %struct._throttle_io_info_t*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store %struct.bufattr* %8, %struct.bufattr** %4, align 8
  %9 = load %struct.bufattr*, %struct.bufattr** %4, align 8
  %10 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BA_STRATEGY_TRACKED_IO, align 4
  %13 = call i64 @ISSET(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.bufattr*, %struct.bufattr** %4, align 8
  %18 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BA_STRATEGY_TRACKED_IO, align 4
  %21 = call i32 @CLR(i32 %19, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = call %struct.TYPE_8__* @buf_vnode(%struct.TYPE_7__* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %3, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** @_throttle_io_info, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %29, i64 %32
  store %struct._throttle_io_info_t* %33, %struct._throttle_io_info_t** %5, align 8
  br label %40

34:                                               ; preds = %16
  %35 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** @_throttle_io_info, align 8
  %36 = load i32, i32* @LOWPRI_MAX_NUM_DEV, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %35, i64 %38
  store %struct._throttle_io_info_t* %39, %struct._throttle_io_info_t** %5, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.bufattr*, %struct.bufattr** %4, align 8
  %42 = call i32 @GET_BUFATTR_IO_TIER(%struct.bufattr* %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.bufattr*, %struct.bufattr** %4, align 8
  %44 = getelementptr inbounds %struct.bufattr, %struct.bufattr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BA_IO_TIER_UPGRADE, align 4
  %47 = call i64 @ISSET(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @throttle_info_end_io_internal(%struct._throttle_io_info_t* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %15
  ret void
}

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local %struct.TYPE_8__* @buf_vnode(%struct.TYPE_7__*) #1

declare dso_local i32 @GET_BUFATTR_IO_TIER(%struct.bufattr*) #1

declare dso_local i32 @throttle_info_end_io_internal(%struct._throttle_io_info_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
