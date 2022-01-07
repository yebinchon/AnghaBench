; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_remove_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_remove_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.nfsmount = type { i32, i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_REMOVE = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@NFSERR_GRACE = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"nfsgrace\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_remove_rpc(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfsmount*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nfsm_chain, align 4
  %21 = alloca %struct.nfsm_chain, align 4
  %22 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_14__* %24)
  store %struct.nfsmount* %25, %struct.nfsmount** %16, align 8
  %26 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %27 = call i64 @nfs_mount_gone(%struct.nfsmount* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %6, align 4
  br label %175

31:                                               ; preds = %5
  %32 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %33 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %6, align 4
  br label %175

44:                                               ; preds = %31
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %22, %struct.TYPE_14__* %45, i32* null, i32 0, i32* null, i32 0)
  br label %47

47:                                               ; preds = %165, %44
  %48 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %20)
  %49 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %21)
  store i32 3, i32* %18, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @NFSX_UNSIGNED, align 4
  %52 = mul nsw i32 17, %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @nfsm_chain_build_alloc_init(i32 %50, %struct.nfsm_chain* %20, i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %58 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @nfsm_chain_add_compound_header(i32 %56, %struct.nfsm_chain* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @NFS_OP_PUTFH, align 4
  %66 = call i32 @nfsm_chain_add_32(i32 %64, %struct.nfsm_chain* %20, i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nfsm_chain_add_fh(i32 %67, %struct.nfsm_chain* %20, i32 %68, i32 %71, i32 %74)
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @NFS_OP_REMOVE, align 4
  %80 = call i32 @nfsm_chain_add_32(i32 %78, %struct.nfsm_chain* %20, i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %85 = call i32 @nfsm_chain_add_name(i32 %81, %struct.nfsm_chain* %20, i8* %82, i32 %83, %struct.nfsmount* %84)
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @NFS_OP_GETATTR, align 4
  %90 = call i32 @nfsm_chain_add_32(i32 %88, %struct.nfsm_chain* %20, i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @nfs_getattr_bitmap, align 4
  %93 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = call i32 @nfsm_chain_add_bitmap_supported(i32 %91, %struct.nfsm_chain* %20, i32 %92, %struct.nfsmount* %93, %struct.TYPE_14__* %94)
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @nfsm_chain_build_done(i32 %96, %struct.nfsm_chain* %20)
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* @EPROTO, align 4
  %103 = call i32 @nfsm_assert(i32 %98, i32 %101, i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @nfsmout_if(i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @nfs_request2(%struct.TYPE_14__* %106, i32* null, %struct.nfsm_chain* %20, i32 %107, i32 %108, i32 %109, %struct.nfsreq_secinfo_args* %22, i32 0, %struct.nfsm_chain* %21, i32* %19, i32* %15)
  store i32 %110, i32* %12, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %112 = call i32 @nfs_node_lock(%struct.TYPE_14__* %111)
  store i32 %112, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %47
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %114, %47
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @nfsm_chain_skip_tag(i32 %117, %struct.nfsm_chain* %21)
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @nfsm_chain_get_32(i32 %119, %struct.nfsm_chain* %21, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @NFS_OP_PUTFH, align 4
  %124 = call i32 @nfsm_chain_op_check(i32 %122, %struct.nfsm_chain* %21, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @NFS_OP_REMOVE, align 4
  %127 = call i32 @nfsm_chain_op_check(i32 %125, %struct.nfsm_chain* %21, i32 %126)
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %131 = call i32 @nfsm_chain_check_change_info(i32 %129, %struct.nfsm_chain* %21, %struct.TYPE_14__* %130)
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @NFS_OP_GETATTR, align 4
  %134 = call i32 @nfsm_chain_op_check(i32 %132, %struct.nfsm_chain* %21, i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @nfsm_chain_loadattr(i32 %135, %struct.nfsm_chain* %21, %struct.TYPE_14__* %136, i32 %137, i32* %19)
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %116
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %146 = call i32 @NATTRINVALIDATE(%struct.TYPE_14__* %145)
  br label %147

147:                                              ; preds = %144, %141, %116
  br label %148

148:                                              ; preds = %147
  %149 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %20)
  %150 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %21)
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @NMODIFIED, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %160 = call i32 @nfs_node_unlock(%struct.TYPE_14__* %159)
  br label %161

161:                                              ; preds = %153, %148
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @NFSERR_GRACE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load %struct.nfsmount*, %struct.nfsmount** %16, align 8
  %167 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %166, i32 0, i32 1
  %168 = load i64, i64* @PZERO, align 8
  %169 = sub nsw i64 %168, 1
  %170 = load i32, i32* @hz, align 4
  %171 = mul nsw i32 2, %170
  %172 = call i32 @tsleep(i32* %167, i64 %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  br label %47

173:                                              ; preds = %161
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %173, %42, %29
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_14__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_14__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_name(i32, %struct.nfsm_chain*, i8*, i32, %struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_14__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(%struct.TYPE_14__*, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_14__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_check_change_info(i32, %struct.nfsm_chain*, %struct.TYPE_14__*) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @NATTRINVALIDATE(%struct.TYPE_14__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_14__*) #1

declare dso_local i32 @tsleep(i32*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
