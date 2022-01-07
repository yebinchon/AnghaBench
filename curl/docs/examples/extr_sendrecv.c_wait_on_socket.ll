; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_sendrecv.c_wait_on_socket.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_sendrecv.c_wait_on_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64)* @wait_on_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_on_socket(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = sdiv i64 %12, 1000
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = srem i64 %15, 1000
  %17 = mul nsw i64 %16, 1000
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = call i32 @FD_ZERO(i32* %8)
  %20 = call i32 @FD_ZERO(i32* %9)
  %21 = call i32 @FD_ZERO(i32* %10)
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @FD_SET(i64 %22, i32* %10)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @FD_SET(i64 %27, i32* %8)
  br label %32

29:                                               ; preds = %3
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @FD_SET(i64 %30, i32* %9)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %4, align 8
  %34 = trunc i64 %33 to i32
  %35 = add nsw i32 %34, 1
  %36 = call i32 @select(i32 %35, i32* %8, i32* %9, i32* %10, %struct.timeval* %7)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  ret i32 %37
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
