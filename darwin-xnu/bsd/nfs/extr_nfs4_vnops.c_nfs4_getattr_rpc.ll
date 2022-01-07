; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_getattr_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_getattr_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.nfs_vattr = type { i32*, i32* }
%struct.nfsmount = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@NFS_ATTR_BITMAP_LEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FSFLAG_ACL = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@NGA_MONITOR = common dso_local global i32 0, align 4
@R_RECOVER = common dso_local global i32 0, align 4
@NGA_SOFT = common dso_local global i32 0, align 4
@R_SOFT = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"getattr\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32 0, align 4
@NGA_ACL = common dso_local global i32 0, align 4
@NFS_FATTR_ACL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_getattr_rpc(%struct.TYPE_11__* %0, i64 %1, i32* %2, i64 %3, i32 %4, i32 %5, %struct.nfs_vattr* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfs_vattr*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.nfsmount*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.nfsm_chain, align 4
  %28 = alloca %struct.nfsm_chain, align 4
  %29 = alloca %struct.nfsreq_secinfo_args, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.nfs_vattr* %6, %struct.nfs_vattr** %16, align 8
  store i32* %7, i32** %17, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %8
  %34 = load i64, i64* %11, align 8
  %35 = call %struct.nfsmount* @VFSTONFS(i64 %34)
  br label %39

36:                                               ; preds = %8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi %struct.nfsmount* [ %35, %33 ], [ %38, %36 ]
  store %struct.nfsmount* %40, %struct.nfsmount** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %23, align 4
  %41 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %25, align 8
  %44 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %26, align 8
  %45 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %46 = call i64 @nfs_mount_gone(%struct.nfsmount* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %204

50:                                               ; preds = %39
  %51 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %52 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %21, align 4
  %54 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %55 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NFS_FSFLAG_ACL, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %24, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = icmp ne %struct.TYPE_11__* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %50
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @VTONFS(i32 %73)
  %75 = load %struct.nfs_vattr*, %struct.nfs_vattr** %16, align 8
  %76 = call i32 @nfs4_default_attrs_for_referral_trigger(i32 %74, i32* null, i32 0, %struct.nfs_vattr* %75, i32* null)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %204

77:                                               ; preds = %62, %50
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @NGA_MONITOR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @R_RECOVER, align 4
  store i32 %83, i32* %23, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @NGA_SOFT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @R_SOFT, align 4
  %91 = load i32, i32* %23, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %23, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %29, %struct.TYPE_11__* %94, i32* null, i32 0, i32* null, i32 0)
  %96 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %27)
  %97 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %28)
  store i32 2, i32* %22, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* @NFSX_UNSIGNED, align 4
  %100 = mul nsw i32 15, %99
  %101 = call i32 @nfsm_chain_build_alloc_init(i32 %98, %struct.nfsm_chain* %27, i32 %100)
  %102 = load i32, i32* %19, align 4
  %103 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %104 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %22, align 4
  %107 = call i32 @nfsm_chain_add_compound_header(i32 %102, %struct.nfsm_chain* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* %22, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* @NFS_OP_PUTFH, align 4
  %112 = call i32 @nfsm_chain_add_32(i32 %110, %struct.nfsm_chain* %27, i32 %111)
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @nfsm_chain_add_fh(i32 %113, %struct.nfsm_chain* %27, i32 %114, i32* %115, i64 %116)
  %118 = load i32, i32* %22, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %22, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* @NFS_OP_GETATTR, align 4
  %122 = call i32 @nfsm_chain_add_32(i32 %120, %struct.nfsm_chain* %27, i32 %121)
  %123 = load i32, i32* @nfs_getattr_bitmap, align 4
  %124 = call i32 @NFS_COPY_ATTRIBUTES(i32 %123, i32* %44)
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @NGA_ACL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %93
  %130 = load i32, i32* %24, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* @NFS_FATTR_ACL, align 4
  %134 = call i32 @NFS_BITMAP_SET(i32* %44, i32 %133)
  br label %135

135:                                              ; preds = %132, %129, %93
  %136 = load i32, i32* %19, align 4
  %137 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %139 = call i32 @nfsm_chain_add_bitmap_supported(i32 %136, %struct.nfsm_chain* %27, i32* %44, %struct.nfsmount* %137, %struct.TYPE_11__* %138)
  %140 = load i32, i32* %19, align 4
  %141 = call i32 @nfsm_chain_build_done(i32 %140, %struct.nfsm_chain* %27)
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %22, align 4
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* @EPROTO, align 4
  %147 = call i32 @nfsm_assert(i32 %142, i32 %145, i32 %146)
  %148 = load i32, i32* %19, align 4
  %149 = call i32 @nfsmout_if(i32 %148)
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @vfs_context_thread(i32 %153)
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @vfs_context_ucred(i32 %155)
  %157 = load i32, i32* %23, align 4
  %158 = load i32*, i32** %17, align 8
  %159 = call i32 @nfs_request2(%struct.TYPE_11__* %150, i64 %151, %struct.nfsm_chain* %27, i32 %152, i32 %154, i32 %156, i32* null, i32 %157, %struct.nfsm_chain* %28, i32* %158, i32* %20)
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %19, align 4
  %161 = call i32 @nfsm_chain_skip_tag(i32 %160, %struct.nfsm_chain* %28)
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %22, align 4
  %164 = call i32 @nfsm_chain_get_32(i32 %162, %struct.nfsm_chain* %28, i32 %163)
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* @NFS_OP_PUTFH, align 4
  %167 = call i32 @nfsm_chain_op_check(i32 %165, %struct.nfsm_chain* %28, i32 %166)
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* @NFS_OP_GETATTR, align 4
  %170 = call i32 @nfsm_chain_op_check(i32 %168, %struct.nfsm_chain* %28, i32 %169)
  %171 = load i32, i32* %19, align 4
  %172 = call i32 @nfsmout_if(i32 %171)
  %173 = load %struct.nfs_vattr*, %struct.nfs_vattr** %16, align 8
  %174 = call i32 @nfs4_parsefattr(%struct.nfsm_chain* %28, i32* null, %struct.nfs_vattr* %173, i32* null, i32* null, i32* null)
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @nfsmout_if(i32 %175)
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @NGA_ACL, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %135
  %182 = load i32, i32* %24, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %181
  %185 = load %struct.nfs_vattr*, %struct.nfs_vattr** %16, align 8
  %186 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @NFS_FATTR_ACL, align 4
  %189 = call i32 @NFS_BITMAP_ISSET(i32* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %184
  %192 = load %struct.nfs_vattr*, %struct.nfs_vattr** %16, align 8
  %193 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* @NFS_FATTR_ACL, align 4
  %196 = call i32 @NFS_BITMAP_SET(i32* %194, i32 %195)
  %197 = load %struct.nfs_vattr*, %struct.nfs_vattr** %16, align 8
  %198 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %197, i32 0, i32 0
  store i32* null, i32** %198, align 8
  br label %199

199:                                              ; preds = %191, %184, %181, %135
  br label %200

200:                                              ; preds = %199
  %201 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %27)
  %202 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %28)
  %203 = load i32, i32* %19, align 4
  store i32 %203, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %204

204:                                              ; preds = %200, %70, %48
  %205 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %9, align 4
  ret i32 %206
}

declare dso_local %struct.nfsmount* @VFSTONFS(i64) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs4_default_attrs_for_referral_trigger(i32, i32*, i32, %struct.nfs_vattr*, i32*) #1

declare dso_local i32 @VTONFS(i32) #1

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_11__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32*, i64) #1

declare dso_local i32 @NFS_COPY_ATTRIBUTES(i32, i32*) #1

declare dso_local i32 @NFS_BITMAP_SET(i32*, i32) #1

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32*, %struct.nfsmount*, %struct.TYPE_11__*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(%struct.TYPE_11__*, i64, %struct.nfsm_chain*, i32, i32, i32, i32*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfs4_parsefattr(%struct.nfsm_chain*, i32*, %struct.nfs_vattr*, i32*, i32*, i32*) #1

declare dso_local i32 @NFS_BITMAP_ISSET(i32*, i32) #1

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
