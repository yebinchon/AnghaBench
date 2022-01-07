; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_recv_msg_array_is_valid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_recv_msg_array_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_msg_elem = type { i32* }

@sb_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recv_msg_array_is_valid(%struct.recv_msg_elem* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.recv_msg_elem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.recv_msg_elem*, align 8
  %9 = alloca i64, align 8
  store %struct.recv_msg_elem* %0, %struct.recv_msg_elem** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %47, %2
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %15, i64 %16
  store %struct.recv_msg_elem* %17, %struct.recv_msg_elem** %8, align 8
  %18 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %8, align 8
  %19 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %14
  %23 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %8, align 8
  %24 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @uio_resid(i32* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @sb_max, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %22
  store i32 0, i32* %3, align 4
  br label %51

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @sb_max, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %34
  store i32 0, i32* %3, align 4
  br label %51

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %14
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %10

50:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %44, %33
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @uio_resid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
