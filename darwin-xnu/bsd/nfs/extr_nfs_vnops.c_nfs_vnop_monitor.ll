; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_monitor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.vnop_monitor_args = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nfsmount = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFSNOLIST = common dso_local global i64 0, align 8
@n_monlink = common dso_local global i32 0, align 4
@NMMONSCANINPROG = common dso_local global i32 0, align 4
@__const.nfs_vnop_monitor.ts = private unnamed_addr constant %struct.timespec { i32 1, i32 0 }, align 4
@NMMONSCANWANT = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"nfswaitmonscan\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_monitor(%struct.vnop_monitor_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_monitor_args*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.nfsmount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 4
  store %struct.vnop_monitor_args* %0, %struct.vnop_monitor_args** %3, align 8
  %8 = load %struct.vnop_monitor_args*, %struct.vnop_monitor_args** %3, align 8
  %9 = getelementptr inbounds %struct.vnop_monitor_args, %struct.vnop_monitor_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_7__* @VTONFS(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.vnop_monitor_args*, %struct.vnop_monitor_args** %3, align 8
  %13 = getelementptr inbounds %struct.vnop_monitor_args, %struct.vnop_monitor_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nfsmount* @VTONMP(i32 %14)
  store %struct.nfsmount* %15, %struct.nfsmount** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %17 = call i64 @nfs_mount_gone(%struct.nfsmount* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %89

21:                                               ; preds = %1
  %22 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %23 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %22, i32 0, i32 0
  %24 = call i32 @lck_mtx_lock(i32* %23)
  %25 = load %struct.vnop_monitor_args*, %struct.vnop_monitor_args** %3, align 8
  %26 = getelementptr inbounds %struct.vnop_monitor_args, %struct.vnop_monitor_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @vnode_ismonitored(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NFSNOLIST, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %39 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = load i32, i32* @n_monlink, align 4
  %42 = call i32 @LIST_INSERT_HEAD(i32* %39, %struct.TYPE_7__* %40, i32 %41)
  %43 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %44 = call i32 @nfs_mount_sock_thread_wake(%struct.nfsmount* %43)
  br label %45

45:                                               ; preds = %37, %30
  br label %84

46:                                               ; preds = %21
  br label %47

47:                                               ; preds = %54, %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NMMONSCANINPROG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%struct.timespec* @__const.nfs_vnop_monitor.ts to i8*), i64 8, i1 false)
  %56 = load i32, i32* @NMMONSCANWANT, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %64 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %63, i32 0, i32 0
  %65 = load i64, i64* @PZERO, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call i32 @msleep(i32* %62, i32* %64, i64 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.timespec* %7)
  br label %47

68:                                               ; preds = %47
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NFSNOLIST, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = load i32, i32* @n_monlink, align 4
  %78 = call i32 @LIST_REMOVE(%struct.TYPE_7__* %76, i32 %77)
  %79 = load i64, i64* @NFSNOLIST, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %75, %68
  br label %84

84:                                               ; preds = %83, %45
  %85 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %86 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %85, i32 0, i32 0
  %87 = call i32 @lck_mtx_unlock(i32* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %84, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_7__* @VTONFS(i32) #1

declare dso_local %struct.nfsmount* @VTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @vnode_ismonitored(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @nfs_mount_sock_thread_wake(%struct.nfsmount*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msleep(i32*, i32*, i64, i8*, %struct.timespec*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
