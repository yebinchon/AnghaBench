; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_stdio.c_nbio_stdio_begin_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_stdio.c_nbio_stdio_begin_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_stdio_t = type { i64, i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@NBIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nbio_stdio_begin_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_stdio_begin_write(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nbio_stdio_t*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nbio_stdio_t*
  store %struct.nbio_stdio_t* %5, %struct.nbio_stdio_t** %3, align 8
  %6 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %3, align 8
  %7 = icmp ne %struct.nbio_stdio_t* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %3, align 8
  %11 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 (...) @abort() #3
  unreachable

16:                                               ; preds = %9
  %17 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %3, align 8
  %18 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @fseek(i32 %19, i32 0, i32 %20)
  %22 = load i64, i64* @NBIO_WRITE, align 8
  %23 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %3, align 8
  %24 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %3, align 8
  %26 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @fseek(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
