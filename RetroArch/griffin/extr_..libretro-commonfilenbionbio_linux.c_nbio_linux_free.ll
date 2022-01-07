; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_linux.c_nbio_linux_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_linux.c_nbio_linux_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_linux_t = type { %struct.nbio_linux_t*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nbio_linux_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_linux_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nbio_linux_t*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nbio_linux_t*
  store %struct.nbio_linux_t* %5, %struct.nbio_linux_t** %3, align 8
  %6 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %7 = icmp ne %struct.nbio_linux_t* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %11 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @io_destroy(i32 %12)
  %14 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %15 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @close(i32 %16)
  %18 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %19 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %18, i32 0, i32 0
  %20 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %19, align 8
  %21 = call i32 @free(%struct.nbio_linux_t* %20)
  %22 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %3, align 8
  %23 = call i32 @free(%struct.nbio_linux_t* %22)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @io_destroy(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.nbio_linux_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
