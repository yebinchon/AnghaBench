; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_rd_uio.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_rd_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.fileproc = type { i32 }
%struct.vfs_context = type { i32 }

@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rd_uio(%struct.proc* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.fileproc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.vfs_context, align 4
  store %struct.proc* %0, %struct.proc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = call %struct.vfs_context* (...) @vfs_context_current()
  %15 = bitcast %struct.vfs_context* %13 to i8*
  %16 = bitcast %struct.vfs_context* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.proc*, %struct.proc** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @preparefileread(%struct.proc* %17, %struct.fileproc** %10, i32 %18, i32 0)
  store i32 %19, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @uio_resid(i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %27 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %13, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @fo_read(%struct.fileproc* %30, i32 %31, i32 0, %struct.vfs_context* %13)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @uio_resid(i32 %36)
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @ERESTART, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @EINTR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @EWOULDBLOCK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44, %40
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %48, %35
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @uio_resid(i32 %56)
  %58 = sub nsw i64 %55, %57
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  %60 = load %struct.proc*, %struct.proc** %6, align 8
  %61 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @donefileread(%struct.proc* %60, %struct.fileproc* %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %54, %21
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.vfs_context* @vfs_context_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @preparefileread(%struct.proc*, %struct.fileproc**, i32, i32) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i32 @fo_read(%struct.fileproc*, i32, i32, %struct.vfs_context*) #1

declare dso_local i32 @donefileread(%struct.proc*, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
