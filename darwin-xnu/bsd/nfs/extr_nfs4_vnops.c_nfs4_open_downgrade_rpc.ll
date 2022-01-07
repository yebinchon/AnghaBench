; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_open_downgrade_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_open_downgrade_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.nfs_open_file = type { i32, i32, i32, %struct.nfs_open_owner* }
%struct.nfs_open_owner = type { i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"open_downgrd\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_OPEN_DOWNGRADE = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@R_NOINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_open_downgrade_rpc(%struct.TYPE_10__* %0, %struct.nfs_open_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.nfs_open_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_open_owner*, align 8
  %9 = alloca %struct.nfsmount*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfsm_chain, align 4
  %16 = alloca %struct.nfsm_chain, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.nfs_open_file* %1, %struct.nfs_open_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.nfs_open_file*, %struct.nfs_open_file** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %19, i32 0, i32 3
  %21 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %20, align 8
  store %struct.nfs_open_owner* %21, %struct.nfs_open_owner** %8, align 8
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__* %23)
  store %struct.nfsmount* %24, %struct.nfsmount** %9, align 8
  %25 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %26 = call i64 @nfs_mount_gone(%struct.nfsmount* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %4, align 4
  br label %165

30:                                               ; preds = %3
  %31 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %8, align 8
  %35 = call i32 @nfs_open_owner_set_busy(%struct.nfs_open_owner* %34, i32* null)
  store i32 %35, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %165

39:                                               ; preds = %30
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %18, %struct.TYPE_10__* %40, i32* null, i32 0, i32* null, i32 0)
  %42 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %15)
  %43 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %16)
  store i32 3, i32* %14, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @NFSX_UNSIGNED, align 4
  %46 = mul nsw i32 23, %45
  %47 = call i32 @nfsm_chain_build_alloc_init(i32 %44, %struct.nfsm_chain* %15, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %50 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @nfsm_chain_add_compound_header(i32 %48, %struct.nfsm_chain* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @NFS_OP_PUTFH, align 4
  %58 = call i32 @nfsm_chain_add_32(i32 %56, %struct.nfsm_chain* %15, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @nfsm_chain_add_fh(i32 %59, %struct.nfsm_chain* %15, i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @NFS_OP_OPEN_DOWNGRADE, align 4
  %72 = call i32 @nfsm_chain_add_32(i32 %70, %struct.nfsm_chain* %15, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.nfs_open_file*, %struct.nfs_open_file** %6, align 8
  %75 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %74, i32 0, i32 0
  %76 = call i32 @nfsm_chain_add_stateid(i32 %73, %struct.nfsm_chain* %15, i32* %75)
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %8, align 8
  %79 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nfsm_chain_add_32(i32 %77, %struct.nfsm_chain* %15, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.nfs_open_file*, %struct.nfs_open_file** %6, align 8
  %84 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @nfsm_chain_add_32(i32 %82, %struct.nfsm_chain* %15, i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.nfs_open_file*, %struct.nfs_open_file** %6, align 8
  %89 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @nfsm_chain_add_32(i32 %87, %struct.nfsm_chain* %15, i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @NFS_OP_GETATTR, align 4
  %96 = call i32 @nfsm_chain_add_32(i32 %94, %struct.nfsm_chain* %15, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @nfs_getattr_bitmap, align 4
  %99 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = call i32 @nfsm_chain_add_bitmap_supported(i32 %97, %struct.nfsm_chain* %15, i32 %98, %struct.nfsmount* %99, %struct.TYPE_10__* %100)
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @nfsm_chain_build_done(i32 %102, %struct.nfsm_chain* %15)
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* @EPROTO, align 4
  %109 = call i32 @nfsm_assert(i32 %104, i32 %107, i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @nfsmout_if(i32 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @vfs_context_thread(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @vfs_context_ucred(i32 %116)
  %118 = load i32, i32* @R_NOINTR, align 4
  %119 = call i32 @nfs_request2(%struct.TYPE_10__* %112, i32* null, %struct.nfsm_chain* %15, i32 %113, i32 %115, i32 %117, %struct.nfsreq_secinfo_args* %18, i32 %118, %struct.nfsm_chain* %16, i32* %17, i32* %12)
  store i32 %119, i32* %10, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = call i32 @nfs_node_lock(%struct.TYPE_10__* %120)
  store i32 %121, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %39
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %123, %39
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @nfsm_chain_skip_tag(i32 %126, %struct.nfsm_chain* %16)
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @nfsm_chain_get_32(i32 %128, %struct.nfsm_chain* %16, i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @NFS_OP_PUTFH, align 4
  %133 = call i32 @nfsm_chain_op_check(i32 %131, %struct.nfsm_chain* %16, i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @nfsmout_if(i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @NFS_OP_OPEN_DOWNGRADE, align 4
  %138 = call i32 @nfsm_chain_op_check(i32 %136, %struct.nfsm_chain* %16, i32 %137)
  %139 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %8, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @nfs_owner_seqid_increment(%struct.nfs_open_owner* %139, i32* null, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.nfs_open_file*, %struct.nfs_open_file** %6, align 8
  %144 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %143, i32 0, i32 0
  %145 = call i32 @nfsm_chain_get_stateid(i32 %142, %struct.nfsm_chain* %16, i32* %144)
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @NFS_OP_GETATTR, align 4
  %148 = call i32 @nfsm_chain_op_check(i32 %146, %struct.nfsm_chain* %16, i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @nfsm_chain_loadattr(i32 %149, %struct.nfsm_chain* %16, %struct.TYPE_10__* %150, i32 %151, i32* %17)
  br label %153

153:                                              ; preds = %125
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = call i32 @nfs_node_unlock(%struct.TYPE_10__* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %8, align 8
  %161 = call i32 @nfs_open_owner_clear_busy(%struct.nfs_open_owner* %160)
  %162 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %15)
  %163 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %16)
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %159, %37, %28
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_open_owner_set_busy(%struct.nfs_open_owner*, i32*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_10__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_10__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(%struct.TYPE_10__*, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfs_owner_seqid_increment(%struct.nfs_open_owner*, i32*, i32) #1

declare dso_local i32 @nfsm_chain_get_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @nfs_open_owner_clear_busy(%struct.nfs_open_owner*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
