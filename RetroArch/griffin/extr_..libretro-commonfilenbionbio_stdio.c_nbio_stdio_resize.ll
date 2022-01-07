; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_stdio.c_nbio_stdio_resize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilenbionbio_stdio.c_nbio_stdio_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbio_stdio_t = type { i32, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @nbio_stdio_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_stdio_resize(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nbio_stdio_t*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.nbio_stdio_t*
  store %struct.nbio_stdio_t* %8, %struct.nbio_stdio_t** %6, align 8
  %9 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %10 = icmp ne %struct.nbio_stdio_t* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %14 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %12
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %22 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %19
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %30 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %33 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %35 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %37 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %40 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @realloc(i8* %38, i64 %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %27
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.nbio_stdio_t*, %struct.nbio_stdio_t** %6, align 8
  %48 = getelementptr inbounds %struct.nbio_stdio_t, %struct.nbio_stdio_t* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %11, %45, %27
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i8* @realloc(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
