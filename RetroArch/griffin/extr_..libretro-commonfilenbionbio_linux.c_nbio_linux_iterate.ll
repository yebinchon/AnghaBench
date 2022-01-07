; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_linux.c_nbio_linux_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_linux.c_nbio_linux_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_linux_t = type { i32, i32 }
%struct.io_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nbio_linux_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbio_linux_iterate(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nbio_linux_t*, align 8
  %5 = alloca %struct.io_event, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.nbio_linux_t*
  store %struct.nbio_linux_t* %7, %struct.nbio_linux_t** %4, align 8
  %8 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %4, align 8
  %9 = icmp ne %struct.nbio_linux_t* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %4, align 8
  %13 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %4, align 8
  %18 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @io_getevents(i32 %19, i32 0, i32 1, %struct.io_event* %5, i32* null)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %4, align 8
  %24 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %11
  %27 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %4, align 8
  %28 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @io_getevents(i32, i32, i32, %struct.io_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
