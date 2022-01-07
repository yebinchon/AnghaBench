; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fileport_makefd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fileport_makefd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { %struct.fileglob* }
%struct.fileglob = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.fileport_makefd_args = type { i32 }

@FILEPROC_NULL = common dso_local global %struct.fileproc* null, align 8
@IPC_PORT_NULL = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_COPY_SEND = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UF_EXCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fileport_makefd(%struct.TYPE_8__* %0, %struct.fileport_makefd_args* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.fileport_makefd_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fileglob*, align 8
  %8 = alloca %struct.fileproc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.fileport_makefd_args* %1, %struct.fileport_makefd_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.fileproc*, %struct.fileproc** @FILEPROC_NULL, align 8
  store %struct.fileproc* %14, %struct.fileproc** %8, align 8
  %15 = load i64, i64* @IPC_PORT_NULL, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.fileport_makefd_args*, %struct.fileport_makefd_args** %5, align 8
  %17 = getelementptr inbounds %struct.fileport_makefd_args, %struct.fileport_makefd_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_task_ipcspace(i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @MACH_MSG_TYPE_COPY_SEND, align 4
  %25 = call i64 @ipc_object_copyin(i32 %22, i32 %23, i32 %24, i64* %9)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %13, align 4
  br label %77

31:                                               ; preds = %3
  %32 = load i64, i64* %9, align 8
  %33 = call %struct.fileglob* @fileport_port_to_fileglob(i64 %32)
  store %struct.fileglob* %33, %struct.fileglob** %7, align 8
  %34 = load %struct.fileglob*, %struct.fileglob** %7, align 8
  %35 = icmp eq %struct.fileglob* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %13, align 4
  br label %77

38:                                               ; preds = %31
  %39 = call %struct.fileproc* @fileproc_alloc_init(i32* null)
  store %struct.fileproc* %39, %struct.fileproc** %8, align 8
  %40 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %41 = load %struct.fileproc*, %struct.fileproc** @FILEPROC_NULL, align 8
  %42 = icmp eq %struct.fileproc* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %13, align 4
  br label %77

45:                                               ; preds = %38
  %46 = load %struct.fileglob*, %struct.fileglob** %7, align 8
  %47 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %48 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %47, i32 0, i32 0
  store %struct.fileglob* %46, %struct.fileglob** %48, align 8
  %49 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %50 = call i32 @fg_ref(%struct.fileproc* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = call i32 @proc_fdlock(%struct.TYPE_8__* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = call i32 @fdalloc(%struct.TYPE_8__* %53, i32 0, i32* %12)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = call i32 @proc_fdunlock(%struct.TYPE_8__* %58)
  %60 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %61 = call i32 @fg_drop(%struct.fileproc* %60)
  br label %77

62:                                               ; preds = %45
  %63 = load i32, i32* @UF_EXCLOSE, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32* @fdflags(%struct.TYPE_8__* %64, i32 %65)
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %72 = call i32 @procfdtbl_releasefd(%struct.TYPE_8__* %69, i32 %70, %struct.fileproc* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = call i32 @proc_fdunlock(%struct.TYPE_8__* %73)
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %62, %57, %43, %36, %29
  %78 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %79 = icmp ne %struct.fileproc* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 0, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %85 = call i32 @fileproc_free(%struct.fileproc* %84)
  br label %86

86:                                               ; preds = %83, %80, %77
  %87 = load i64, i64* @IPC_PORT_NULL, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @ipc_port_release_send(i64 %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %13, align 4
  ret i32 %94
}

declare dso_local i64 @ipc_object_copyin(i32, i32, i32, i64*) #1

declare dso_local i32 @get_task_ipcspace(i32) #1

declare dso_local %struct.fileglob* @fileport_port_to_fileglob(i64) #1

declare dso_local %struct.fileproc* @fileproc_alloc_init(i32*) #1

declare dso_local i32 @fg_ref(%struct.fileproc*) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_8__*) #1

declare dso_local i32 @fdalloc(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_8__*) #1

declare dso_local i32 @fg_drop(%struct.fileproc*) #1

declare dso_local i32* @fdflags(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @procfdtbl_releasefd(%struct.TYPE_8__*, i32, %struct.fileproc*) #1

declare dso_local i32 @fileproc_free(%struct.fileproc*) #1

declare dso_local i32 @ipc_port_release_send(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
