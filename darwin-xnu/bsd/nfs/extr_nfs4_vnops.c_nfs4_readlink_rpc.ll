; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_readlink_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_readlink_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.nfsmount = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@NFS_OP_READLINK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_readlink_rpc(%struct.TYPE_12__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nfsm_chain, align 4
  %18 = alloca %struct.nfsm_chain, align 4
  %19 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* @ENOENT, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__* %21)
  store %struct.nfsmount* %22, %struct.nfsmount** %10, align 8
  %23 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %24 = call i64 @nfs_mount_gone(%struct.nfsmount* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %5, align 4
  br label %171

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %171

38:                                               ; preds = %28
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %19, %struct.TYPE_12__* %39, i32* null, i32 0, i32* null, i32 0)
  %41 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %17)
  %42 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %18)
  store i32 3, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @NFSX_UNSIGNED, align 4
  %45 = mul nsw i32 16, %44
  %46 = call i32 @nfsm_chain_build_alloc_init(i32 %43, %struct.nfsm_chain* %17, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %49 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @nfsm_chain_add_compound_header(i32 %47, %struct.nfsm_chain* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @NFS_OP_PUTFH, align 4
  %57 = call i32 @nfsm_chain_add_32(i32 %55, %struct.nfsm_chain* %17, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @NFS_VER4, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nfsm_chain_add_fh(i32 %58, %struct.nfsm_chain* %17, i32 %59, i32 %62, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @NFS_OP_GETATTR, align 4
  %71 = call i32 @nfsm_chain_add_32(i32 %69, %struct.nfsm_chain* %17, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @nfs_getattr_bitmap, align 4
  %74 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = call i32 @nfsm_chain_add_bitmap_supported(i32 %72, %struct.nfsm_chain* %17, i32 %73, %struct.nfsmount* %74, %struct.TYPE_12__* %75)
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @NFS_OP_READLINK, align 4
  %81 = call i32 @nfsm_chain_add_32(i32 %79, %struct.nfsm_chain* %17, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @nfsm_chain_build_done(i32 %82, %struct.nfsm_chain* %17)
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* @EPROTO, align 4
  %89 = call i32 @nfsm_assert(i32 %84, i32 %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @nfsmout_if(i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @nfs_request(%struct.TYPE_12__* %92, i32* null, %struct.nfsm_chain* %17, i32 %93, i32 %94, %struct.nfsreq_secinfo_args* %19, %struct.nfsm_chain* %18, i32* %16, i32* %13)
  store i32 %95, i32* %11, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = call i32 @nfs_node_lock(%struct.TYPE_12__* %96)
  store i32 %97, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %38
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %38
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @nfsm_chain_skip_tag(i32 %102, %struct.nfsm_chain* %18)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @nfsm_chain_get_32(i32 %104, %struct.nfsm_chain* %18, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @NFS_OP_PUTFH, align 4
  %109 = call i32 @nfsm_chain_op_check(i32 %107, %struct.nfsm_chain* %18, i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @NFS_OP_GETATTR, align 4
  %112 = call i32 @nfsm_chain_op_check(i32 %110, %struct.nfsm_chain* %18, i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %115 = load i32, i32* @NFS_VER4, align 4
  %116 = call i32 @nfsm_chain_loadattr(i32 %113, %struct.nfsm_chain* %18, %struct.TYPE_12__* %114, i32 %115, i32* %16)
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @NFS_OP_READLINK, align 4
  %119 = call i32 @nfsm_chain_op_check(i32 %117, %struct.nfsm_chain* %18, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @nfsm_chain_get_32(i32 %120, %struct.nfsm_chain* %18, i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @nfsmout_if(i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %125, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %101
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %15, align 4
  br label %149

145:                                              ; preds = %134, %129
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %101
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @nfsm_chain_get_opaque(i32 %151, %struct.nfsm_chain* %18, i32 %152, i8* %153)
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %15, align 4
  %159 = load i32*, i32** %8, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %150
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %166 = call i32 @nfs_node_unlock(%struct.TYPE_12__* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %17)
  %169 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %18)
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %167, %36, %26
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_12__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_12__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_12__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request(%struct.TYPE_12__*, i32*, %struct.nfsm_chain*, i32, i32, %struct.nfsreq_secinfo_args*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @nfsm_chain_get_opaque(i32, %struct.nfsm_chain*, i32, i8*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
