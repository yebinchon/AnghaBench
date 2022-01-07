; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_write_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_write_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.guarded_write_np_args = type { i32, i32, i32, i32 }
%struct.fileproc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.guarded_fileproc = type { i32 }
%struct.vfs_context = type { i32 }

@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @guarded_write_np(%struct.proc* %0, %struct.guarded_write_np_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.guarded_write_np_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fileproc*, align 8
  %12 = alloca %struct.guarded_fileproc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vfs_context, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.guarded_write_np_args* %1, %struct.guarded_write_np_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.guarded_write_np_args*, %struct.guarded_write_np_args** %6, align 8
  %16 = getelementptr inbounds %struct.guarded_write_np_args, %struct.guarded_write_np_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @AUDIT_ARG(i32 %18, i32 %19)
  %21 = load %struct.guarded_write_np_args*, %struct.guarded_write_np_args** %6, align 8
  %22 = getelementptr inbounds %struct.guarded_write_np_args, %struct.guarded_write_np_args* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @copyin(i32 %23, i32* %10, i32 4)
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %3
  %29 = load %struct.proc*, %struct.proc** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @fp_lookup_guarded(%struct.proc* %29, i32 %30, i32 %31, %struct.guarded_fileproc** %12, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %86

37:                                               ; preds = %28
  %38 = load %struct.guarded_fileproc*, %struct.guarded_fileproc** %12, align 8
  %39 = call %struct.fileproc* @GFP_TO_FP(%struct.guarded_fileproc* %38)
  store %struct.fileproc* %39, %struct.fileproc** %11, align 8
  %40 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %41 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FWRITE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @EBADF, align 4
  store i32 %47, i32* %8, align 4
  br label %71

48:                                               ; preds = %37
  %49 = call %struct.vfs_context* (...) @vfs_context_current()
  %50 = bitcast %struct.vfs_context* %14 to i8*
  %51 = bitcast %struct.vfs_context* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %53 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %14, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %59 = load %struct.guarded_write_np_args*, %struct.guarded_write_np_args** %6, align 8
  %60 = getelementptr inbounds %struct.guarded_write_np_args, %struct.guarded_write_np_args* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.guarded_write_np_args*, %struct.guarded_write_np_args** %6, align 8
  %63 = getelementptr inbounds %struct.guarded_write_np_args, %struct.guarded_write_np_args* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i64*, i64** %7, align 8
  %66 = call i32 @dofilewrite(%struct.vfs_context* %14, %struct.fileproc* %58, i32 %61, i32 %64, i32 -1, i32 0, i64* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %48, %46
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.proc*, %struct.proc** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %78 = call i32 @fp_drop_written(%struct.proc* %75, i32 %76, %struct.fileproc* %77)
  br label %84

79:                                               ; preds = %71
  %80 = load %struct.proc*, %struct.proc** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %83 = call i32 @fp_drop(%struct.proc* %80, i32 %81, %struct.fileproc* %82, i32 0)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %35, %26
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @fp_lookup_guarded(%struct.proc*, i32, i32, %struct.guarded_fileproc**, i32) #1

declare dso_local %struct.fileproc* @GFP_TO_FP(%struct.guarded_fileproc*) #1

declare dso_local %struct.vfs_context* @vfs_context_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dofilewrite(%struct.vfs_context*, %struct.fileproc*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @fp_drop_written(%struct.proc*, i32, %struct.fileproc*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
