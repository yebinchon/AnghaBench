; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_lookup_rpc_async_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_lookup_rpc_async_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsreq = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfs_vattr = type { i32 }
%struct.nfsmount = type { i32, i32, i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfs_sec = type { i32*, i64 }

@ENOENT = common dso_local global i32 0, align 4
@NFS_OP_LOOKUP = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@NFS_OP_PUTFH = common dso_local global i64 0, align 8
@NFS_OP_GETATTR = common dso_local global i64 0, align 8
@NFS_OP_LOOKUPP = common dso_local global i64 0, align 8
@NFS_OP_GETFH = common dso_local global i64 0, align 8
@EBADRPC = common dso_local global i32 0, align 4
@NFSERR_MOVED = common dso_local global i32 0, align 4
@NFSERR_INVAL = common dso_local global i32 0, align 4
@NFSSTA_NEEDSECINFO = common dso_local global i32 0, align 4
@NX_MAX_SEC_FLAVORS = common dso_local global i64 0, align 8
@NFSERR_OP_ILLEGAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_lookup_rpc_async_finish(i32 %0, i8* %1, i32 %2, i32 %3, %struct.nfsreq* %4, i32* %5, %struct.TYPE_4__* %6, %struct.nfs_vattr* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsreq*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca %struct.nfs_vattr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.nfsmount*, align 8
  %27 = alloca %struct.nfsm_chain, align 4
  %28 = alloca %struct.nfs_sec, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.nfsreq* %4, %struct.nfsreq** %14, align 8
  store i32* %5, i32** %15, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %16, align 8
  store %struct.nfs_vattr* %7, %struct.nfs_vattr** %17, align 8
  store i32 0, i32* %18, align 4
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %23, align 4
  %30 = load i64, i64* @NFS_OP_LOOKUP, align 8
  store i64 %30, i64* %24, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.nfsmount* @NFSTONMP(i32 %31)
  store %struct.nfsmount* %32, %struct.nfsmount** %26, align 8
  %33 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %34 = icmp eq %struct.nfsmount* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %9, align 4
  br label %229

37:                                               ; preds = %8
  %38 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %39 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %21, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %23, align 4
  br label %56

56:                                               ; preds = %55, %52, %46, %37
  %57 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %27)
  %58 = load %struct.nfsreq*, %struct.nfsreq** %14, align 8
  %59 = call i32 @nfs_request_async_finish(%struct.nfsreq* %58, %struct.nfsm_chain* %27, i32* %25, i32* %20)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @nfs_node_lock(i32 %60)
  store i32 %61, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %19, align 4
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @nfsm_chain_skip_tag(i32 %66, %struct.nfsm_chain* %27)
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %22, align 4
  %70 = call i32 @nfsm_chain_get_32(i32 %68, %struct.nfsm_chain* %27, i32 %69)
  %71 = load i32, i32* %18, align 4
  %72 = load i64, i64* @NFS_OP_PUTFH, align 8
  %73 = call i32 @nfsm_chain_op_check(i32 %71, %struct.nfsm_chain* %27, i64 %72)
  %74 = load i32, i32* %18, align 4
  %75 = load i64, i64* @NFS_OP_GETATTR, align 8
  %76 = call i32 @nfsm_chain_op_check(i32 %74, %struct.nfsm_chain* %27, i64 %75)
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* %25, align 4
  %81 = load i32*, i32** %15, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %65
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %21, align 4
  %86 = call i32 @nfsm_chain_loadattr(i32 %83, %struct.nfsm_chain* %27, i32 %84, i32 %85, i32* %25)
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %23, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i64, i64* @NFS_OP_LOOKUPP, align 8
  br label %94

92:                                               ; preds = %82
  %93 = load i64, i64* @NFS_OP_LOOKUP, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  %96 = call i32 @nfsm_chain_op_check(i32 %87, %struct.nfsm_chain* %27, i64 %95)
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %101 = icmp ne %struct.TYPE_4__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.nfs_vattr*, %struct.nfs_vattr** %17, align 8
  %104 = icmp ne %struct.nfs_vattr* %103, null
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %102, %99, %94
  %107 = phi i1 [ true, %99 ], [ true, %94 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @nfsmout_if(i32 %108)
  %110 = load i32, i32* %18, align 4
  %111 = load i64, i64* @NFS_OP_GETFH, align 8
  %112 = call i32 @nfsm_chain_op_check(i32 %110, %struct.nfsm_chain* %27, i64 %111)
  %113 = load i32, i32* %18, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @nfsm_chain_get_32(i32 %113, %struct.nfsm_chain* %27, i32 %116)
  %118 = load i32, i32* %18, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %106
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ugt i64 %124, 4
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @EBADRPC, align 4
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %126, %120, %106
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @nfsmout_if(i32 %129)
  %131 = load i32, i32* %18, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @nfsm_chain_get_opaque(i32 %131, %struct.nfsm_chain* %27, i32 %134, i32 %137)
  %139 = load i32, i32* %18, align 4
  %140 = load i64, i64* @NFS_OP_GETATTR, align 8
  %141 = call i32 @nfsm_chain_op_check(i32 %139, %struct.nfsm_chain* %27, i64 %140)
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* @NFSERR_MOVED, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %128
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* @NFSERR_INVAL, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145, %128
  %150 = load i32, i32* %10, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.nfs_vattr*, %struct.nfs_vattr** %17, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %155 = call i32 @nfs4_default_attrs_for_referral_trigger(i32 %150, i8* %151, i32 %152, %struct.nfs_vattr* %153, %struct.TYPE_4__* %154)
  store i32 0, i32* %18, align 4
  br label %161

156:                                              ; preds = %145
  %157 = load i32, i32* %18, align 4
  %158 = call i32 @nfsmout_if(i32 %157)
  %159 = load %struct.nfs_vattr*, %struct.nfs_vattr** %17, align 8
  %160 = call i32 @nfs4_parsefattr(%struct.nfsm_chain* %27, i32* null, %struct.nfs_vattr* %159, i32* null, i32* null, i32* null)
  store i32 %160, i32* %18, align 4
  br label %161

161:                                              ; preds = %156, %149
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %19, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @nfs_node_unlock(i32 %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %27)
  %170 = load i32, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %227, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %24, align 8
  %174 = load i64, i64* @NFS_OP_LOOKUP, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %227

176:                                              ; preds = %172
  %177 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %178 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @NFSSTA_NEEDSECINFO, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %227

183:                                              ; preds = %176
  %184 = load i64, i64* @NX_MAX_SEC_FLAVORS, align 8
  %185 = getelementptr inbounds %struct.nfs_sec, %struct.nfs_sec* %28, i32 0, i32 1
  store i64 %184, i64* %185, align 8
  %186 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %187 = load %struct.nfsreq*, %struct.nfsreq** %14, align 8
  %188 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %187, i32 0, i32 0
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @vfs_context_ucred(i32 %189)
  %191 = getelementptr inbounds %struct.nfs_sec, %struct.nfs_sec* %28, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds %struct.nfs_sec, %struct.nfs_sec* %28, i32 0, i32 1
  %194 = call i32 @nfs4_secinfo_rpc(%struct.nfsmount* %186, i32* %188, i32 %190, i32* %192, i64* %193)
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* @NFSERR_OP_ILLEGAL, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %183
  store i32 0, i32* %18, align 4
  br label %199

199:                                              ; preds = %198, %183
  %200 = load i32, i32* %18, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %226, label %202

202:                                              ; preds = %199
  %203 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %204 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %203, i32 0, i32 2
  %205 = call i32 @lck_mtx_lock(i32* %204)
  %206 = getelementptr inbounds %struct.nfs_sec, %struct.nfs_sec* %28, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.nfs_sec, %struct.nfs_sec* %28, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %215 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %209, %202
  %217 = load i32, i32* @NFSSTA_NEEDSECINFO, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %220 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 4
  %223 = load %struct.nfsmount*, %struct.nfsmount** %26, align 8
  %224 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %223, i32 0, i32 2
  %225 = call i32 @lck_mtx_unlock(i32* %224)
  br label %226

226:                                              ; preds = %216, %199
  br label %227

227:                                              ; preds = %226, %176, %172, %168
  %228 = load i32, i32* %18, align 4
  store i32 %228, i32* %9, align 4
  br label %229

229:                                              ; preds = %227, %35
  %230 = load i32, i32* %9, align 4
  ret i32 %230
}

declare dso_local %struct.nfsmount* @NFSTONMP(i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfs_request_async_finish(%struct.nfsreq*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(i32) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, i32, i32, i32*) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfsm_chain_get_opaque(i32, %struct.nfsm_chain*, i32, i32) #1

declare dso_local i32 @nfs4_default_attrs_for_referral_trigger(i32, i8*, i32, %struct.nfs_vattr*, %struct.TYPE_4__*) #1

declare dso_local i32 @nfs4_parsefattr(%struct.nfsm_chain*, i32*, %struct.nfs_vattr*, i32*, i32*, i32*) #1

declare dso_local i32 @nfs_node_unlock(i32) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

declare dso_local i32 @nfs4_secinfo_rpc(%struct.nfsmount*, i32*, i32, i32*, i64*) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
