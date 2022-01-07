; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_socket_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_socket_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.socket = type { i32 }
%struct.fileproc = type { i32, i64, i32* }

@socket = common dso_local global i32 0, align 4
@PRIV_NET_PRIVILEGED_SOCKET_DELEGATE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@socketops = common dso_local global i32 0, align 4
@ENTR_SHOULDTRACE = common dso_local global i64 0, align 8
@kEnTrActKernSocket = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i32, i32, i32, i32, i32*, i32)* @socket_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_common(%struct.proc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.socket*, align 8
  %17 = alloca %struct.fileproc*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* @socket, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @AUDIT_ARG(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %7
  %28 = call i32 (...) @kauth_cred_get()
  %29 = load i32, i32* @PRIV_NET_PRIVILEGED_SOCKET_DELEGATE, align 4
  %30 = call i32 @priv_check_cred(i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EACCES, align 4
  store i32 %34, i32* %8, align 4
  br label %104

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %7
  %37 = load %struct.proc*, %struct.proc** %9, align 8
  %38 = call i32 (...) @vfs_context_current()
  %39 = call i32 @falloc(%struct.proc* %37, %struct.fileproc** %17, i32* %18, i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %8, align 4
  br label %104

44:                                               ; preds = %36
  %45 = load i32, i32* @FREAD, align 4
  %46 = load i32, i32* @FWRITE, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %49 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %51 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %50, i32 0, i32 2
  store i32* @socketops, i32** %51, align 8
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @socreate_delegate(i32 %55, %struct.socket** %16, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %19, align 4
  br label %65

60:                                               ; preds = %44
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @socreate(i32 %61, %struct.socket** %16, i32 %62, i32 %63)
  store i32 %64, i32* %19, align 4
  br label %65

65:                                               ; preds = %60, %54
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.proc*, %struct.proc** %9, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %72 = call i32 @fp_free(%struct.proc* %69, i32 %70, %struct.fileproc* %71)
  br label %102

73:                                               ; preds = %65
  %74 = load %struct.socket*, %struct.socket** %16, align 8
  %75 = ptrtoint %struct.socket* %74 to i64
  %76 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %77 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.proc*, %struct.proc** %9, align 8
  %79 = call i32 @proc_fdlock(%struct.proc* %78)
  %80 = load %struct.proc*, %struct.proc** %9, align 8
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @procfdtbl_releasefd(%struct.proc* %80, i32 %81, i32* null)
  %83 = load %struct.proc*, %struct.proc** %9, align 8
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %86 = call i32 @fp_drop(%struct.proc* %83, i32 %84, %struct.fileproc* %85, i32 1)
  %87 = load %struct.proc*, %struct.proc** %9, align 8
  %88 = call i32 @proc_fdunlock(%struct.proc* %87)
  %89 = load i32, i32* %18, align 4
  %90 = load i32*, i32** %14, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i64, i64* @ENTR_SHOULDTRACE, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %73
  %94 = load i32, i32* @kEnTrActKernSocket, align 4
  %95 = load i32, i32* @DBG_FUNC_START, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.socket*, %struct.socket** %16, align 8
  %98 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %97)
  %99 = trunc i64 %98 to i32
  %100 = call i32 @KERNEL_ENERGYTRACE(i32 %94, i32 %95, i32 %96, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %93, %73
  br label %102

102:                                              ; preds = %101, %68
  %103 = load i32, i32* %19, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %42, %33
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @AUDIT_ARG(i32, i32, i32, i32) #1

declare dso_local i32 @priv_check_cred(i32, i32, i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @falloc(%struct.proc*, %struct.fileproc**, i32*, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @socreate_delegate(i32, %struct.socket**, i32, i32, i32) #1

declare dso_local i32 @socreate(i32, %struct.socket**, i32, i32) #1

declare dso_local i32 @fp_free(%struct.proc*, i32, %struct.fileproc*) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @procfdtbl_releasefd(%struct.proc*, i32, i32*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @KERNEL_ENERGYTRACE(i32, i32, i32, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
