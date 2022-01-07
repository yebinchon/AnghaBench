; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_write_rpc_async.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_write_rpc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.nfsreq_cbinfo = type { i32 }
%struct.nfsreq = type { i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFS_WRITE_UNSTABLE = common dso_local global i32 0, align 4
@nfs_allow_async = common dso_local global i64 0, align 8
@MNT_ASYNC = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@NFS_OP_PUTFH = common dso_local global i64 0, align 8
@NFS_OP_WRITE = common dso_local global i64 0, align 8
@NFS_OP_GETATTR = common dso_local global i64 0, align 8
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_write_rpc_async(%struct.TYPE_11__* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, %struct.nfsreq_cbinfo* %6, %struct.nfsreq** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfsreq_cbinfo*, align 8
  %17 = alloca %struct.nfsreq**, align 8
  %18 = alloca %struct.nfsmount*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.nfsm_chain, align 4
  %25 = alloca %struct.nfsreq_secinfo_args, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.nfsreq_cbinfo* %6, %struct.nfsreq_cbinfo** %16, align 8
  store %struct.nfsreq** %7, %struct.nfsreq*** %17, align 8
  store i32 0, i32* %20, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__* %26)
  store %struct.nfsmount* %27, %struct.nfsmount** %18, align 8
  %28 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %29 = call i64 @nfs_mount_gone(%struct.nfsmount* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %9, align 4
  br label %156

33:                                               ; preds = %8
  %34 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %35 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %21, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %9, align 4
  br label %156

46:                                               ; preds = %33
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @NFS_WRITE_UNSTABLE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i64, i64* @nfs_allow_async, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = call i32 @NFSTOMP(%struct.TYPE_11__* %54)
  store i32 %55, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @vfs_flags(i32 %58)
  %60 = load i32, i32* @MNT_ASYNC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @NFS_WRITE_UNSTABLE, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %63, %57, %53, %50, %46
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %25, %struct.TYPE_11__* %66, i32* null, i32 0, i32* null, i32 0)
  %68 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %24)
  store i32 3, i32* %22, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* @NFSX_UNSIGNED, align 4
  %71 = mul nsw i32 25, %70
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @nfsm_chain_build_alloc_init(i32 %69, %struct.nfsm_chain* %24, i32 %75)
  %77 = load i32, i32* %20, align 4
  %78 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %79 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %22, align 4
  %82 = call i32 @nfsm_chain_add_compound_header(i32 %77, %struct.nfsm_chain* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %22, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i64, i64* @NFS_OP_PUTFH, align 8
  %87 = call i32 @nfsm_chain_add_32(i32 %85, %struct.nfsm_chain* %24, i64 %86)
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nfsm_chain_add_fh(i32 %88, %struct.nfsm_chain* %24, i32 %89, i32 %92, i32 %95)
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %22, align 4
  %99 = load i32, i32* %20, align 4
  %100 = load i64, i64* @NFS_OP_WRITE, align 8
  %101 = call i32 @nfsm_chain_add_32(i32 %99, %struct.nfsm_chain* %24, i64 %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @nfs_get_stateid(%struct.TYPE_11__* %102, i32 %103, i32 %104, i32* %23)
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @nfsm_chain_add_stateid(i32 %106, %struct.nfsm_chain* %24, i32* %23)
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @uio_offset(i32 %109)
  %111 = call i32 @nfsm_chain_add_64(i32 %108, %struct.nfsm_chain* %24, i32 %110)
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = call i32 @nfsm_chain_add_32(i32 %112, %struct.nfsm_chain* %24, i64 %114)
  %116 = load i32, i32* %20, align 4
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @nfsm_chain_add_32(i32 %116, %struct.nfsm_chain* %24, i64 %117)
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %65
  %122 = load i32, i32* %11, align 4
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @nfsm_chain_add_uio(%struct.nfsm_chain* %24, i32 %122, i64 %123)
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %121, %65
  %126 = load i32, i32* %22, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %22, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i64, i64* @NFS_OP_GETATTR, align 8
  %130 = call i32 @nfsm_chain_add_32(i32 %128, %struct.nfsm_chain* %24, i64 %129)
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* @nfs_getattr_bitmap, align 4
  %133 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = call i32 @nfsm_chain_add_bitmap_supported(i32 %131, %struct.nfsm_chain* %24, i32 %132, %struct.nfsmount* %133, %struct.TYPE_11__* %134)
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @nfsm_chain_build_done(i32 %136, %struct.nfsm_chain* %24)
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %22, align 4
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* @EPROTO, align 4
  %143 = call i32 @nfsm_assert(i32 %138, i32 %141, i32 %142)
  %144 = load i32, i32* %20, align 4
  %145 = call i32 @nfsmout_if(i32 %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.nfsreq_cbinfo*, %struct.nfsreq_cbinfo** %16, align 8
  %151 = load %struct.nfsreq**, %struct.nfsreq*** %17, align 8
  %152 = call i32 @nfs_request_async(%struct.TYPE_11__* %146, i32* null, %struct.nfsm_chain* %24, i32 %147, i32 %148, i32 %149, %struct.nfsreq_secinfo_args* %25, i32 0, %struct.nfsreq_cbinfo* %150, %struct.nfsreq** %151)
  store i32 %152, i32* %20, align 4
  br label %153

153:                                              ; preds = %125
  %154 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %24)
  %155 = load i32, i32* %20, align 4
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %153, %44, %31
  %157 = load i32, i32* %9, align 4
  ret i32 %157
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @NFSTOMP(%struct.TYPE_11__*) #1

declare dso_local i32 @vfs_flags(i32) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_11__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfs_get_stateid(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @nfsm_chain_add_stateid(i32, %struct.nfsm_chain*, i32*) #1

declare dso_local i32 @nfsm_chain_add_64(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @uio_offset(i32) #1

declare dso_local i32 @nfsm_chain_add_uio(%struct.nfsm_chain*, i32, i64) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32, %struct.nfsmount*, %struct.TYPE_11__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request_async(%struct.TYPE_11__*, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, %struct.nfsreq_cbinfo*, %struct.nfsreq**) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
