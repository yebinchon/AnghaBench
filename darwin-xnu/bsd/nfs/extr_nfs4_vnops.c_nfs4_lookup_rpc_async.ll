; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_lookup_rpc_async.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_lookup_rpc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nfsreq = type { i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfsreq_secinfo_args = type { i32 }

@NFS_ATTR_BITMAP_LEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER_REFERRAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_getattr_bitmap = common dso_local global i32* null, align 8
@NFS_OP_LOOKUPP = common dso_local global i32 0, align 4
@NFS_OP_LOOKUP = common dso_local global i32 0, align 4
@NFS_OP_GETFH = common dso_local global i32 0, align 4
@NISDOTZFS = common dso_local global i32 0, align 4
@NFS_FATTR_NAMED_ATTR = common dso_local global i32 0, align 4
@NISDOTZFSCHILD = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_lookup_rpc_async(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3, %struct.nfsreq** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfsreq**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfsm_chain, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.nfsmount*, align 8
  %20 = alloca %struct.nfsreq_secinfo_args, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nfsreq** %4, %struct.nfsreq*** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__* %26)
  store %struct.nfsmount* %27, %struct.nfsmount** %19, align 8
  %28 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %29 = call i64 @nfs_mount_gone(%struct.nfsmount* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %223

33:                                               ; preds = %5
  %34 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %35 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NFS_FFLAG_TRIGGER_REFERRAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %223

46:                                               ; preds = %33
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %20, %struct.TYPE_9__* %62, i32* null, i32 0, i8* null, i32 0)
  br label %75

64:                                               ; preds = %58, %52, %46
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %20, %struct.TYPE_9__* %65, i32* %68, i32 %71, i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %61
  %76 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %16)
  store i32 5, i32* %15, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @NFSX_UNSIGNED, align 4
  %79 = mul nsw i32 20, %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @nfsm_chain_build_alloc_init(i32 %77, %struct.nfsm_chain* %16, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %85 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @nfsm_chain_add_compound_header(i32 %83, %struct.nfsm_chain* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @NFS_OP_PUTFH, align 4
  %93 = call i32 @nfsm_chain_add_32(i32 %91, %struct.nfsm_chain* %16, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nfsm_chain_add_fh(i32 %94, %struct.nfsm_chain* %16, i32 %95, i32* %98, i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @NFS_OP_GETATTR, align 4
  %107 = call i32 @nfsm_chain_add_32(i32 %105, %struct.nfsm_chain* %16, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** @nfs_getattr_bitmap, align 8
  %110 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = call i32 @nfsm_chain_add_bitmap_supported(i32 %108, %struct.nfsm_chain* %16, i32* %109, %struct.nfsmount* %110, %struct.TYPE_9__* %111)
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %75
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @NFS_OP_LOOKUPP, align 4
  %120 = call i32 @nfsm_chain_add_32(i32 %118, %struct.nfsm_chain* %16, i32 %119)
  br label %130

121:                                              ; preds = %75
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @NFS_OP_LOOKUP, align 4
  %124 = call i32 @nfsm_chain_add_32(i32 %122, %struct.nfsm_chain* %16, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %129 = call i32 @nfsm_chain_add_name(i32 %125, %struct.nfsm_chain* %16, i8* %126, i32 %127, %struct.nfsmount* %128)
  br label %130

130:                                              ; preds = %121, %117
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @NFS_OP_GETFH, align 4
  %135 = call i32 @nfsm_chain_add_32(i32 %133, %struct.nfsm_chain* %16, i32 %134)
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @NFS_OP_GETATTR, align 4
  %140 = call i32 @nfsm_chain_add_32(i32 %138, %struct.nfsm_chain* %16, i32 %139)
  %141 = load i32*, i32** @nfs_getattr_bitmap, align 8
  %142 = call i32 @NFS_COPY_ATTRIBUTES(i32* %141, i32* %25)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @NISDOTZFS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %130
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @NFS_FATTR_NAMED_ATTR, align 4
  %154 = call i32 @NFS_BITMAP_CLR(i32* %25, i32 %153)
  br label %155

155:                                              ; preds = %152, %149, %130
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @NISDOTZFSCHILD, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* @NFS_FATTR_NAMED_ATTR, align 4
  %167 = call i32 @NFS_BITMAP_CLR(i32* %25, i32 %166)
  br label %168

168:                                              ; preds = %165, %162, %155
  %169 = load i32, i32* %9, align 4
  %170 = icmp eq i32 %169, 4
  br i1 %170, label %171, label %198

171:                                              ; preds = %168
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 46
  br i1 %176, label %177, label %198

177:                                              ; preds = %171
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 122
  br i1 %182, label %183, label %198

183:                                              ; preds = %177
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 2
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 102
  br i1 %188, label %189, label %198

189:                                              ; preds = %183
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 3
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 115
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* @NFS_FATTR_NAMED_ATTR, align 4
  %197 = call i32 @NFS_BITMAP_CLR(i32* %25, i32 %196)
  br label %198

198:                                              ; preds = %195, %189, %183, %177, %171, %168
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %201 = call i32 @nfsm_chain_add_bitmap_supported(i32 %199, %struct.nfsm_chain* %16, i32* %25, %struct.nfsmount* %200, %struct.TYPE_9__* null)
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @nfsm_chain_build_done(i32 %202, %struct.nfsm_chain* %16)
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %15, align 4
  %206 = icmp eq i32 %205, 0
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* @EPROTO, align 4
  %209 = call i32 @nfsm_assert(i32 %204, i32 %207, i32 %208)
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @nfsmout_if(i32 %210)
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %213 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @vfs_context_thread(i32 %214)
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @vfs_context_ucred(i32 %216)
  %218 = load %struct.nfsreq**, %struct.nfsreq*** %11, align 8
  %219 = call i32 @nfs_request_async(%struct.TYPE_9__* %212, i32* null, %struct.nfsm_chain* %16, i32 %213, i32 %215, i32 %217, %struct.nfsreq_secinfo_args* %20, i32 0, i32* null, %struct.nfsreq** %218)
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %198
  %221 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %16)
  %222 = load i32, i32* %12, align 4
  store i32 %222, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %223

223:                                              ; preds = %220, %44, %31
  %224 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__*) #2

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #2

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, %struct.TYPE_9__*, i32*, i32, i8*, i32) #2

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #2

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #2

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32*, i32) #2

declare dso_local i32 @nfsm_chain_add_bitmap_supported(i32, %struct.nfsm_chain*, i32*, %struct.nfsmount*, %struct.TYPE_9__*) #2

declare dso_local i32 @nfsm_chain_add_name(i32, %struct.nfsm_chain*, i8*, i32, %struct.nfsmount*) #2

declare dso_local i32 @NFS_COPY_ATTRIBUTES(i32*, i32*) #2

declare dso_local i32 @NFS_BITMAP_CLR(i32*, i32) #2

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #2

declare dso_local i32 @nfsm_assert(i32, i32, i32) #2

declare dso_local i32 @nfsmout_if(i32) #2

declare dso_local i32 @nfs_request_async(%struct.TYPE_9__*, i32*, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, i32*, %struct.nfsreq**) #2

declare dso_local i32 @vfs_context_thread(i32) #2

declare dso_local i32 @vfs_context_ucred(i32) #2

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
