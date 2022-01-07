; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_fsync.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_fsync_args = type { i32, i64 }

@DBG_BSD_AIO = common dso_local global i32 0, align 4
@AIO_fsync = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i64 0, align 8
@AIO_FSYNC = common dso_local global i32 0, align 4
@O_DSYNC = common dso_local global i64 0, align 8
@AIO_DSYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_fsync(i64 %0, %struct.aio_fsync_args* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.aio_fsync_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.aio_fsync_args* %1, %struct.aio_fsync_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @DBG_BSD_AIO, align 4
  %10 = load i32, i32* @AIO_fsync, align 4
  %11 = call i32 @BSDDBG_CODE(i32 %9, i32 %10)
  %12 = load i32, i32* @DBG_FUNC_START, align 4
  %13 = or i32 %11, %12
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.aio_fsync_args*, %struct.aio_fsync_args** %5, align 8
  %17 = getelementptr inbounds %struct.aio_fsync_args, %struct.aio_fsync_args* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.aio_fsync_args*, %struct.aio_fsync_args** %5, align 8
  %21 = getelementptr inbounds %struct.aio_fsync_args, %struct.aio_fsync_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @KERNEL_DEBUG(i32 %13, i32 %15, i32 %19, i32 %22, i32 0, i32 0)
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.aio_fsync_args*, %struct.aio_fsync_args** %5, align 8
  %26 = getelementptr inbounds %struct.aio_fsync_args, %struct.aio_fsync_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @O_SYNC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.aio_fsync_args*, %struct.aio_fsync_args** %5, align 8
  %33 = getelementptr inbounds %struct.aio_fsync_args, %struct.aio_fsync_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %3
  %37 = load i32, i32* @AIO_FSYNC, align 4
  store i32 %37, i32* %8, align 4
  br label %51

38:                                               ; preds = %31
  %39 = load %struct.aio_fsync_args*, %struct.aio_fsync_args** %5, align 8
  %40 = getelementptr inbounds %struct.aio_fsync_args, %struct.aio_fsync_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @O_DSYNC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @AIO_DSYNC, align 4
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %38
  %48 = load i32*, i32** %6, align 8
  store i32 -1, i32* %48, align 4
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %7, align 4
  br label %63

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.aio_fsync_args*, %struct.aio_fsync_args** %5, align 8
  %54 = getelementptr inbounds %struct.aio_fsync_args, %struct.aio_fsync_args* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @aio_queue_async_request(i64 %52, i64 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32*, i32** %6, align 8
  store i32 -1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %51
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* @DBG_BSD_AIO, align 4
  %65 = load i32, i32* @AIO_fsync, align 4
  %66 = call i32 @BSDDBG_CODE(i32 %64, i32 %65)
  %67 = load i32, i32* @DBG_FUNC_END, align 4
  %68 = or i32 %66, %67
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.aio_fsync_args*, %struct.aio_fsync_args** %5, align 8
  %72 = getelementptr inbounds %struct.aio_fsync_args, %struct.aio_fsync_args* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @KERNEL_DEBUG(i32 %68, i32 %70, i32 %74, i32 %75, i32 0, i32 0)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @aio_queue_async_request(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
