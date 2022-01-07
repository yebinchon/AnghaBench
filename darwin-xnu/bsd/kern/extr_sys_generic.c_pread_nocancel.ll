; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_pread_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_pread_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.pread_nocancel_args = type { i32, i32, i32, i32 }
%struct.fileproc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vfs_context = type { i32 }

@FOF_OFFSET = common dso_local global i32 0, align 4
@DBG_BSD_SC_EXTENDED_INFO = common dso_local global i32 0, align 4
@SYS_pread = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pread_nocancel(%struct.proc* %0, %struct.pread_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.pread_nocancel_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fileproc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfs_context, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.pread_nocancel_args* %1, %struct.pread_nocancel_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.fileproc* null, %struct.fileproc** %7, align 8
  %11 = load %struct.pread_nocancel_args*, %struct.pread_nocancel_args** %5, align 8
  %12 = getelementptr inbounds %struct.pread_nocancel_args, %struct.pread_nocancel_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.proc*, %struct.proc** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @preparefileread(%struct.proc* %14, %struct.fileproc** %7, i32 %15, i32 1)
  store i32 %16, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %65

19:                                               ; preds = %3
  %20 = call %struct.vfs_context* (...) @vfs_context_current()
  %21 = bitcast %struct.vfs_context* %10 to i8*
  %22 = bitcast %struct.vfs_context* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %24 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %30 = load %struct.pread_nocancel_args*, %struct.pread_nocancel_args** %5, align 8
  %31 = getelementptr inbounds %struct.pread_nocancel_args, %struct.pread_nocancel_args* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pread_nocancel_args*, %struct.pread_nocancel_args** %5, align 8
  %34 = getelementptr inbounds %struct.pread_nocancel_args, %struct.pread_nocancel_args* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pread_nocancel_args*, %struct.pread_nocancel_args** %5, align 8
  %37 = getelementptr inbounds %struct.pread_nocancel_args, %struct.pread_nocancel_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FOF_OFFSET, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @dofileread(%struct.vfs_context* %10, %struct.fileproc* %29, i32 %32, i32 %35, i32 %38, i32 %39, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.proc*, %struct.proc** %4, align 8
  %43 = load %struct.fileproc*, %struct.fileproc** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @donefileread(%struct.proc* %42, %struct.fileproc* %43, i32 %44)
  %46 = load i32, i32* @DBG_BSD_SC_EXTENDED_INFO, align 4
  %47 = load i32, i32* @SYS_pread, align 4
  %48 = call i32 @BSDDBG_CODE(i32 %46, i32 %47)
  %49 = load i32, i32* @DBG_FUNC_NONE, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.pread_nocancel_args*, %struct.pread_nocancel_args** %5, align 8
  %52 = getelementptr inbounds %struct.pread_nocancel_args, %struct.pread_nocancel_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pread_nocancel_args*, %struct.pread_nocancel_args** %5, align 8
  %55 = getelementptr inbounds %struct.pread_nocancel_args, %struct.pread_nocancel_args* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pread_nocancel_args*, %struct.pread_nocancel_args** %5, align 8
  %58 = getelementptr inbounds %struct.pread_nocancel_args, %struct.pread_nocancel_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 32
  %61 = load %struct.pread_nocancel_args*, %struct.pread_nocancel_args** %5, align 8
  %62 = getelementptr inbounds %struct.pread_nocancel_args, %struct.pread_nocancel_args* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %50, i32 %53, i32 %56, i32 %60, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %19, %18
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @preparefileread(%struct.proc*, %struct.fileproc**, i32, i32) #1

declare dso_local %struct.vfs_context* @vfs_context_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dofileread(%struct.vfs_context*, %struct.fileproc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @donefileread(%struct.proc*, %struct.fileproc*, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
