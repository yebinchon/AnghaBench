; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vfsops.c_devfs_kernel_mount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vfsops.c_devfs_kernel_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.devfs_kernel_mount.fsname = private unnamed_addr constant [6 x i8] c"devfs\00", align 1
@NULLVP = common dso_local global i32 0, align 4
@MNT_DONTBROWSE = common dso_local global i32 0, align 4
@KERNEL_MOUNT_NOAUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"devfs_kernel_mount: kernel_mount failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfs_kernel_mount(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  store i8* %0, i8** %3, align 8
  %7 = call i32 (...) @vfs_context_kernel()
  store i32 %7, i32* %5, align 4
  %8 = bitcast [6 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.devfs_kernel_mount.fsname, i32 0, i32 0), i64 6, i1 false)
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %10 = load i32, i32* @NULLVP, align 4
  %11 = load i32, i32* @NULLVP, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @MNT_DONTBROWSE, align 4
  %14 = load i32, i32* @KERNEL_MOUNT_NOAUTH, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @kernel_mount(i8* %9, i32 %10, i32 %11, i8* %12, i32* null, i32 0, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @vfs_context_kernel(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kernel_mount(i8*, i32, i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
