; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_disconnectx_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_disconnectx_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.disconnectx_args = type { i32, i32, i32 }
%struct.socket = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.disconnectx_args*, i32*)* @disconnectx_nocancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnectx_nocancel(%struct.proc* %0, %struct.disconnectx_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.disconnectx_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.disconnectx_args* %1, %struct.disconnectx_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.disconnectx_args*, %struct.disconnectx_args** %6, align 8
  %12 = getelementptr inbounds %struct.disconnectx_args, %struct.disconnectx_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @file_socket(i32 %14, %struct.socket** %8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load %struct.socket*, %struct.socket** %8, align 8
  %22 = icmp eq %struct.socket* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EBADF, align 4
  store i32 %24, i32* %10, align 4
  br label %34

25:                                               ; preds = %20
  %26 = load %struct.socket*, %struct.socket** %8, align 8
  %27 = load %struct.disconnectx_args*, %struct.disconnectx_args** %6, align 8
  %28 = getelementptr inbounds %struct.disconnectx_args, %struct.disconnectx_args* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.disconnectx_args*, %struct.disconnectx_args** %6, align 8
  %31 = getelementptr inbounds %struct.disconnectx_args, %struct.disconnectx_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sodisconnectx(%struct.socket* %26, i32 %29, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @file_drop(i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @file_socket(i32, %struct.socket**) #1

declare dso_local i32 @sodisconnectx(%struct.socket*, i32, i32) #1

declare dso_local i32 @file_drop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
