; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fsync_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fsync_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsync_args = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.fileproc = type { i32 }

@fd = common dso_local global i32 0, align 4
@vnpath = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4
@FP_WRITTEN = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@VISNAMEDSTREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fsync_args*, i32)* @fsync_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsync_common(i32 %0, %struct.fsync_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsync_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.fileproc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.fsync_args* %1, %struct.fsync_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 (...) @vfs_context_current()
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @fd, align 4
  %14 = load %struct.fsync_args*, %struct.fsync_args** %6, align 8
  %15 = getelementptr inbounds %struct.fsync_args, %struct.fsync_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_9__*
  %19 = call i32 (i32, %struct.TYPE_9__*, ...) @AUDIT_ARG(i32 %13, %struct.TYPE_9__* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.fsync_args*, %struct.fsync_args** %6, align 8
  %22 = getelementptr inbounds %struct.fsync_args, %struct.fsync_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fp_getfvp(i32 %20, i32 %23, %struct.fileproc** %9, %struct.TYPE_9__** %8)
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %54

28:                                               ; preds = %3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = call i32 @vnode_getwithref(%struct.TYPE_9__* %29)
  store i32 %30, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.fsync_args*, %struct.fsync_args** %6, align 8
  %34 = getelementptr inbounds %struct.fsync_args, %struct.fsync_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @file_drop(i32 %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %54

38:                                               ; preds = %28
  %39 = load i32, i32* @vnpath, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = load i32, i32* @ARG_VNODE1, align 4
  %42 = call i32 (i32, %struct.TYPE_9__*, ...) @AUDIT_ARG(i32 %39, %struct.TYPE_9__* %40, i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @VNOP_FSYNC(%struct.TYPE_9__* %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = call i32 @vnode_put(%struct.TYPE_9__* %47)
  %49 = load %struct.fsync_args*, %struct.fsync_args** %6, align 8
  %50 = getelementptr inbounds %struct.fsync_args, %struct.fsync_args* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @file_drop(i32 %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %38, %32, %26
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @AUDIT_ARG(i32, %struct.TYPE_9__*, ...) #1

declare dso_local i32 @fp_getfvp(i32, i32, %struct.fileproc**, %struct.TYPE_9__**) #1

declare dso_local i32 @vnode_getwithref(%struct.TYPE_9__*) #1

declare dso_local i32 @file_drop(i32) #1

declare dso_local i32 @VNOP_FSYNC(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vnode_put(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
