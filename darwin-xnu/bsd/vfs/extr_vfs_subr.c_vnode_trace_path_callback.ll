; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_trace_path_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_trace_path_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vnode_trace_paths_context = type { i32, i64 }

@KDBG_VFS_LOOKUP_FLAG_LOOKUP = common dso_local global i32 0, align 4
@KDBG_VFS_LOOKUP_FLAG_NOPROCFILT = common dso_local global i32 0, align 4
@VNODE_RETURNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i8*)* @vnode_trace_path_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_trace_path_callback(%struct.vnode* %0, i8* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode_trace_paths_context*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vnode_trace_paths_context*
  store %struct.vnode_trace_paths_context* %9, %struct.vnode_trace_paths_context** %7, align 8
  store i32 8, i32* %5, align 4
  %10 = load %struct.vnode*, %struct.vnode** %3, align 8
  %11 = load %struct.vnode_trace_paths_context*, %struct.vnode_trace_paths_context** %7, align 8
  %12 = getelementptr inbounds %struct.vnode_trace_paths_context, %struct.vnode_trace_paths_context* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @vn_getpath(%struct.vnode* %10, i8* %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %2
  %19 = load %struct.vnode_trace_paths_context*, %struct.vnode_trace_paths_context** %7, align 8
  %20 = getelementptr inbounds %struct.vnode_trace_paths_context, %struct.vnode_trace_paths_context* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.vnode*, %struct.vnode** %3, align 8
  %24 = load i32, i32* @KDBG_VFS_LOOKUP_FLAG_LOOKUP, align 4
  %25 = load i32, i32* @KDBG_VFS_LOOKUP_FLAG_NOPROCFILT, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @kdebug_vfs_lookup(i64 %21, i32 %22, %struct.vnode* %23, i32 %26)
  %28 = load %struct.vnode_trace_paths_context*, %struct.vnode_trace_paths_context** %7, align 8
  %29 = getelementptr inbounds %struct.vnode_trace_paths_context, %struct.vnode_trace_paths_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = icmp eq i32 %31, 1000
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = call i32 (...) @thread_yield_to_preemption()
  %35 = load %struct.vnode_trace_paths_context*, %struct.vnode_trace_paths_context** %7, align 8
  %36 = getelementptr inbounds %struct.vnode_trace_paths_context, %struct.vnode_trace_paths_context* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %18
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* @VNODE_RETURNED, align 4
  ret i32 %39
}

declare dso_local i32 @vn_getpath(%struct.vnode*, i8*, i32*) #1

declare dso_local i32 @kdebug_vfs_lookup(i64, i32, %struct.vnode*, i32) #1

declare dso_local i32 @thread_yield_to_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
