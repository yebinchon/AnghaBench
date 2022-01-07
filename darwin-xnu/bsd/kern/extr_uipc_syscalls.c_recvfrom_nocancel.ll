; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_recvfrom_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_recvfrom_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.recvfrom_nocancel_args = type { i32, i32, i32, i32, i32, i32 }
%struct.user_msghdr = type { i32, i64, i64, i64, i64, i32, i64 }

@DBG_FNC_RECVFROM = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recvfrom_nocancel(%struct.proc* %0, %struct.recvfrom_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.recvfrom_nocancel_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.user_msghdr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.recvfrom_nocancel_args* %1, %struct.recvfrom_nocancel_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @DBG_FNC_RECVFROM, align 4
  %12 = load i32, i32* @DBG_FUNC_START, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @KERNEL_DEBUG(i32 %13, i32 0, i32 0, i32 0, i32 0, i32 0)
  %15 = load i32, i32* @fd, align 4
  %16 = load %struct.recvfrom_nocancel_args*, %struct.recvfrom_nocancel_args** %6, align 8
  %17 = getelementptr inbounds %struct.recvfrom_nocancel_args, %struct.recvfrom_nocancel_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AUDIT_ARG(i32 %15, i32 %18)
  %20 = load %struct.recvfrom_nocancel_args*, %struct.recvfrom_nocancel_args** %6, align 8
  %21 = getelementptr inbounds %struct.recvfrom_nocancel_args, %struct.recvfrom_nocancel_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.recvfrom_nocancel_args*, %struct.recvfrom_nocancel_args** %6, align 8
  %26 = getelementptr inbounds %struct.recvfrom_nocancel_args, %struct.recvfrom_nocancel_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %8, i32 0, i32 6
  %29 = ptrtoint i64* %28 to i32
  %30 = call i32 @copyin(i32 %27, i32 %29, i32 8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %97

35:                                               ; preds = %24
  br label %38

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %8, i32 0, i32 6
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %36, %35
  %39 = load %struct.recvfrom_nocancel_args*, %struct.recvfrom_nocancel_args** %6, align 8
  %40 = getelementptr inbounds %struct.recvfrom_nocancel_args, %struct.recvfrom_nocancel_args* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %8, i32 0, i32 5
  store i32 %41, i32* %42, align 8
  %43 = load %struct.proc*, %struct.proc** %5, align 8
  %44 = call i64 @IS_64BIT_PROCESS(%struct.proc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* @UIO_READ, align 4
  %53 = call i32* @uio_create(i32 1, i32 0, i32 %51, i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %4, align 4
  br label %97

58:                                               ; preds = %50
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.recvfrom_nocancel_args*, %struct.recvfrom_nocancel_args** %6, align 8
  %61 = getelementptr inbounds %struct.recvfrom_nocancel_args, %struct.recvfrom_nocancel_args* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.recvfrom_nocancel_args*, %struct.recvfrom_nocancel_args** %6, align 8
  %64 = getelementptr inbounds %struct.recvfrom_nocancel_args, %struct.recvfrom_nocancel_args* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @uio_addiov(i32* %59, i32 %62, i32 %65)
  %67 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %8, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %8, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %8, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %8, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.recvfrom_nocancel_args*, %struct.recvfrom_nocancel_args** %6, align 8
  %72 = getelementptr inbounds %struct.recvfrom_nocancel_args, %struct.recvfrom_nocancel_args* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %8, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load %struct.proc*, %struct.proc** %5, align 8
  %76 = load %struct.recvfrom_nocancel_args*, %struct.recvfrom_nocancel_args** %6, align 8
  %77 = getelementptr inbounds %struct.recvfrom_nocancel_args, %struct.recvfrom_nocancel_args* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.recvfrom_nocancel_args*, %struct.recvfrom_nocancel_args** %6, align 8
  %81 = getelementptr inbounds %struct.recvfrom_nocancel_args, %struct.recvfrom_nocancel_args* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @recvit(%struct.proc* %75, i32 %78, %struct.user_msghdr* %8, i32* %79, i32 %82, i32* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %58
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @uio_free(i32* %88)
  br label %90

90:                                               ; preds = %87, %58
  %91 = load i32, i32* @DBG_FNC_RECVFROM, align 4
  %92 = load i32, i32* @DBG_FUNC_END, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @KERNEL_DEBUG(i32 %93, i32 %94, i32 0, i32 0, i32 0, i32 0)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %90, %56, %33
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32 @copyin(i32, i32, i32) #1

declare dso_local i32* @uio_create(i32, i32, i32, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @uio_addiov(i32*, i32, i32) #1

declare dso_local i32 @recvit(%struct.proc*, i32, %struct.user_msghdr*, i32*, i32, i32*) #1

declare dso_local i32 @uio_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
