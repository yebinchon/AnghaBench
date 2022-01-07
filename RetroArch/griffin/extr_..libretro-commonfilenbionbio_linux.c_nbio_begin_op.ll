; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_linux.c_nbio_begin_op.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_linux.c_nbio_begin_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_linux_t = type { i32, i32, i32, %struct.iocb, i64, i32 }
%struct.iocb = type { i32, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbio_linux_t*, i32)* @nbio_begin_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_begin_op(%struct.nbio_linux_t* %0, i32 %1) #0 {
  %3 = alloca %struct.nbio_linux_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iocb*, align 8
  store %struct.nbio_linux_t* %0, %struct.nbio_linux_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %7 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %6, i32 0, i32 3
  store %struct.iocb* %7, %struct.iocb** %5, align 8
  %8 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %9 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %8, i32 0, i32 3
  %10 = call i32 @memset(%struct.iocb* %9, i32 0, i32 32)
  %11 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %12 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %15 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.iocb, %struct.iocb* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %19 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.iocb, %struct.iocb* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 8
  %21 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %22 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %25 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.iocb, %struct.iocb* %25, i32 0, i32 2
  store i64 %23, i64* %26, align 8
  %27 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %28 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.iocb, %struct.iocb* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %31 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %34 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.iocb, %struct.iocb* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %37 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @io_submit(i32 %38, i32 1, %struct.iocb** %5)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %2
  %44 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %45 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  ret void
}

declare dso_local i32 @memset(%struct.iocb*, i32, i32) #1

declare dso_local i32 @io_submit(i32, i32, %struct.iocb**) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
