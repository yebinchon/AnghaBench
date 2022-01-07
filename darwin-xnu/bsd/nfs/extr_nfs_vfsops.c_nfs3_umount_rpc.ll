; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs3_umount_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs3_umount_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfsm_chain = type { i32* }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }
%struct.TYPE_3__ = type { i8* }

@NFS_VER2 = common dso_local global i64 0, align 8
@RPCMNT_VER1 = common dso_local global i64 0, align 8
@RPCMNT_VER3 = common dso_local global i64 0, align 8
@MNTUDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@RPCPROG_MNT = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@RPCMNT_UMOUNT = common dso_local global i32 0, align 4
@RPCAUTH_SYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs3_umount_rpc(%struct.nfsmount* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsm_chain, align 8
  %15 = alloca %struct.nfsm_chain, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.sockaddr_storage, align 4
  %20 = alloca %struct.sockaddr*, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @vfs_context_thread(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @vfs_context_ucred(i32 %23)
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %25 = bitcast %struct.sockaddr_storage* %19 to %struct.sockaddr*
  store %struct.sockaddr* %25, %struct.sockaddr** %20, align 8
  %26 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %27 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %253

31:                                               ; preds = %3
  %32 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %14)
  %33 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %15)
  %34 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %35 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NFS_VER2, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* @RPCMNT_VER1, align 8
  br label %43

41:                                               ; preds = %31
  %42 = load i64, i64* @RPCMNT_VER3, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  store i64 %44, i64* %17, align 8
  %45 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %46 = load i32, i32* @MNTUDP, align 4
  %47 = call i64 @NM_OMFLAG(%struct.nfsmount* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %51 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SOCK_DGRAM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %43
  %56 = load i32, i32* @IPPROTO_UDP, align 4
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @IPPROTO_TCP, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %9, align 4
  %61 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %62 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %18, align 8
  %64 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %65 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %68 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %69 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @min(i32 4, i32 %72)
  %74 = call i32 @bcopy(%struct.TYPE_4__* %66, %struct.sockaddr* %67, i32 %73)
  %75 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %76 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AF_INET, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %59
  %81 = load i64, i64* %18, align 8
  %82 = call i8* @htons(i64 %81)
  %83 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %84 = bitcast %struct.sockaddr* %83 to %struct.sockaddr_in*
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  br label %92

86:                                               ; preds = %59
  %87 = load i64, i64* %18, align 8
  %88 = call i8* @htons(i64 %87)
  %89 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %90 = bitcast %struct.sockaddr* %89 to %struct.sockaddr_in6*
  %91 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  br label %92

92:                                               ; preds = %86, %80
  br label %93

93:                                               ; preds = %165, %92
  %94 = load i64, i64* %18, align 8
  %95 = icmp ne i64 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %97, label %166

97:                                               ; preds = %93
  %98 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %101 = load i32, i32* @RPCPROG_MNT, align 4
  %102 = load i64, i64* %17, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @nfs_portmap_lookup(%struct.nfsmount* %98, i32 %99, %struct.sockaddr* %100, i32* null, i32 %101, i64 %102, i32 %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @nfsmout_if(i32 %106)
  %108 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %109 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @AF_INET, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %97
  %114 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %115 = bitcast %struct.sockaddr* %114 to %struct.sockaddr_in*
  %116 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @ntohs(i8* %117)
  store i64 %118, i64* %18, align 8
  br label %125

119:                                              ; preds = %97
  %120 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %121 = bitcast %struct.sockaddr* %120 to %struct.sockaddr_in6*
  %122 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @ntohs(i8* %123)
  store i64 %124, i64* %18, align 8
  br label %125

125:                                              ; preds = %119, %113
  %126 = load i64, i64* %18, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %165, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* %17, align 8
  %130 = load i64, i64* @RPCMNT_VER1, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i64, i64* @RPCMNT_VER1, align 8
  store i64 %133, i64* %17, align 8
  br label %153

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @IPPROTO_TCP, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %139, i32* %9, align 4
  %140 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %141 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @NFS_VER2, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i64, i64* @RPCMNT_VER1, align 8
  br label %149

147:                                              ; preds = %138
  %148 = load i64, i64* @RPCMNT_VER3, align 8
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %146, %145 ], [ %148, %147 ]
  store i64 %150, i64* %17, align 8
  br label %152

151:                                              ; preds = %134
  br label %166

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %152, %132
  %154 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %155 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %154, i32 0, i32 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %158 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %159 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %158, i32 0, i32 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @min(i32 4, i32 %162)
  %164 = call i32 @bcopy(%struct.TYPE_4__* %156, %struct.sockaddr* %157, i32 %163)
  br label %165

165:                                              ; preds = %153, %125
  br label %93

166:                                              ; preds = %151, %93
  %167 = load i64, i64* %18, align 8
  %168 = icmp ne i64 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 @nfsmout_if(i32 %170)
  %172 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %173 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call %struct.TYPE_3__* @vfs_statfs(i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  store i8* %178, i8** %12, align 8
  br label %179

179:                                              ; preds = %191, %166
  %180 = load i8*, i8** %12, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i8*, i8** %12, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 47
  br label %189

189:                                              ; preds = %184, %179
  %190 = phi i1 [ false, %179 ], [ %188, %184 ]
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  %192 = load i8*, i8** %12, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %12, align 8
  br label %179

194:                                              ; preds = %189
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 @strlen(i8* %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i64, i64* @NFSX_UNSIGNED, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call i64 @nfsm_rndup(i32 %199)
  %201 = add nsw i64 %198, %200
  %202 = call i32 @nfsm_chain_build_alloc_init(i32 %197, %struct.nfsm_chain* %14, i64 %201)
  %203 = load i32, i32* %7, align 4
  %204 = load i8*, i8** %12, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %207 = call i32 @nfsm_chain_add_name(i32 %203, %struct.nfsm_chain* %14, i8* %204, i32 %205, %struct.nfsmount* %206)
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @nfsm_chain_build_done(i32 %208, %struct.nfsm_chain* %14)
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @nfsmout_if(i32 %210)
  %212 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @IPPROTO_UDP, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %194
  %217 = load i64, i64* @SOCK_DGRAM, align 8
  br label %220

218:                                              ; preds = %194
  %219 = load i64, i64* @SOCK_STREAM, align 8
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i64 [ %217, %216 ], [ %219, %218 ]
  %222 = load i32, i32* @RPCPROG_MNT, align 4
  %223 = load i64, i64* @RPCMNT_VER1, align 8
  %224 = load i32, i32* @RPCMNT_UMOUNT, align 4
  %225 = load i32, i32* @RPCAUTH_SYS, align 4
  %226 = load i32, i32* %11, align 4
  %227 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %14, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @nfsm_rpchead2(%struct.nfsmount* %212, i64 %221, i32 %222, i64 %223, i32 %224, i32 %225, i32 %226, i32* null, i32* %228, i32* %13, i32* %16)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @nfsmout_if(i32 %230)
  %232 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %14, i32 0, i32 0
  store i32* null, i32** %232, align 8
  %233 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @IPPROTO_UDP, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %220
  %240 = load i64, i64* @SOCK_DGRAM, align 8
  br label %243

241:                                              ; preds = %220
  %242 = load i64, i64* @SOCK_STREAM, align 8
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i64 [ %240, %239 ], [ %242, %241 ]
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @R_XID32(i32 %246)
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @nfs_aux_request(%struct.nfsmount* %233, i32 %234, %struct.sockaddr* %235, i32* null, i64 %244, i32 %245, i32 %247, i32 1, i32 %248, %struct.nfsm_chain* %15)
  store i32 %249, i32* %7, align 4
  br label %250

250:                                              ; preds = %243
  %251 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %14)
  %252 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %15)
  br label %253

253:                                              ; preds = %250, %30
  ret void
}

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i64 @NM_OMFLAG(%struct.nfsmount*, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_4__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @nfs_portmap_lookup(%struct.nfsmount*, i32, %struct.sockaddr*, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local %struct.TYPE_3__* @vfs_statfs(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i64 @nfsm_rndup(i32) #1

declare dso_local i32 @nfsm_chain_add_name(i32, %struct.nfsm_chain*, i8*, i32, %struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_rpchead2(%struct.nfsmount*, i64, i32, i64, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nfs_aux_request(%struct.nfsmount*, i32, %struct.sockaddr*, i32*, i64, i32, i32, i32, i32, %struct.nfsm_chain*) #1

declare dso_local i32 @R_XID32(i32) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
