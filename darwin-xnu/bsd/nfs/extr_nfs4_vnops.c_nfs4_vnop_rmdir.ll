; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_rmdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_rmdir_args = type { %struct.componentname*, i32, i32, i32 }
%struct.componentname = type { i32, i32 }
%struct.nfsmount = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.nfs_dulookup = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FSFLAG_NAMED_ATTR = common dso_local global i32 0, align 4
@NGA_CACHED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@nfs_node_hash_mutex = common dso_local global i32 0, align 4
@NHHASHED = common dso_local global i32 0, align 4
@n_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_vnop_rmdir(%struct.vnop_rmdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_rmdir_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.nfs_dulookup, align 4
  store %struct.vnop_rmdir_args* %0, %struct.vnop_rmdir_args** %3, align 8
  %14 = load %struct.vnop_rmdir_args*, %struct.vnop_rmdir_args** %3, align 8
  %15 = getelementptr inbounds %struct.vnop_rmdir_args, %struct.vnop_rmdir_args* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.vnop_rmdir_args*, %struct.vnop_rmdir_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_rmdir_args, %struct.vnop_rmdir_args* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.vnop_rmdir_args*, %struct.vnop_rmdir_args** %3, align 8
  %21 = getelementptr inbounds %struct.vnop_rmdir_args, %struct.vnop_rmdir_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.vnop_rmdir_args*, %struct.vnop_rmdir_args** %3, align 8
  %24 = getelementptr inbounds %struct.vnop_rmdir_args, %struct.vnop_rmdir_args* %23, i32 0, i32 0
  %25 = load %struct.componentname*, %struct.componentname** %24, align 8
  store %struct.componentname* %25, %struct.componentname** %7, align 8
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.TYPE_19__* @VTONFS(i32 %26)
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.TYPE_19__* @VTONFS(i32 %28)
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %12, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @vnode_vtype(i32 %30)
  %32 = load i64, i64* @VDIR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %143

36:                                               ; preds = %1
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %38 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_19__* %37)
  store %struct.nfsmount* %38, %struct.nfsmount** %8, align 8
  %39 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %40 = call i64 @nfs_mount_gone(%struct.nfsmount* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %143

44:                                               ; preds = %36
  %45 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %46 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NFS_FSFLAG_NAMED_ATTR, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @vfs_context_thread(i32 %53)
  %55 = call i32 @nfs_node_set_busy2(%struct.TYPE_19__* %51, %struct.TYPE_19__* %52, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %143

59:                                               ; preds = %44
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %64 = load %struct.componentname*, %struct.componentname** %7, align 8
  %65 = getelementptr inbounds %struct.componentname, %struct.componentname* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.componentname*, %struct.componentname** %7, align 8
  %68 = getelementptr inbounds %struct.componentname, %struct.componentname* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @nfs_dulookup_init(%struct.nfs_dulookup* %13, %struct.TYPE_19__* %63, i32 %66, i32 %69, i32 %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @nfs_dulookup_start(%struct.nfs_dulookup* %13, %struct.TYPE_19__* %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %59
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %77 = load %struct.componentname*, %struct.componentname** %7, align 8
  %78 = getelementptr inbounds %struct.componentname, %struct.componentname* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.componentname*, %struct.componentname** %7, align 8
  %81 = getelementptr inbounds %struct.componentname, %struct.componentname* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @vfs_context_thread(i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @vfs_context_ucred(i32 %85)
  %87 = call i32 @nfs4_remove_rpc(%struct.TYPE_19__* %76, i32 %79, i32 %82, i32 %84, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %90 = load %struct.componentname*, %struct.componentname** %7, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @nfs_name_cache_purge(%struct.TYPE_19__* %88, %struct.TYPE_19__* %89, %struct.componentname* %90, i32 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @NGA_CACHED, align 4
  %96 = call i32 @nfs_getattr(%struct.TYPE_19__* %93, i32* null, i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %75
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @nfs_dulookup_finish(%struct.nfs_dulookup* %13, %struct.TYPE_19__* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %75
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %106 = call i32 @nfs_node_clear_busy2(%struct.TYPE_19__* %104, %struct.TYPE_19__* %105)
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @ENOENT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %103
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %141, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @nfs_node_hash_mutex, align 4
  %116 = call i32 @lck_mtx_lock(i32 %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NHHASHED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %125 = load i32, i32* @n_hash, align 4
  %126 = call i32 @LIST_REMOVE(%struct.TYPE_19__* %124, i32 %125)
  %127 = load i32, i32* @NHHASHED, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @FSDBG(i32 266, i32 0, %struct.TYPE_19__* %133, i32 %136, i32 11660062)
  br label %138

138:                                              ; preds = %123, %114
  %139 = load i32, i32* @nfs_node_hash_mutex, align 4
  %140 = call i32 @lck_mtx_unlock(i32 %139)
  br label %141

141:                                              ; preds = %138, %111
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %57, %42, %34
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_19__* @VTONFS(i32) #1

declare dso_local i64 @vnode_vtype(i32) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_19__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_node_set_busy2(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @nfs_dulookup_init(%struct.nfs_dulookup*, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @nfs_dulookup_start(%struct.nfs_dulookup*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @nfs4_remove_rpc(%struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfs_name_cache_purge(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.componentname*, i32) #1

declare dso_local i32 @nfs_getattr(%struct.TYPE_19__*, i32*, i32, i32) #1

declare dso_local i32 @nfs_dulookup_finish(%struct.nfs_dulookup*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @nfs_node_clear_busy2(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @FSDBG(i32, i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
