; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_common_chdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_common_chdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.filedesc* }
%struct.filedesc = type { i64 }
%struct.chdir_args = type { i32 }
%struct.nameidata = type { i64 }
%struct.TYPE_7__ = type { i64 }

@LOOKUP = common dso_local global i32 0, align 4
@OP_CHDIR = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@P_THCWD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.chdir_args*, i32)* @common_chdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_chdir(%struct.TYPE_8__* %0, %struct.chdir_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.chdir_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.filedesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nameidata, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.chdir_args* %1, %struct.chdir_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  store %struct.filedesc* %17, %struct.filedesc** %8, align 8
  %18 = call i32 (...) @vfs_context_current()
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @LOOKUP, align 4
  %20 = load i32, i32* @OP_CHDIR, align 4
  %21 = load i32, i32* @FOLLOW, align 4
  %22 = load i32, i32* @AUDITVNPATH1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @UIO_USERSPACE, align 4
  %25 = load %struct.chdir_args*, %struct.chdir_args** %6, align 8
  %26 = getelementptr inbounds %struct.chdir_args, %struct.chdir_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @NDINIT(%struct.nameidata* %10, i32 %19, i32 %20, i32 %23, i32 %24, i32 %27, i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @change_dir(%struct.nameidata* %10, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %96

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @vnode_ref(i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @vnode_put(i64 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %96

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @vnode_put(i64 %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @vfs_context_thread(i32 %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load i64, i64* %13, align 8
  %59 = call %struct.TYPE_7__* @get_bsdthread_info(i64 %58)
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %14, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @P_THCWD, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = call i32 @OSBitOrAtomic(i32 %67, i32* %69)
  br label %76

71:                                               ; preds = %52
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @vnode_rele(i64 %73)
  %75 = load i32, i32* @ENOENT, align 4
  store i32 %75, i32* %4, align 4
  br label %96

76:                                               ; preds = %57
  br label %89

77:                                               ; preds = %46
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = call i32 @proc_fdlock(%struct.TYPE_8__* %78)
  %80 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %81 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  %83 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %86 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = call i32 @proc_fdunlock(%struct.TYPE_8__* %87)
  br label %89

89:                                               ; preds = %77, %76
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @vnode_rele(i64 %93)
  br label %95

95:                                               ; preds = %92, %89
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %71, %41, %34
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @change_dir(%struct.nameidata*, i32) #1

declare dso_local i32 @vnode_ref(i64) #1

declare dso_local i32 @vnode_put(i64) #1

declare dso_local i64 @vfs_context_thread(i32) #1

declare dso_local %struct.TYPE_7__* @get_bsdthread_info(i64) #1

declare dso_local i32 @OSBitOrAtomic(i32, i32*) #1

declare dso_local i32 @vnode_rele(i64) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_8__*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
