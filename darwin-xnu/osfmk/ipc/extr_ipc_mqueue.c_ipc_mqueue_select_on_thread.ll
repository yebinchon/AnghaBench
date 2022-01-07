; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_select_on_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_select_on_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_19__*, i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@MACH_MSG_SUCCESS = common dso_local global i8* null, align 8
@IKM_NULL = common dso_local global %struct.TYPE_19__* null, align 8
@MACH_RCV_TOO_LARGE = common dso_local global i8* null, align 8
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_mqueue_select_on_thread(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i32 %2, i64 %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %10, align 8
  %14 = load i8*, i8** @MACH_MSG_SUCCESS, align 8
  store i8* %14, i8** %12, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %17 = call %struct.TYPE_19__* @ipc_kmsg_queue_first(i32* %16)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %11, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** @IKM_NULL, align 8
  %20 = icmp ne %struct.TYPE_19__* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ipc_kmsg_copyout_size(%struct.TYPE_19__* %23, i32 %26)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = call i32 @thread_is_64bit_addr(%struct.TYPE_17__* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @REQUESTED_TRAILER_SIZE(i32 %30, i32 %31)
  %33 = add nsw i64 %28, %32
  %34 = load i64, i64* %9, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %5
  %37 = load i8*, i8** @MACH_RCV_TOO_LARGE, align 8
  store i8* %37, i8** %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MACH_RCV_LARGE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** @IKM_NULL, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %50, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %85

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %5
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %64 = call i32 @ipc_kmsg_rmqueue(i32* %62, %struct.TYPE_19__* %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = call i32 @ipc_mqueue_release_msgcount(%struct.TYPE_18__* %65, %struct.TYPE_18__* %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = sext i32 %70 to i64
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  store %struct.TYPE_19__* %75, %struct.TYPE_19__** %77, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = call %struct.TYPE_16__* (...) @current_task()
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %60, %42
  ret void
}

declare dso_local %struct.TYPE_19__* @ipc_kmsg_queue_first(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ipc_kmsg_copyout_size(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @REQUESTED_TRAILER_SIZE(i32, i32) #1

declare dso_local i32 @thread_is_64bit_addr(%struct.TYPE_17__*) #1

declare dso_local i32 @ipc_kmsg_rmqueue(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ipc_mqueue_release_msgcount(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_16__* @current_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
