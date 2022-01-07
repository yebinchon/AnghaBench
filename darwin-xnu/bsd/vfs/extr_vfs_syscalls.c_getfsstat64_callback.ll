; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_getfsstat64_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_getfsstat64_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.vfsstatfs }
%struct.vfsstatfs = type { i32 }
%struct.getfsstat_struct = type { i64, i64, i32, i32, i64 }

@MNT_NOWAIT = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@MNT_DWAIT = common dso_local global i32 0, align 4
@VFS_USER_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"vfs_update_vfsstat returned %d\00", align 1
@VFS_RETURNED = common dso_local global i32 0, align 4
@VFS_RETURNED_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @getfsstat64_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfsstat64_callback(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.getfsstat_struct*, align 8
  %7 = alloca %struct.vfsstatfs*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.getfsstat_struct*
  store %struct.getfsstat_struct* %10, %struct.getfsstat_struct** %6, align 8
  %11 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %12 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %2
  %16 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %17 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %20 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %15
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store %struct.vfsstatfs* %25, %struct.vfsstatfs** %7, align 8
  %26 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %27 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MNT_NOWAIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %34 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MNT_WAIT, align 4
  %37 = load i32, i32* @MNT_DWAIT, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32, %23
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = call i32 (...) @vfs_context_current()
  %44 = load i32, i32* @VFS_USER_EVENT, align 4
  %45 = call i32 @vfs_update_vfsstat(%struct.TYPE_6__* %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @VFS_RETURNED, align 4
  store i32 %50, i32* %3, align 4
  br label %76

51:                                               ; preds = %41, %32
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = load %struct.vfsstatfs*, %struct.vfsstatfs** %7, align 8
  %54 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %55 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @statfs64_common(%struct.TYPE_6__* %52, %struct.vfsstatfs* %53, i64 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %63 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @VFS_RETURNED_DONE, align 4
  store i32 %64, i32* %3, align 4
  br label %76

65:                                               ; preds = %51
  %66 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %67 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %15, %2
  %71 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %72 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* @VFS_RETURNED, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %60, %47
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @vfs_update_vfsstat(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, i32) #1

declare dso_local i32 @statfs64_common(%struct.TYPE_6__*, %struct.vfsstatfs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
