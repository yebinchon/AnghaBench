; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_read_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_read_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.read_nocancel_args = type { i32, i32, i32 }
%struct.fileproc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vfs_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_nocancel(%struct.proc* %0, %struct.read_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.read_nocancel_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fileproc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vfs_context, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.read_nocancel_args* %1, %struct.read_nocancel_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.read_nocancel_args*, %struct.read_nocancel_args** %6, align 8
  %13 = getelementptr inbounds %struct.read_nocancel_args, %struct.read_nocancel_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.proc*, %struct.proc** %5, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @preparefileread(%struct.proc* %15, %struct.fileproc** %8, i32 %16, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = call %struct.vfs_context* (...) @vfs_context_current()
  %23 = bitcast %struct.vfs_context* %11 to i8*
  %24 = bitcast %struct.vfs_context* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %26 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %11, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %32 = load %struct.read_nocancel_args*, %struct.read_nocancel_args** %6, align 8
  %33 = getelementptr inbounds %struct.read_nocancel_args, %struct.read_nocancel_args* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.read_nocancel_args*, %struct.read_nocancel_args** %6, align 8
  %36 = getelementptr inbounds %struct.read_nocancel_args, %struct.read_nocancel_args* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @dofileread(%struct.vfs_context* %11, %struct.fileproc* %31, i32 %34, i32 %37, i32 -1, i32 0, i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.proc*, %struct.proc** %5, align 8
  %41 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @donefileread(%struct.proc* %40, %struct.fileproc* %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %21, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @preparefileread(%struct.proc*, %struct.fileproc**, i32, i32) #1

declare dso_local %struct.vfs_context* @vfs_context_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dofileread(%struct.vfs_context*, %struct.fileproc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @donefileread(%struct.proc*, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
