; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_pwrite_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_pwrite_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.pwrite_nocancel_args = type { i32, i32, i32, i32 }
%struct.fileproc = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vfs_context = type { i32 }

@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@GUARD_WRITE = common dso_local global i32 0, align 4
@kGUARD_EXC_WRITE = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@ESPIPE = common dso_local global i32 0, align 4
@VISTTY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FOF_OFFSET = common dso_local global i32 0, align 4
@DBG_BSD_SC_EXTENDED_INFO = common dso_local global i32 0, align 4
@SYS_pwrite = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrite_nocancel(%struct.proc* %0, %struct.pwrite_nocancel_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.pwrite_nocancel_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.fileproc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vfs_context, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.pwrite_nocancel_args* %1, %struct.pwrite_nocancel_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.pwrite_nocancel_args*, %struct.pwrite_nocancel_args** %6, align 8
  %15 = getelementptr inbounds %struct.pwrite_nocancel_args, %struct.pwrite_nocancel_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @AUDIT_ARG(i32 %17, i32 %18)
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @fp_lookup(%struct.proc* %20, i32 %21, %struct.fileproc** %8, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %150

27:                                               ; preds = %3
  %28 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %29 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FWRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EBADF, align 4
  store i32 %35, i32* %9, align 4
  br label %115

36:                                               ; preds = %27
  %37 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %38 = load i32, i32* @GUARD_WRITE, align 4
  %39 = call i64 @FP_ISGUARDED(%struct.fileproc* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.proc*, %struct.proc** %5, align 8
  %43 = call i32 @proc_fdlock(%struct.proc* %42)
  %44 = load %struct.proc*, %struct.proc** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %47 = load i32, i32* @kGUARD_EXC_WRITE, align 4
  %48 = call i32 @fp_guard_exception(%struct.proc* %44, i32 %45, %struct.fileproc* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.proc*, %struct.proc** %5, align 8
  %50 = call i32 @proc_fdunlock(%struct.proc* %49)
  br label %114

51:                                               ; preds = %36
  %52 = call %struct.vfs_context* (...) @vfs_context_current()
  %53 = bitcast %struct.vfs_context* %13 to i8*
  %54 = bitcast %struct.vfs_context* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %56 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %13, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %62 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DTYPE_VNODE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* @ESPIPE, align 4
  store i32 %67, i32* %9, align 4
  br label %116

68:                                               ; preds = %51
  %69 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %70 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %11, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = call i64 @vnode_isfifo(%struct.TYPE_5__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @ESPIPE, align 4
  store i32 %79, i32* %9, align 4
  br label %116

80:                                               ; preds = %68
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @VISTTY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @ENXIO, align 4
  store i32 %88, i32* %9, align 4
  br label %116

89:                                               ; preds = %80
  %90 = load %struct.pwrite_nocancel_args*, %struct.pwrite_nocancel_args** %6, align 8
  %91 = getelementptr inbounds %struct.pwrite_nocancel_args, %struct.pwrite_nocancel_args* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %9, align 4
  br label %116

96:                                               ; preds = %89
  %97 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %98 = load %struct.pwrite_nocancel_args*, %struct.pwrite_nocancel_args** %6, align 8
  %99 = getelementptr inbounds %struct.pwrite_nocancel_args, %struct.pwrite_nocancel_args* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pwrite_nocancel_args*, %struct.pwrite_nocancel_args** %6, align 8
  %102 = getelementptr inbounds %struct.pwrite_nocancel_args, %struct.pwrite_nocancel_args* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pwrite_nocancel_args*, %struct.pwrite_nocancel_args** %6, align 8
  %105 = getelementptr inbounds %struct.pwrite_nocancel_args, %struct.pwrite_nocancel_args* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FOF_OFFSET, align 4
  %108 = load i64*, i64** %7, align 8
  %109 = call i32 @dofilewrite(%struct.vfs_context* %13, %struct.fileproc* %97, i32 %100, i32 %103, i32 %106, i32 %107, i64* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i64*, i64** %7, align 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %96, %41
  br label %115

115:                                              ; preds = %114, %34
  br label %116

116:                                              ; preds = %115, %94, %87, %78, %66
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.proc*, %struct.proc** %5, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %123 = call i32 @fp_drop_written(%struct.proc* %120, i32 %121, %struct.fileproc* %122)
  br label %129

124:                                              ; preds = %116
  %125 = load %struct.proc*, %struct.proc** %5, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %128 = call i32 @fp_drop(%struct.proc* %125, i32 %126, %struct.fileproc* %127, i32 0)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i32, i32* @DBG_BSD_SC_EXTENDED_INFO, align 4
  %131 = load i32, i32* @SYS_pwrite, align 4
  %132 = call i32 @BSDDBG_CODE(i32 %130, i32 %131)
  %133 = load i32, i32* @DBG_FUNC_NONE, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.pwrite_nocancel_args*, %struct.pwrite_nocancel_args** %6, align 8
  %136 = getelementptr inbounds %struct.pwrite_nocancel_args, %struct.pwrite_nocancel_args* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.pwrite_nocancel_args*, %struct.pwrite_nocancel_args** %6, align 8
  %139 = getelementptr inbounds %struct.pwrite_nocancel_args, %struct.pwrite_nocancel_args* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pwrite_nocancel_args*, %struct.pwrite_nocancel_args** %6, align 8
  %142 = getelementptr inbounds %struct.pwrite_nocancel_args, %struct.pwrite_nocancel_args* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 32
  %145 = load %struct.pwrite_nocancel_args*, %struct.pwrite_nocancel_args** %6, align 8
  %146 = getelementptr inbounds %struct.pwrite_nocancel_args, %struct.pwrite_nocancel_args* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %134, i32 %137, i32 %140, i32 %144, i32 %147, i32 0)
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %129, %25
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32 @fp_lookup(%struct.proc*, i32, %struct.fileproc**, i32) #1

declare dso_local i64 @FP_ISGUARDED(%struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @fp_guard_exception(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local %struct.vfs_context* @vfs_context_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vnode_isfifo(%struct.TYPE_5__*) #1

declare dso_local i32 @dofilewrite(%struct.vfs_context*, %struct.fileproc*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @fp_drop_written(%struct.proc*, i32, %struct.fileproc*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
