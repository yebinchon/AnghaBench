; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_get_last_io_time.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_get_last_io_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { %struct.timeval }
%struct.timeval = type { i32 }
%struct.TYPE_3__ = type { i64, %struct._throttle_io_info_t* }

@_throttle_io_info = common dso_local global %struct._throttle_io_info_t* null, align 8
@LOWPRI_MAX_NUM_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throttle_info_get_last_io_time(%struct.TYPE_3__* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct._throttle_io_info_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** @_throttle_io_info, align 8
  %10 = load i32, i32* @LOWPRI_MAX_NUM_DEV, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %9, i64 %12
  store %struct._throttle_io_info_t* %13, %struct._throttle_io_info_t** %5, align 8
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %16, align 8
  %18 = icmp eq %struct._throttle_io_info_t* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** @_throttle_io_info, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %20, i64 %23
  store %struct._throttle_io_info_t* %24, %struct._throttle_io_info_t** %5, align 8
  br label %29

25:                                               ; preds = %14
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %27, align 8
  store %struct._throttle_io_info_t* %28, %struct._throttle_io_info_t** %5, align 8
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %8
  %31 = load %struct.timeval*, %struct.timeval** %4, align 8
  %32 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %33 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %32, i32 0, i32 0
  %34 = bitcast %struct.timeval* %31 to i8*
  %35 = bitcast %struct.timeval* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
