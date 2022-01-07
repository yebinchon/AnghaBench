; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs4_update_statfs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs4_update_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfs_vattr = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@NFS_ATTR_BITMAP_LEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"statfs\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@R_SOFT = common dso_local global i32 0, align 4
@NFS_FABLKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_update_statfs(%struct.nfsmount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfsm_chain, align 4
  %14 = alloca %struct.nfsm_chain, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nfs_vattr, align 4
  %18 = alloca %struct.nfsreq_secinfo_args, align 4
  %19 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %25 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %28 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %27, i32 0, i32 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %6, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %167

34:                                               ; preds = %2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = call i32 @NFSTOV(%struct.TYPE_11__* %35)
  %37 = call i32 @vnode_get(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %167

41:                                               ; preds = %34
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %18, %struct.TYPE_11__* %42, i32* null, i32 0, i32* null, i32 0)
  %44 = call i32 @NVATTR_INIT(%struct.nfs_vattr* %17)
  %45 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %13)
  %46 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %14)
  store i32 2, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @NFSX_UNSIGNED, align 4
  %49 = mul nsw i32 15, %48
  %50 = call i32 @nfsm_chain_build_alloc_init(i32 %47, %struct.nfsm_chain* %13, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @nfsm_chain_add_compound_header(i32 %51, %struct.nfsm_chain* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NFS_OP_PUTFH, align 4
  %61 = call i32 @nfsm_chain_add_32(i32 %59, %struct.nfsm_chain* %13, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nfsm_chain_add_fh(i32 %62, %struct.nfsm_chain* %13, i32 %63, i32 %66, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @NFS_OP_GETATTR, align 4
  %75 = call i32 @nfsm_chain_add_32(i32 %73, %struct.nfsm_chain* %13, i32 %74)
  %76 = load i32, i32* @nfs_getattr_bitmap, align 4
  %77 = call i32 @NFS_COPY_ATTRIBUTES(i32 %76, i32* %23)
  %78 = call i32 @NFS4_STATFS_ATTRIBUTES(i32* %23)
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = call i32 @nfsm_chain_add_bitmap_supported(i32 %79, %struct.nfsm_chain* %13, i32* %23, %struct.nfsmount* %80, %struct.TYPE_11__* %81)
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @nfsm_chain_build_done(i32 %83, %struct.nfsm_chain* %13)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* @EPROTO, align 4
  %90 = call i32 @nfsm_assert(i32 %85, i32 %88, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @nfsmout_if(i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @vfs_context_thread(i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @vfs_context_ucred(i32 %97)
  %99 = load i32, i32* @R_SOFT, align 4
  %100 = call i32 @nfs_request2(%struct.TYPE_11__* %93, i32* null, %struct.nfsm_chain* %13, i32 %94, i32 %96, i32 %98, i32* null, i32 %99, %struct.nfsm_chain* %14, i32* %12, i32* %9)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @nfsm_chain_skip_tag(i32 %101, %struct.nfsm_chain* %14)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @nfsm_chain_get_32(i32 %103, %struct.nfsm_chain* %14, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @NFS_OP_PUTFH, align 4
  %108 = call i32 @nfsm_chain_op_check(i32 %106, %struct.nfsm_chain* %14, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @NFS_OP_GETATTR, align 4
  %111 = call i32 @nfsm_chain_op_check(i32 %109, %struct.nfsm_chain* %14, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = call i32 @NFSTONMP(%struct.TYPE_11__* %113)
  %115 = load i32, i32* @ENXIO, align 4
  %116 = call i32 @nfsm_assert(i32 %112, i32 %114, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @nfsmout_if(i32 %117)
  %119 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %120 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %119, i32 0, i32 2
  %121 = call i32 @lck_mtx_lock(i32* %120)
  %122 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %123 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %122, i32 0, i32 1
  %124 = call i32 @nfs4_parsefattr(%struct.nfsm_chain* %14, %struct.TYPE_12__* %123, %struct.nfs_vattr* %17, i32* null, i32* null, i32* null)
  store i32 %124, i32* %7, align 4
  %125 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %126 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %125, i32 0, i32 2
  %127 = call i32 @lck_mtx_unlock(i32* %126)
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @nfsmout_if(i32 %128)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = call i32 @nfs_node_lock(%struct.TYPE_11__* %130)
  store i32 %131, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %41
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %41
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = call i32 @nfs_loadattrcache(%struct.TYPE_11__* %139, %struct.nfs_vattr* %17, i32* %12, i32 0)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = call i32 @nfs_node_unlock(%struct.TYPE_11__* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %150 = call i32 @NFSTONMP(%struct.TYPE_11__* %149)
  %151 = load i32, i32* @ENXIO, align 4
  %152 = call i32 @nfsm_assert(i32 %148, i32 %150, i32 %151)
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @nfsmout_if(i32 %153)
  %155 = load i32, i32* @NFS_FABLKSIZE, align 4
  %156 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %157 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 4
  br label %159

159:                                              ; preds = %147
  %160 = call i32 @NVATTR_CLEANUP(%struct.nfs_vattr* %17)
  %161 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %13)
  %162 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %14)
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = call i32 @NFSTOV(%struct.TYPE_11__* %163)
  %165 = call i32 @vnode_put(i32 %164)
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %167

167:                                              ; preds = %159, %39, %32
  %168 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vnode_get(i32) #2

declare dso_local i32 @NFSTOV(%struct.TYPE_11__*) #2

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_11__*, i32*, i32, i32*, i32) #2

declare dso_local i32 @NVATTR_INIT(%struct.nfs_vattr*) #2

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #2

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #2

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #2

declare dso_local i32 @NFS_COPY_ATTRIBUTES(i32, i32*) #2

declare dso_local i32 @NFS4_STATFS_ATTRIBUTES(i32*) #2

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32*, %struct.nfsmount*, %struct.TYPE_11__*) #2

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #2

declare dso_local i32 @nfsm_assert(i32, i32, i32) #2

declare dso_local i32 @nfsmout_if(i32) #2

declare dso_local i32 @nfs_request2(%struct.TYPE_11__*, i32*, %struct.nfsm_chain*, i32, i32, i32, i32*, i32, %struct.nfsm_chain*, i32*, i32*) #2

declare dso_local i32 @vfs_context_thread(i32) #2

declare dso_local i32 @vfs_context_ucred(i32) #2

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #2

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @NFSTONMP(%struct.TYPE_11__*) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @nfs4_parsefattr(%struct.nfsm_chain*, %struct.TYPE_12__*, %struct.nfs_vattr*, i32*, i32*, i32*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

declare dso_local i32 @nfs_node_lock(%struct.TYPE_11__*) #2

declare dso_local i32 @nfs_loadattrcache(%struct.TYPE_11__*, %struct.nfs_vattr*, i32*, i32) #2

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_11__*) #2

declare dso_local i32 @NVATTR_CLEANUP(%struct.nfs_vattr*) #2

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #2

declare dso_local i32 @vnode_put(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
