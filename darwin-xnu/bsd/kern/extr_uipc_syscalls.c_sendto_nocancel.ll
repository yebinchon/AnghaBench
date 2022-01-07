; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_sendto_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_sendto_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.sendto_nocancel_args = type { i32, i32, i32, i32, i32, i32 }
%struct.user_msghdr = type { i64, i64, i64, i64, i32, i32 }
%struct.socket = type { i32 }

@DBG_FNC_SENDTO = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendto_nocancel(%struct.proc* %0, %struct.sendto_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.sendto_nocancel_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.user_msghdr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.socket*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.sendto_nocancel_args* %1, %struct.sendto_nocancel_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %9, align 8
  %11 = load i32, i32* @DBG_FNC_SENDTO, align 4
  %12 = load i32, i32* @DBG_FUNC_START, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @KERNEL_DEBUG(i32 %13, i32 0, i32 0, i32 0, i32 0, i32 0)
  %15 = load i32, i32* @fd, align 4
  %16 = load %struct.sendto_nocancel_args*, %struct.sendto_nocancel_args** %5, align 8
  %17 = getelementptr inbounds %struct.sendto_nocancel_args, %struct.sendto_nocancel_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AUDIT_ARG(i32 %15, i32 %18)
  %20 = load %struct.proc*, %struct.proc** %4, align 8
  %21 = call i64 @IS_64BIT_PROCESS(%struct.proc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32, i32* @UIO_WRITE, align 4
  %30 = call i32* @uio_create(i32 1, i32 0, i32 %28, i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %8, align 4
  br label %82

35:                                               ; preds = %27
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.sendto_nocancel_args*, %struct.sendto_nocancel_args** %5, align 8
  %38 = getelementptr inbounds %struct.sendto_nocancel_args, %struct.sendto_nocancel_args* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sendto_nocancel_args*, %struct.sendto_nocancel_args** %5, align 8
  %41 = getelementptr inbounds %struct.sendto_nocancel_args, %struct.sendto_nocancel_args* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @uio_addiov(i32* %36, i32 %39, i32 %42)
  %44 = load %struct.sendto_nocancel_args*, %struct.sendto_nocancel_args** %5, align 8
  %45 = getelementptr inbounds %struct.sendto_nocancel_args, %struct.sendto_nocancel_args* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %7, i32 0, i32 5
  store i32 %46, i32* %47, align 4
  %48 = load %struct.sendto_nocancel_args*, %struct.sendto_nocancel_args** %5, align 8
  %49 = getelementptr inbounds %struct.sendto_nocancel_args, %struct.sendto_nocancel_args* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %7, i32 0, i32 4
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %7, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %7, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %7, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %7, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.sendto_nocancel_args*, %struct.sendto_nocancel_args** %5, align 8
  %57 = getelementptr inbounds %struct.sendto_nocancel_args, %struct.sendto_nocancel_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @file_socket(i32 %58, %struct.socket** %10)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %35
  br label %82

63:                                               ; preds = %35
  %64 = load %struct.socket*, %struct.socket** %10, align 8
  %65 = icmp eq %struct.socket* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @EBADF, align 4
  store i32 %67, i32* %8, align 4
  br label %77

68:                                               ; preds = %63
  %69 = load %struct.proc*, %struct.proc** %4, align 8
  %70 = load %struct.socket*, %struct.socket** %10, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.sendto_nocancel_args*, %struct.sendto_nocancel_args** %5, align 8
  %73 = getelementptr inbounds %struct.sendto_nocancel_args, %struct.sendto_nocancel_args* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @sendit(%struct.proc* %69, %struct.socket* %70, %struct.user_msghdr* %7, i32* %71, i32 %74, i32* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %68, %66
  %78 = load %struct.sendto_nocancel_args*, %struct.sendto_nocancel_args** %5, align 8
  %79 = getelementptr inbounds %struct.sendto_nocancel_args, %struct.sendto_nocancel_args* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @file_drop(i32 %80)
  br label %82

82:                                               ; preds = %77, %62, %33
  %83 = load i32*, i32** %9, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @uio_free(i32* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* @DBG_FNC_SENDTO, align 4
  %90 = load i32, i32* @DBG_FUNC_END, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @KERNEL_DEBUG(i32 %91, i32 %92, i32 %94, i32 0, i32 0, i32 0)
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32* @uio_create(i32, i32, i32, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @uio_addiov(i32*, i32, i32) #1

declare dso_local i32 @file_socket(i32, %struct.socket**) #1

declare dso_local i32 @sendit(%struct.proc*, %struct.socket*, %struct.user_msghdr*, i32*, i32, i32*) #1

declare dso_local i32 @file_drop(i32) #1

declare dso_local i32 @uio_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
