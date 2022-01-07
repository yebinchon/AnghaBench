; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_write_v3_chunk_to_fd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_write_v3_chunk_to_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_context = type { i32, i32 }
%struct.fileproc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.vnode = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@RAW_file_offset = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdbg_write_v3_chunk_to_fd(i32 %0, i32 %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vfs_context, align 4
  %16 = alloca %struct.fileproc*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca %struct.TYPE_3__, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = call i32 (...) @current_proc()
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @proc_fdlock(i32 %21)
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i64 @fp_lookup(i32 %23, i32 %24, %struct.fileproc** %16, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @proc_fdunlock(i32 %28)
  %30 = load i32, i32* @EFAULT, align 4
  store i32 %30, i32* %7, align 4
  br label %118

31:                                               ; preds = %6
  %32 = call i32 (...) @current_thread()
  %33 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %15, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %35 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %15, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %41 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i64 @FILEGLOB_DTYPE(%struct.TYPE_4__* %42)
  %44 = load i64, i64* @DTYPE_VNODE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %31
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %50 = call i32 @fp_drop(i32 %47, i32 %48, %struct.fileproc* %49, i32 1)
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @proc_fdunlock(i32 %51)
  %53 = load i32, i32* @EBADF, align 4
  store i32 %53, i32* %7, align 4
  br label %118

54:                                               ; preds = %31
  %55 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %56 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.vnode*
  store %struct.vnode* %60, %struct.vnode** %17, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @proc_fdunlock(i32 %61)
  %63 = load %struct.vnode*, %struct.vnode** %17, align 8
  %64 = call i64 @vnode_getwithref(%struct.vnode* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %112

66:                                               ; preds = %54
  %67 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %68 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* @RAW_file_offset, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %76, align 4
  %78 = ptrtoint %struct.TYPE_3__* %18 to i32
  %79 = load %struct.vnode*, %struct.vnode** %17, align 8
  %80 = load i32, i32* @RAW_file_offset, align 4
  %81 = call i32 @kdbg_write_to_vnode(i32 %78, i64 16, %struct.vnode* %79, %struct.vfs_context* %15, i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %66
  %85 = load i32, i32* @RAW_file_offset, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, 16
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @RAW_file_offset, align 4
  br label %89

89:                                               ; preds = %84, %66
  %90 = load i8*, i8** %11, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.vnode*, %struct.vnode** %17, align 8
  %94 = load i32, i32* @RAW_file_offset, align 4
  %95 = call i32 @kdbg_write_to_vnode(i32 %91, i64 %92, %struct.vnode* %93, %struct.vfs_context* %15, i32 %94)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %89
  %99 = load i64, i64* %12, align 8
  %100 = load i32, i32* @RAW_file_offset, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* @RAW_file_offset, align 4
  br label %104

104:                                              ; preds = %98, %89
  %105 = load i32, i32* @RAW_file_offset, align 4
  %106 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %107 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  %110 = load %struct.vnode*, %struct.vnode** %17, align 8
  %111 = call i32 @vnode_put(%struct.vnode* %110)
  br label %112

112:                                              ; preds = %104, %54
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.fileproc*, %struct.fileproc** %16, align 8
  %116 = call i32 @fp_drop(i32 %113, i32 %114, %struct.fileproc* %115, i32 0)
  %117 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %112, %46, %27
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @proc_fdlock(i32) #1

declare dso_local i64 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @proc_fdunlock(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @FILEGLOB_DTYPE(%struct.TYPE_4__*) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

declare dso_local i64 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @kdbg_write_to_vnode(i32, i64, %struct.vnode*, %struct.vfs_context*, i32) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
