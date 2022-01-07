; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_read_args = type { i64 }

@DBG_BSD_AIO = common dso_local global i32 0, align 4
@AIO_read = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@AIO_READ = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_read(i64 %0, %struct.aio_read_args* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.aio_read_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.aio_read_args* %1, %struct.aio_read_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @DBG_BSD_AIO, align 4
  %9 = load i32, i32* @AIO_read, align 4
  %10 = call i32 @BSDDBG_CODE(i32 %8, i32 %9)
  %11 = load i32, i32* @DBG_FUNC_START, align 4
  %12 = or i32 %10, %11
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.aio_read_args*, %struct.aio_read_args** %5, align 8
  %16 = getelementptr inbounds %struct.aio_read_args, %struct.aio_read_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @KERNEL_DEBUG(i32 %12, i32 %14, i32 %18, i32 0, i32 0, i32 0)
  %20 = load i32*, i32** %6, align 8
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.aio_read_args*, %struct.aio_read_args** %5, align 8
  %23 = getelementptr inbounds %struct.aio_read_args, %struct.aio_read_args* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @AIO_READ, align 4
  %26 = call i32 @aio_queue_async_request(i64 %21, i64 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  store i32 -1, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %3
  %32 = load i32, i32* @DBG_BSD_AIO, align 4
  %33 = load i32, i32* @AIO_read, align 4
  %34 = call i32 @BSDDBG_CODE(i32 %32, i32 %33)
  %35 = load i32, i32* @DBG_FUNC_END, align 4
  %36 = or i32 %34, %35
  %37 = load i64, i64* %4, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.aio_read_args*, %struct.aio_read_args** %5, align 8
  %40 = getelementptr inbounds %struct.aio_read_args, %struct.aio_read_args* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @KERNEL_DEBUG(i32 %36, i32 %38, i32 %42, i32 %43, i32 0, i32 0)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
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
