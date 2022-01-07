; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_pwrite_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_pwrite_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.guarded_pwrite_np_args = type { i32, i32, i32, i32, i32 }
%struct.fileproc = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.guarded_fileproc = type { i32 }
%struct.vfs_context = type { i32 }

@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@ESPIPE = common dso_local global i32 0, align 4
@VISTTY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FOF_OFFSET = common dso_local global i32 0, align 4
@DBG_BSD_SC_EXTENDED_INFO = common dso_local global i32 0, align 4
@SYS_guarded_pwrite_np = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @guarded_pwrite_np(%struct.proc* %0, %struct.guarded_pwrite_np_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.guarded_pwrite_np_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.fileproc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.guarded_fileproc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vfs_context, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.guarded_pwrite_np_args* %1, %struct.guarded_pwrite_np_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %17 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @AUDIT_ARG(i32 %19, i32 %20)
  %22 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %23 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @copyin(i32 %24, i32* %12, i32 4)
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %147

29:                                               ; preds = %3
  %30 = load %struct.proc*, %struct.proc** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @fp_lookup_guarded(%struct.proc* %30, i32 %31, i32 %32, %struct.guarded_fileproc** %13, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %147

38:                                               ; preds = %29
  %39 = load %struct.guarded_fileproc*, %struct.guarded_fileproc** %13, align 8
  %40 = call %struct.fileproc* @GFP_TO_FP(%struct.guarded_fileproc* %39)
  store %struct.fileproc* %40, %struct.fileproc** %8, align 8
  %41 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %42 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FWRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @EBADF, align 4
  store i32 %48, i32* %9, align 4
  br label %112

49:                                               ; preds = %38
  %50 = call %struct.vfs_context* (...) @vfs_context_current()
  %51 = bitcast %struct.vfs_context* %15 to i8*
  %52 = bitcast %struct.vfs_context* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %54 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %15, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %60 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DTYPE_VNODE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* @ESPIPE, align 4
  store i32 %65, i32* %9, align 4
  br label %113

66:                                               ; preds = %49
  %67 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %68 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %11, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %74 = call i64 @vnode_isfifo(%struct.TYPE_5__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @ESPIPE, align 4
  store i32 %77, i32* %9, align 4
  br label %113

78:                                               ; preds = %66
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @VISTTY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %9, align 4
  br label %113

87:                                               ; preds = %78
  %88 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %89 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %9, align 4
  br label %113

94:                                               ; preds = %87
  %95 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %96 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %97 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %100 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %103 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @FOF_OFFSET, align 4
  %106 = load i64*, i64** %7, align 8
  %107 = call i32 @dofilewrite(%struct.vfs_context* %15, %struct.fileproc* %95, i32 %98, i32 %101, i32 %104, i32 %105, i64* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i64*, i64** %7, align 8
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %94, %47
  br label %113

113:                                              ; preds = %112, %92, %85, %76, %64
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.proc*, %struct.proc** %5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %120 = call i32 @fp_drop_written(%struct.proc* %117, i32 %118, %struct.fileproc* %119)
  br label %126

121:                                              ; preds = %113
  %122 = load %struct.proc*, %struct.proc** %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %125 = call i32 @fp_drop(%struct.proc* %122, i32 %123, %struct.fileproc* %124, i32 0)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i32, i32* @DBG_BSD_SC_EXTENDED_INFO, align 4
  %128 = load i32, i32* @SYS_guarded_pwrite_np, align 4
  %129 = call i32 @BSDDBG_CODE(i32 %127, i32 %128)
  %130 = load i32, i32* @DBG_FUNC_NONE, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %133 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %136 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %139 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 32
  %142 = load %struct.guarded_pwrite_np_args*, %struct.guarded_pwrite_np_args** %6, align 8
  %143 = getelementptr inbounds %struct.guarded_pwrite_np_args, %struct.guarded_pwrite_np_args* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %131, i32 %134, i32 %137, i32 %141, i32 %144, i32 0)
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %126, %36, %27
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @fp_lookup_guarded(%struct.proc*, i32, i32, %struct.guarded_fileproc**, i32) #1

declare dso_local %struct.fileproc* @GFP_TO_FP(%struct.guarded_fileproc*) #1

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
