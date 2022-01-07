; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_commit_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_commit_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.nfsmount = type { i32, i32, i64, i32 }
%struct.timespec = type { i32, i32 }
%struct.nfsm_chain = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFSSTA_HASWRITEVERF = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@NFS_VER3 = common dso_local global i32 0, align 4
@NFSPROC_COMMIT = common dso_local global i32 0, align 4
@NFSERR_STALEWRITEVERF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_commit_rpc(%struct.TYPE_9__* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfsmount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timespec, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.nfsm_chain, align 4
  %23 = alloca %struct.nfsm_chain, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %24 = bitcast %struct.timespec* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__* %25)
  store %struct.nfsmount* %26, %struct.nfsmount** %12, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %31 = icmp ne %struct.nfsmount* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %34 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  br label %37

36:                                               ; preds = %5
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  %39 = call i32 @FSDBG(i32 521, %struct.TYPE_9__* %27, i64 %28, i64 %29, i32 %38)
  %40 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %41 = call i64 @nfs_mount_gone(%struct.nfsmount* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %6, align 4
  br label %145

45:                                               ; preds = %37
  %46 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %47 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NFSSTA_HASWRITEVERF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %145

53:                                               ; preds = %45
  %54 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %55 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %17, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @UINT32_MAX, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i64 0, i64* %21, align 8
  br label %63

61:                                               ; preds = %53
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %21, align 8
  br label %63

63:                                               ; preds = %61, %60
  %64 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %22)
  %65 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %23)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @NFS_VER3, align 4
  %68 = call i32 @NFSX_FH(i32 %67)
  %69 = call i32 @nfsm_chain_build_alloc_init(i32 %66, %struct.nfsm_chain* %22, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nfsm_chain_add_fh(i32 %70, %struct.nfsm_chain* %22, i32 %71, i32 %74, i32 %77)
  %79 = load i32, i32* %13, align 4
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @nfsm_chain_add_64(i32 %79, %struct.nfsm_chain* %22, i64 %80)
  %82 = load i32, i32* %13, align 4
  %83 = load i64, i64* %21, align 8
  %84 = call i32 @nfsm_chain_add_32(i32 %82, %struct.nfsm_chain* %22, i64 %83)
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @nfsm_chain_build_done(i32 %85, %struct.nfsm_chain* %22)
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @nfsmout_if(i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = load i32, i32* @NFSPROC_COMMIT, align 4
  %91 = call i32 (...) @current_thread()
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @nfs_request2(%struct.TYPE_9__* %89, i32* null, %struct.nfsm_chain* %22, i32 %90, i32 %91, i32 %92, i32* null, i32 0, %struct.nfsm_chain* %23, i64* %19, i32* %15)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = call i32 @nfs_node_lock(%struct.TYPE_9__* %94)
  store i32 %95, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %63
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %97, %63
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = call i32 @nfsm_chain_get_wcc_data(i32 %100, %struct.nfsm_chain* %23, %struct.TYPE_9__* %101, %struct.timespec* %18, i32* %16, i64* %19)
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = call i32 @nfs_node_unlock(%struct.TYPE_9__* %106)
  br label %108

108:                                              ; preds = %105, %99
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i32, i32* %13, align 4
  %115 = load i64, i64* %20, align 8
  %116 = call i32 @nfsm_chain_get_64(i32 %114, %struct.nfsm_chain* %23, i64 %115)
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @nfsmout_if(i32 %117)
  %119 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %120 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %119, i32 0, i32 3
  %121 = call i32 @lck_mtx_lock(i32* %120)
  %122 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %123 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %20, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %113
  %128 = load i64, i64* %20, align 8
  %129 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %130 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %127, %113
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %20, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @NFSERR_STALEWRITEVERF, align 4
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %135, %131
  %138 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %139 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %138, i32 0, i32 3
  %140 = call i32 @lck_mtx_unlock(i32* %139)
  br label %141

141:                                              ; preds = %137
  %142 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %22)
  %143 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %23)
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %141, %52, %43
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__*) #2

declare dso_local i32 @FSDBG(i32, %struct.TYPE_9__*, i64, i64, i32) #2

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #2

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #2

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @NFSX_FH(i32) #2

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #2

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i64) #2

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i64) #2

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #2

declare dso_local i32 @nfsmout_if(i32) #2

declare dso_local i32 @nfs_request2(%struct.TYPE_9__*, i32*, %struct.nfsm_chain*, i32, i32, i32, i32*, i32, %struct.nfsm_chain*, i64*, i32*) #2

declare dso_local i32 @current_thread(...) #2

declare dso_local i32 @nfs_node_lock(%struct.TYPE_9__*) #2

declare dso_local i32 @nfsm_chain_get_wcc_data(i32, %struct.nfsm_chain*, %struct.TYPE_9__*, %struct.timespec*, i32*, i64*) #2

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_9__*) #2

declare dso_local i32 @nfsm_chain_get_64(i32, %struct.nfsm_chain*, i64) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
