; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_close_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_close_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.nfs_open_file = type { i32, %struct.nfs_open_owner* }
%struct.nfs_open_owner = type { i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"close\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_CLOSE = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@R_NOINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_close_rpc(%struct.TYPE_10__* %0, %struct.nfs_open_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.nfs_open_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_open_owner*, align 8
  %13 = alloca %struct.nfsmount*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nfsm_chain, align 4
  %20 = alloca %struct.nfsm_chain, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.nfs_open_file* %1, %struct.nfs_open_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %24 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %23, i32 0, i32 1
  %25 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %24, align 8
  store %struct.nfs_open_owner* %25, %struct.nfs_open_owner** %12, align 8
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__* %27)
  store %struct.nfsmount* %28, %struct.nfsmount** %13, align 8
  %29 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %30 = call i64 @nfs_mount_gone(%struct.nfsmount* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %6, align 4
  br label %159

34:                                               ; preds = %5
  %35 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %36 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %17, align 4
  %38 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %39 = call i32 @nfs_open_owner_set_busy(%struct.nfs_open_owner* %38, i32* null)
  store i32 %39, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %159

43:                                               ; preds = %34
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %22, %struct.TYPE_10__* %44, i32* null, i32 0, i32* null, i32 0)
  %46 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %19)
  %47 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %20)
  store i32 3, i32* %18, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @NFSX_UNSIGNED, align 4
  %50 = mul nsw i32 23, %49
  %51 = call i32 @nfsm_chain_build_alloc_init(i32 %48, %struct.nfsm_chain* %19, i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %54 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @nfsm_chain_add_compound_header(i32 %52, %struct.nfsm_chain* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @NFS_OP_PUTFH, align 4
  %62 = call i32 @nfsm_chain_add_32(i32 %60, %struct.nfsm_chain* %19, i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @nfsm_chain_add_fh(i32 %63, %struct.nfsm_chain* %19, i32 %64, i32 %67, i32 %70)
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @NFS_OP_CLOSE, align 4
  %76 = call i32 @nfsm_chain_add_32(i32 %74, %struct.nfsm_chain* %19, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %79 = getelementptr inbounds %struct.nfs_open_owner, %struct.nfs_open_owner* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nfsm_chain_add_32(i32 %77, %struct.nfsm_chain* %19, i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %84 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %83, i32 0, i32 0
  %85 = call i32 @nfsm_chain_add_stateid(i32 %82, %struct.nfsm_chain* %19, i32* %84)
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @NFS_OP_GETATTR, align 4
  %90 = call i32 @nfsm_chain_add_32(i32 %88, %struct.nfsm_chain* %19, i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @nfs_getattr_bitmap, align 4
  %93 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = call i32 @nfsm_chain_add_bitmap_supported(i32 %91, %struct.nfsm_chain* %19, i32 %92, %struct.nfsmount* %93, %struct.TYPE_10__* %94)
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @nfsm_chain_build_done(i32 %96, %struct.nfsm_chain* %19)
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* @EPROTO, align 4
  %103 = call i32 @nfsm_assert(i32 %98, i32 %101, i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @nfsmout_if(i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @R_NOINTR, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @nfs_request2(%struct.TYPE_10__* %106, i32* null, %struct.nfsm_chain* %19, i32 %107, i32 %108, i32 %109, %struct.nfsreq_secinfo_args* %22, i32 %112, %struct.nfsm_chain* %20, i32* %21, i32* %16)
  store i32 %113, i32* %14, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = call i32 @nfs_node_lock(%struct.TYPE_10__* %114)
  store i32 %115, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %43
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %117, %43
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @nfsm_chain_skip_tag(i32 %120, %struct.nfsm_chain* %20)
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @nfsm_chain_get_32(i32 %122, %struct.nfsm_chain* %20, i32 %123)
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @NFS_OP_PUTFH, align 4
  %127 = call i32 @nfsm_chain_op_check(i32 %125, %struct.nfsm_chain* %20, i32 %126)
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @nfsmout_if(i32 %128)
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @NFS_OP_CLOSE, align 4
  %132 = call i32 @nfsm_chain_op_check(i32 %130, %struct.nfsm_chain* %20, i32 %131)
  %133 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @nfs_owner_seqid_increment(%struct.nfs_open_owner* %133, i32* null, i32 %134)
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %138 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %137, i32 0, i32 0
  %139 = call i32 @nfsm_chain_get_stateid(i32 %136, %struct.nfsm_chain* %20, i32* %138)
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @NFS_OP_GETATTR, align 4
  %142 = call i32 @nfsm_chain_op_check(i32 %140, %struct.nfsm_chain* %20, i32 %141)
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @nfsm_chain_loadattr(i32 %143, %struct.nfsm_chain* %20, %struct.TYPE_10__* %144, i32 %145, i32* %21)
  br label %147

147:                                              ; preds = %119
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = call i32 @nfs_node_unlock(%struct.TYPE_10__* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %12, align 8
  %155 = call i32 @nfs_open_owner_clear_busy(%struct.nfs_open_owner* %154)
  %156 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %19)
  %157 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %20)
  %158 = load i32, i32* %14, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %153, %41, %32
  %160 = load i32, i32* %6, align 4
  ret i32 %160
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
