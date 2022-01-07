; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/nbio/extr_nbio_linux.c_nbio_linux_resize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/nbio/extr_nbio_linux.c_nbio_linux_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_linux_t = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @nbio_linux_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_linux_resize(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nbio_linux_t*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.nbio_linux_t*
  store %struct.nbio_linux_t* %7, %struct.nbio_linux_t** %5, align 8
  %8 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %5, align 8
  %9 = icmp ne %struct.nbio_linux_t* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %39

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %5, align 8
  %14 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %11
  %20 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %5, align 8
  %21 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @ftruncate(i32 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 (...) @abort() #3
  unreachable

28:                                               ; preds = %19
  %29 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %5, align 8
  %30 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @realloc(i32 %31, i64 %32)
  %34 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %5, align 8
  %35 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.nbio_linux_t*, %struct.nbio_linux_t** %5, align 8
  %38 = getelementptr inbounds %struct.nbio_linux_t, %struct.nbio_linux_t* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %28, %10
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i64 @ftruncate(i32, i64) #2

declare dso_local i32 @realloc(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
