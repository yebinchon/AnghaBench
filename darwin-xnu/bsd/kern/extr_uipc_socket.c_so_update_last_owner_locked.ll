; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_so_update_last_owner_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_so_update_last_owner_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i64, i32, i32 }

@PROC_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @so_update_last_owner_locked(%struct.socket* %0, i64 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @PROC_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i64 (...) @current_proc()
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %13, %9
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @proc_uniqueid(i64 %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.socket*, %struct.socket** %3, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @proc_pid(i64 %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %22, %15
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @proc_uniqueid(i64 %30)
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @proc_pid(i64 %34)
  %36 = load %struct.socket*, %struct.socket** %3, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.socket*, %struct.socket** %3, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @proc_getexecutableuuid(i64 %38, i32 %41, i32 4)
  br label %43

43:                                               ; preds = %29, %22
  %44 = load %struct.socket*, %struct.socket** %3, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @proc_pidoriginatoruuid(i32 %46, i32 4)
  br label %48

48:                                               ; preds = %43, %2
  ret void
}

declare dso_local i64 @current_proc(...) #1

declare dso_local i64 @proc_uniqueid(i64) #1

declare dso_local i64 @proc_pid(i64) #1

declare dso_local i32 @proc_getexecutableuuid(i64, i32, i32) #1

declare dso_local i32 @proc_pidoriginatoruuid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
