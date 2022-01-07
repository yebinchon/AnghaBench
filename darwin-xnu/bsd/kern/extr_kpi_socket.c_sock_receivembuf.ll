; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_receivembuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_receivembuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_receivembuf(i32 %0, %struct.msghdr* %1, i32* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.msghdr* %1, %struct.msghdr** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %5
  %15 = load i64*, i64** %11, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %14
  %18 = load i64*, i64** %11, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ule i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %23 = icmp ne %struct.msghdr* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24, %17, %14, %5
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %6, align 4
  br label %43

36:                                               ; preds = %29, %21
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i64*, i64** %11, align 8
  %42 = call i32 @sock_receive_internal(i32 %37, %struct.msghdr* %38, i32* %39, i32 %40, i64* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %34
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @sock_receive_internal(i32, %struct.msghdr*, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
