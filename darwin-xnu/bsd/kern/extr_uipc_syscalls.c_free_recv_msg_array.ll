; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_free_recv_msg_array.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_free_recv_msg_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_msg_elem = type { i32*, %struct.recv_msg_elem*, i32* }

@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_recv_msg_array(%struct.recv_msg_elem* %0, i64 %1) #0 {
  %3 = alloca %struct.recv_msg_elem*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.recv_msg_elem*, align 8
  store %struct.recv_msg_elem* %0, %struct.recv_msg_elem** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %7
  %12 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %12, i64 %13
  store %struct.recv_msg_elem* %14, %struct.recv_msg_elem** %6, align 8
  %15 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %6, align 8
  %16 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %6, align 8
  %21 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @uio_free(i32* %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %6, align 8
  %26 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %25, i32 0, i32 1
  %27 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %26, align 8
  %28 = icmp ne %struct.recv_msg_elem* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %6, align 8
  %31 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %30, i32 0, i32 1
  %32 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %31, align 8
  %33 = load i32, i32* @M_TEMP, align 4
  %34 = call i32 @_FREE(%struct.recv_msg_elem* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %6, align 8
  %37 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %6, align 8
  %42 = getelementptr inbounds %struct.recv_msg_elem, %struct.recv_msg_elem* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @m_freem(i32* %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %7

49:                                               ; preds = %7
  %50 = load %struct.recv_msg_elem*, %struct.recv_msg_elem** %3, align 8
  %51 = load i32, i32* @M_TEMP, align 4
  %52 = call i32 @_FREE(%struct.recv_msg_elem* %50, i32 %51)
  ret void
}

declare dso_local i32 @uio_free(i32*) #1

declare dso_local i32 @_FREE(%struct.recv_msg_elem*, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
