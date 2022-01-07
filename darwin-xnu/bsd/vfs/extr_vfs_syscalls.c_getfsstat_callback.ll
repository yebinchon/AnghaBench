; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_getfsstat_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_getfsstat_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.vfsstatfs }
%struct.vfsstatfs = type { i32 }
%struct.getfsstat_struct = type { i64, i64, i32, i32, i32*, i64 }

@MNT_NOWAIT = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@MNT_DWAIT = common dso_local global i32 0, align 4
@VFS_USER_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"vfs_update_vfsstat returned %d\00", align 1
@VFS_RETURNED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VFS_RETURNED_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @getfsstat_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfsstat_callback(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.getfsstat_struct*, align 8
  %7 = alloca %struct.vfsstatfs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.getfsstat_struct*
  store %struct.getfsstat_struct* %12, %struct.getfsstat_struct** %6, align 8
  %13 = call i32 (...) @vfs_context_current()
  store i32 %13, i32* %10, align 4
  %14 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %15 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %89

18:                                               ; preds = %2
  %19 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %20 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %23 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %89

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.vfsstatfs* %28, %struct.vfsstatfs** %7, align 8
  %29 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %30 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MNT_NOWAIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %37 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MNT_WAIT, align 4
  %40 = load i32, i32* @MNT_DWAIT, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %35, %26
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @VFS_USER_EVENT, align 4
  %48 = call i32 @vfs_update_vfsstat(%struct.TYPE_7__* %45, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @VFS_RETURNED, align 4
  store i32 %53, i32* %3, align 4
  br label %95

54:                                               ; preds = %44, %35
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = load %struct.vfsstatfs*, %struct.vfsstatfs** %7, align 8
  %57 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %58 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @vfs_context_proc(i32 %60)
  %62 = call i32 @IS_64BIT_PROCESS(i32 %61)
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @munge_statfs(%struct.TYPE_7__* %55, %struct.vfsstatfs* %56, i64 %59, i32* %9, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %70 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @VFS_RETURNED_DONE, align 4
  store i32 %71, i32* %3, align 4
  br label %95

72:                                               ; preds = %54
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %76 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %80 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %85 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %85, align 8
  br label %88

88:                                               ; preds = %83, %72
  br label %89

89:                                               ; preds = %88, %18, %2
  %90 = load %struct.getfsstat_struct*, %struct.getfsstat_struct** %6, align 8
  %91 = getelementptr inbounds %struct.getfsstat_struct, %struct.getfsstat_struct* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load i32, i32* @VFS_RETURNED, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %67, %50
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @vfs_update_vfsstat(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, i32) #1

declare dso_local i32 @munge_statfs(%struct.TYPE_7__*, %struct.vfsstatfs*, i64, i32*, i32, i32) #1

declare dso_local i32 @IS_64BIT_PROCESS(i32) #1

declare dso_local i32 @vfs_context_proc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
