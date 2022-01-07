; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_closef_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_closef_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i32 }
%struct.fileglob = type { i64, i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vnode = type { i32 }
%struct.flock = type { i32, i64, i64, i32 }
%struct.vfs_context = type { i32, i32* }

@P_LADVLOCK = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@F_POSIX = common dso_local global i32 0, align 4
@FP_WRITTEN = common dso_local global i32 0, align 4
@FWASWRITTEN = common dso_local global i32 0, align 4
@FG_TERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @closef_locked(%struct.fileproc* %0, %struct.fileglob* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fileproc*, align 8
  %6 = alloca %struct.fileglob*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.flock, align 8
  %10 = alloca %struct.vfs_context, align 8
  %11 = alloca i32, align 4
  store %struct.fileproc* %0, %struct.fileproc** %5, align 8
  store %struct.fileglob* %1, %struct.fileglob** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %12 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %13 = icmp eq %struct.fileglob* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %129

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = call %struct.TYPE_6__* (...) @current_proc()
  %18 = icmp eq %struct.TYPE_6__* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32* (...) @current_thread()
  %21 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %10, i32 0, i32 1
  store i32* %20, i32** %21, align 8
  br label %24

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %10, i32 0, i32 1
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %26 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %71

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @P_LADVLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %31
  %39 = load i64, i64* @DTYPE_VNODE, align 8
  %40 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %41 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = call i32 @proc_fdunlock(%struct.TYPE_6__* %44)
  %46 = load i32, i32* @SEEK_SET, align 4
  %47 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @F_UNLCK, align 4
  %51 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %53 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.vnode*
  store %struct.vnode* %55, %struct.vnode** %8, align 8
  %56 = load %struct.vnode*, %struct.vnode** %8, align 8
  %57 = call i32 @vnode_getwithref(%struct.vnode* %56)
  store i32 %57, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %43
  %60 = load %struct.vnode*, %struct.vnode** %8, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = ptrtoint %struct.TYPE_6__* %61 to i32
  %63 = load i32, i32* @F_UNLCK, align 4
  %64 = load i32, i32* @F_POSIX, align 4
  %65 = call i32 @VNOP_ADVLOCK(%struct.vnode* %60, i32 %62, i32 %63, %struct.flock* %9, i32 %64, %struct.vfs_context* %10, i32* null)
  %66 = load %struct.vnode*, %struct.vnode** %8, align 8
  %67 = call i32 @vnode_put(%struct.vnode* %66)
  br label %68

68:                                               ; preds = %59, %43
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = call i32 @proc_fdlock(%struct.TYPE_6__* %69)
  br label %71

71:                                               ; preds = %68, %38, %31, %24
  %72 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %73 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %72, i32 0, i32 1
  %74 = call i32 @lck_mtx_lock_spin(i32* %73)
  %75 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %76 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %80 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %85 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %84, i32 0, i32 1
  %86 = call i32 @lck_mtx_unlock(i32* %85)
  store i32 0, i32* %4, align 4
  br label %129

87:                                               ; preds = %71
  %88 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %89 = icmp ne %struct.fileproc* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %92 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @FP_WRITTEN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* @FWASWRITTEN, align 4
  %99 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %100 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %90, %87
  %104 = load i32, i32* @FG_TERM, align 4
  %105 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %106 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %110 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %109, i32 0, i32 1
  %111 = call i32 @lck_mtx_unlock(i32* %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = icmp ne %struct.TYPE_6__* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = call i32 @proc_fdunlock(%struct.TYPE_6__* %115)
  br label %117

117:                                              ; preds = %114, %103
  %118 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %119 = call i32 @fo_close(%struct.fileglob* %118, %struct.vfs_context* %10)
  store i32 %119, i32* %11, align 4
  %120 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %121 = call i32 @fg_free(%struct.fileglob* %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = icmp ne %struct.TYPE_6__* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = call i32 @proc_fdlock(%struct.TYPE_6__* %125)
  br label %127

127:                                              ; preds = %124, %117
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %83, %14
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_6__* @current_proc(...) #1

declare dso_local i32* @current_thread(...) #1

declare dso_local i64 @FILEGLOB_DTYPE(%struct.fileglob*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_6__*) #1

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @VNOP_ADVLOCK(%struct.vnode*, i32, i32, %struct.flock*, i32, %struct.vfs_context*, i32*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_6__*) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @fo_close(%struct.fileglob*, %struct.vfs_context*) #1

declare dso_local i32 @fg_free(%struct.fileglob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
