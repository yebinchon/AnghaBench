; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/nbio/extr_nbio_stdio.c_nbio_stdio_get_ptr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/nbio/extr_nbio_stdio.c_nbio_stdio_get_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_stdio_t = type { i64, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @nbio_stdio_get_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nbio_stdio_get_ptr(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nbio_stdio_t*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.nbio_stdio_t*
  store %struct.nbio_stdio_t* %8, %struct.nbio_stdio_t** %6, align 8
  %9 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %10 = icmp ne %struct.nbio_stdio_t* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %30

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %17 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %22 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %27 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %3, align 8
  br label %30

29:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %30

30:                                               ; preds = %29, %25, %11
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
