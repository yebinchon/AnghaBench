; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_pathconf_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_pathconf_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.nfs_fsattr = type { i32, i32, i64, i64 }
%struct.nfsm_chain = type { i32 }
%struct.nfsmount = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4
@NFSPROC_PATHCONF = common dso_local global i32 0, align 4
@NFS_FSFLAG_NO_TRUNC = common dso_local global i32 0, align 4
@NFS_FSFLAG_CHOWN_RESTRICTED = common dso_local global i32 0, align 4
@NFS_FSFLAG_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@NFS_FSFLAG_CASE_PRESERVING = common dso_local global i32 0, align 4
@NFS_FATTR_MAXLINK = common dso_local global i32 0, align 4
@NFS_FATTR_MAXNAME = common dso_local global i32 0, align 4
@NFS_FATTR_NO_TRUNC = common dso_local global i32 0, align 4
@NFS_FATTR_CHOWN_RESTRICTED = common dso_local global i32 0, align 4
@NFS_FATTR_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@NFS_FATTR_CASE_PRESERVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_pathconf_rpc(%struct.TYPE_8__* %0, %struct.nfs_fsattr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.nfs_fsattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfsm_chain, align 4
  %14 = alloca %struct.nfsm_chain, align 4
  %15 = alloca %struct.nfsmount*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.nfs_fsattr* %1, %struct.nfs_fsattr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_8__* %17)
  store %struct.nfsmount* %18, %struct.nfsmount** %15, align 8
  store i64 0, i64* %16, align 8
  %19 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %20 = call i64 @nfs_mount_gone(%struct.nfsmount* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %4, align 4
  br label %175

24:                                               ; preds = %3
  %25 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %26 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %13)
  %29 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %14)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @NFS_VER3, align 4
  %32 = call i32 @NFSX_FH(i32 %31)
  %33 = call i32 @nfsm_chain_build_alloc_init(i32 %30, %struct.nfsm_chain* %13, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nfsm_chain_add_fh(i32 %34, %struct.nfsm_chain* %13, i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @nfsm_chain_build_done(i32 %43, %struct.nfsm_chain* %13)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @nfsmout_if(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = load i32, i32* @NFSPROC_PATHCONF, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @nfs_request(%struct.TYPE_8__* %47, i32* null, %struct.nfsm_chain* %13, i32 %48, i32 %49, i32* null, %struct.nfsm_chain* %14, i32* %8, i32* %11)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = call i32 @nfs_node_lock(%struct.TYPE_8__* %51)
  store i32 %52, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %24
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %24
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = call i32 @nfsm_chain_postop_attr_update(i32 %57, %struct.nfsm_chain* %14, %struct.TYPE_8__* %58, i32* %8)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = call i32 @nfs_node_unlock(%struct.TYPE_8__* %63)
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %73 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @nfsm_chain_get_32(i32 %71, %struct.nfsm_chain* %14, i64 %74)
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %78 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @nfsm_chain_get_32(i32 %76, %struct.nfsm_chain* %14, i64 %79)
  %81 = load i32, i32* @NFS_FSFLAG_NO_TRUNC, align 4
  %82 = load i32, i32* @NFS_FSFLAG_CHOWN_RESTRICTED, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @NFS_FSFLAG_CASE_INSENSITIVE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @NFS_FSFLAG_CASE_PRESERVING, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %90 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i64, i64* %16, align 8
  %95 = call i32 @nfsm_chain_get_32(i32 %93, %struct.nfsm_chain* %14, i64 %94)
  %96 = load i64, i64* %16, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %70
  %99 = load i32, i32* @NFS_FSFLAG_NO_TRUNC, align 4
  %100 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %101 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %70
  %105 = load i32, i32* %9, align 4
  %106 = load i64, i64* %16, align 8
  %107 = call i32 @nfsm_chain_get_32(i32 %105, %struct.nfsm_chain* %14, i64 %106)
  %108 = load i64, i64* %16, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32, i32* @NFS_FSFLAG_CHOWN_RESTRICTED, align 4
  %112 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %113 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %104
  %117 = load i32, i32* %9, align 4
  %118 = load i64, i64* %16, align 8
  %119 = call i32 @nfsm_chain_get_32(i32 %117, %struct.nfsm_chain* %14, i64 %118)
  %120 = load i64, i64* %16, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i32, i32* @NFS_FSFLAG_CASE_INSENSITIVE, align 4
  %124 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %125 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %116
  %129 = load i32, i32* %9, align 4
  %130 = load i64, i64* %16, align 8
  %131 = call i32 @nfsm_chain_get_32(i32 %129, %struct.nfsm_chain* %14, i64 %130)
  %132 = load i64, i64* %16, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load i32, i32* @NFS_FSFLAG_CASE_PRESERVING, align 4
  %136 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %137 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %128
  %141 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %142 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NFS_FATTR_MAXLINK, align 4
  %145 = call i32 @NFS_BITMAP_SET(i32 %143, i32 %144)
  %146 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %147 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @NFS_FATTR_MAXNAME, align 4
  %150 = call i32 @NFS_BITMAP_SET(i32 %148, i32 %149)
  %151 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %152 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @NFS_FATTR_NO_TRUNC, align 4
  %155 = call i32 @NFS_BITMAP_SET(i32 %153, i32 %154)
  %156 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %157 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @NFS_FATTR_CHOWN_RESTRICTED, align 4
  %160 = call i32 @NFS_BITMAP_SET(i32 %158, i32 %159)
  %161 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %162 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NFS_FATTR_CASE_INSENSITIVE, align 4
  %165 = call i32 @NFS_BITMAP_SET(i32 %163, i32 %164)
  %166 = load %struct.nfs_fsattr*, %struct.nfs_fsattr** %6, align 8
  %167 = getelementptr inbounds %struct.nfs_fsattr, %struct.nfs_fsattr* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @NFS_FATTR_CASE_PRESERVING, align 4
  %170 = call i32 @NFS_BITMAP_SET(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %140
  %172 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %13)
  %173 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %14)
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %171, %22
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_8__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @NFSX_FH(i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request(%struct.TYPE_8__*, i32*, %struct.nfsm_chain*, i32, i32, i32*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @nfsm_chain_postop_attr_update(i32, %struct.nfsm_chain*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @NFS_BITMAP_SET(i32, i32) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
