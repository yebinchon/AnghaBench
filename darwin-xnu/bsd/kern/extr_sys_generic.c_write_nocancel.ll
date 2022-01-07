; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_write_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_write_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.write_nocancel_args = type { i32, i32, i32 }
%struct.fileproc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vfs_context = type { i32 }

@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@GUARD_WRITE = common dso_local global i32 0, align 4
@kGUARD_EXC_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_nocancel(%struct.proc* %0, %struct.write_nocancel_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.write_nocancel_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.fileproc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vfs_context, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.write_nocancel_args* %1, %struct.write_nocancel_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.write_nocancel_args*, %struct.write_nocancel_args** %6, align 8
  %14 = getelementptr inbounds %struct.write_nocancel_args, %struct.write_nocancel_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @AUDIT_ARG(i32 %16, i32 %17)
  %19 = load %struct.proc*, %struct.proc** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @fp_lookup(%struct.proc* %19, i32 %20, %struct.fileproc** %8, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %89

26:                                               ; preds = %3
  %27 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %28 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FWRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EBADF, align 4
  store i32 %34, i32* %9, align 4
  br label %74

35:                                               ; preds = %26
  %36 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %37 = load i32, i32* @GUARD_WRITE, align 4
  %38 = call i64 @FP_ISGUARDED(%struct.fileproc* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.proc*, %struct.proc** %5, align 8
  %42 = call i32 @proc_fdlock(%struct.proc* %41)
  %43 = load %struct.proc*, %struct.proc** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %46 = load i32, i32* @kGUARD_EXC_WRITE, align 4
  %47 = call i32 @fp_guard_exception(%struct.proc* %43, i32 %44, %struct.fileproc* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.proc*, %struct.proc** %5, align 8
  %49 = call i32 @proc_fdunlock(%struct.proc* %48)
  br label %73

50:                                               ; preds = %35
  %51 = call %struct.vfs_context* (...) @vfs_context_current()
  %52 = bitcast %struct.vfs_context* %12 to i8*
  %53 = bitcast %struct.vfs_context* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %55 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %12, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %61 = load %struct.write_nocancel_args*, %struct.write_nocancel_args** %6, align 8
  %62 = getelementptr inbounds %struct.write_nocancel_args, %struct.write_nocancel_args* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.write_nocancel_args*, %struct.write_nocancel_args** %6, align 8
  %65 = getelementptr inbounds %struct.write_nocancel_args, %struct.write_nocancel_args* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64*, i64** %7, align 8
  %68 = call i32 @dofilewrite(%struct.vfs_context* %12, %struct.fileproc* %60, i32 %63, i32 %66, i32 -1, i32 0, i64* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %50, %40
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.proc*, %struct.proc** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %81 = call i32 @fp_drop_written(%struct.proc* %78, i32 %79, %struct.fileproc* %80)
  br label %87

82:                                               ; preds = %74
  %83 = load %struct.proc*, %struct.proc** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %86 = call i32 @fp_drop(%struct.proc* %83, i32 %84, %struct.fileproc* %85, i32 0)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %24
  %90 = load i32, i32* %4, align 4
  ret i32 %90
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
