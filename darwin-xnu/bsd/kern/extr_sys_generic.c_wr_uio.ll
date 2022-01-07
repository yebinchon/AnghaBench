; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_wr_uio.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_wr_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.fileproc = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vfs_context = type { i32 }

@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@FG_NOSIGPIPE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wr_uio(%struct.proc* %0, %struct.fileproc* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.vfs_context, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.fileproc* %1, %struct.fileproc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %12 = call %struct.vfs_context* (...) @vfs_context_current()
  %13 = bitcast %struct.vfs_context* %11 to i8*
  %14 = bitcast %struct.vfs_context* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @uio_resid(i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %18 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @fo_write(%struct.fileproc* %21, i32 %22, i32 0, %struct.vfs_context* %11)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @uio_resid(i32 %27)
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ERESTART, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @EINTR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EWOULDBLOCK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35, %31
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %39, %26
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EPIPE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %50 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DTYPE_SOCKET, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %56 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FG_NOSIGPIPE, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.proc*, %struct.proc** %5, align 8
  %65 = load i32, i32* @SIGPIPE, align 4
  %66 = call i32 @psignal(%struct.proc* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %54, %48, %44
  br label %68

68:                                               ; preds = %67, %4
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @uio_resid(i32 %70)
  %72 = sub nsw i64 %69, %71
  %73 = load i64*, i64** %8, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local %struct.vfs_context* @vfs_context_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i32 @fo_write(%struct.fileproc*, i32, i32, %struct.vfs_context*) #1

declare dso_local i32 @psignal(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
