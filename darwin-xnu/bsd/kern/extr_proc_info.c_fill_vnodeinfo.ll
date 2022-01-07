; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_fill_vnodeinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_fill_vnodeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.vnode_info = type { i32, %struct.TYPE_8__, i32 }
%struct.stat64 = type { i32 }

@dead_mountp = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_vnodeinfo(%struct.TYPE_9__* %0, %struct.vnode_info* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.vnode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat64, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.vnode_info* %1, %struct.vnode_info** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @bzero(%struct.stat64* %6, i32 4)
  %9 = call i32 @vfs_context_create(i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @vn_stat(%struct.TYPE_9__* %10, %struct.stat64* %6, i32* null, i32 1, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @vfs_context_rele(i32 %13)
  %15 = load %struct.vnode_info*, %struct.vnode_info** %4, align 8
  %16 = getelementptr inbounds %struct.vnode_info, %struct.vnode_info* %15, i32 0, i32 2
  %17 = call i32 @munge_vinfo_stat(%struct.stat64* %6, i32* %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dead_mountp, align 8
  %26 = icmp ne %struct.TYPE_10__* %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.vnode_info*, %struct.vnode_info** %4, align 8
  %29 = getelementptr inbounds %struct.vnode_info, %struct.vnode_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = bitcast %struct.TYPE_8__* %29 to i8*
  %36 = bitcast %struct.TYPE_8__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  br label %48

37:                                               ; preds = %21
  %38 = load %struct.vnode_info*, %struct.vnode_info** %4, align 8
  %39 = getelementptr inbounds %struct.vnode_info, %struct.vnode_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.vnode_info*, %struct.vnode_info** %4, align 8
  %44 = getelementptr inbounds %struct.vnode_info, %struct.vnode_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %37, %27
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vnode_info*, %struct.vnode_info** %4, align 8
  %53 = getelementptr inbounds %struct.vnode_info, %struct.vnode_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %20
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @bzero(%struct.stat64*, i32) #1

declare dso_local i32 @vfs_context_create(i32) #1

declare dso_local i32 @vn_stat(%struct.TYPE_9__*, %struct.stat64*, i32*, i32, i32) #1

declare dso_local i32 @vfs_context_rele(i32) #1

declare dso_local i32 @munge_vinfo_stat(%struct.stat64*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
