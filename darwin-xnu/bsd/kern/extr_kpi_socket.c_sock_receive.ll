; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_receive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_receive(i32 %0, %struct.msghdr* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %10 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %11 = icmp eq %struct.msghdr* %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %4
  %13 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %14 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %33, label %17

17:                                               ; preds = %12
  %18 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25, %17, %12, %4
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %41

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i64*, i64** %9, align 8
  %40 = call i32 @sock_receive_internal(i32 %36, %struct.msghdr* %37, i32* null, i32 %38, i64* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @sock_receive_internal(i32, %struct.msghdr*, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
