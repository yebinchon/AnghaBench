; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_pathconf_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_pathconf_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.nfs_fsattr = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfs_vattr = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@NFS_ATTR_BITMAP_LEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pathconf\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@NFS_FATTR_MAXLINK = common dso_local global i32 0, align 4
@NFS_FATTR_MAXNAME = common dso_local global i32 0, align 4
@NFS_FATTR_NO_TRUNC = common dso_local global i32 0, align 4
@NFS_FATTR_CHOWN_RESTRICTED = common dso_local global i32 0, align 4
@NFS_FATTR_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@NFS_FATTR_CASE_PRESERVING = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_pathconf_rpc(%struct.TYPE_12__* %0, %struct.nfs_fsattr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.nfs_fsattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsm_chain, align 4
  %15 = alloca %struct.nfsm_chain, align 4
  %16 = alloca %struct.nfsmount*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.nfs_vattr, align 4
  %20 = alloca %struct.nfsreq_secinfo_args, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.nfs_fsattr* %1, %struct.nfs_fsattr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__* %22)
  store %struct.nfsmount* %23, %struct.nfsmount** %16, align 8
  %24 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %29 = call i64 @nfs_mount_gone(%struct.nfsmount* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %153

33:                                               ; preds = %3
  %34 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %35 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %153

46:                                               ; preds = %33
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %20, %struct.TYPE_12__* %47, i32* null, i32 0, i32* null, i32 0)
  %49 = call i32 @NVATTR_INIT(%struct.nfs_vattr* %19)
  %50 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %14)
  %51 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %15)
  store i32 2, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @NFSX_UNSIGNED, align 4
  %54 = mul nsw i32 16, %53
  %55 = call i32 @nfsm_chain_build_alloc_init(i32 %52, %struct.nfsm_chain* %14, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %58 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @nfsm_chain_add_compound_header(i32 %56, %struct.nfsm_chain* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @NFS_OP_PUTFH, align 4
  %66 = call i32 @nfsm_chain_add_32(i32 %64, %struct.nfsm_chain* %14, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nfsm_chain_add_fh(i32 %67, %struct.nfsm_chain* %14, i32 %68, i32 %71, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @NFS_OP_GETATTR, align 4
  %80 = call i32 @nfsm_chain_add_32(i32 %78, %struct.nfsm_chain* %14, i32 %79)
  %81 = load i32, i32* @nfs_getattr_bitmap, align 4
  %82 = call i32 @NFS_COPY_ATTRIBUTES(i32 %81, i32* %27)
  %83 = load i32, i32* @NFS_FATTR_MAXLINK, align 4
  %84 = call i32 @NFS_BITMAP_SET(i32* %27, i32 %83)
  %85 = load i32, i32* @NFS_FATTR_MAXNAME, align 4
  %86 = call i32 @NFS_BITMAP_SET(i32* %27, i32 %85)
  %87 = load i32, i32* @NFS_FATTR_NO_TRUNC, align 4
  %88 = call i32 @NFS_BITMAP_SET(i32* %27, i32 %87)
  %89 = load i32, i32* @NFS_FATTR_CHOWN_RESTRICTED, align 4
  %90 = call i32 @NFS_BITMAP_SET(i32* %27, i32 %89)
  %91 = load i32, i32* @NFS_FATTR_CASE_INSENSITIVE, align 4
  %92 = call i32 @NFS_BITMAP_SET(i32* %27, i32 %91)
  %93 = load i32, i32* @NFS_FATTR_CASE_PRESERVING, align 4
  %94 = call i32 @NFS_BITMAP_SET(i32* %27, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = call i32 @nfsm_chain_add_bitmap_supported(i32 %95, %struct.nfsm_chain* %14, i32* %27, %struct.nfsmount* %96, %struct.TYPE_12__* %97)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @nfsm_chain_build_done(i32 %99, %struct.nfsm_chain* %14)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* @EPROTO, align 4
  %106 = call i32 @nfsm_assert(i32 %101, i32 %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @nfsmout_if(i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @nfs_request(%struct.TYPE_12__* %109, i32* null, %struct.nfsm_chain* %14, i32 %110, i32 %111, %struct.nfsreq_secinfo_args* %20, %struct.nfsm_chain* %15, i32* %8, i32* %11)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @nfsm_chain_skip_tag(i32 %113, %struct.nfsm_chain* %15)
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @nfsm_chain_get_32(i32 %115, %struct.nfsm_chain* %15, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @NFS_OP_PUTFH, align 4
  %120 = call i32 @nfsm_chain_op_check(i32 %118, %struct.nfsm_chain* %15, i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @NFS_OP_GETATTR, align 4
  %123 = call i32 @nfsm_chain_op_check(i32 %121, %struct.nfsm_chain* %15, i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @nfsmout_if(i32 %124)
  %126 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %127 = call i32 @nfs4_parsefattr(%struct.nfsm_chain* %15, %struct.nfs_fsattr* %126, %struct.nfs_vattr* %19, i32* null, i32* null, i32* null)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @nfsmout_if(i32 %128)
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = call i32 @nfs_node_lock(%struct.TYPE_12__* %130)
  store i32 %131, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %46
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %133, %46
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = call i32 @nfs_loadattrcache(%struct.TYPE_12__* %139, %struct.nfs_vattr* %19, i32* %8, i32 0)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %146 = call i32 @nfs_node_unlock(%struct.TYPE_12__* %145)
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147
  %149 = call i32 @NVATTR_CLEANUP(%struct.nfs_vattr* %19)
  %150 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %14)
  %151 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %15)
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %153

153:                                              ; preds = %148, %44, %31
  %154 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_12__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @NVATTR_INIT(%struct.nfs_vattr*) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @NFS_COPY_ATTRIBUTES(i32, i32*) #1

declare dso_local i32 @NFS_BITMAP_SET(i32*, i32) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32*, %struct.nfsmount*, %struct.TYPE_12__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request(%struct.TYPE_12__*, i32*, %struct.nfsm_chain*, i32, i32, %struct.nfsreq_secinfo_args*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfs4_parsefattr(%struct.nfsm_chain*, %struct.nfs_fsattr*, %struct.nfs_vattr*, i32*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @nfs_loadattrcache(%struct.TYPE_12__*, %struct.nfs_vattr*, i32*, i32) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @NVATTR_CLEANUP(%struct.nfs_vattr*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
