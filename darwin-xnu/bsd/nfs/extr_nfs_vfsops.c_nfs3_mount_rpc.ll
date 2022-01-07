; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs3_mount_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs3_mount_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i64 }
%struct.sockaddr = type { i64, i32 }
%struct.nfs_sec = type { i32, i32* }
%struct.nfsm_chain = type { i32* }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

@NFS_VER2 = common dso_local global i32 0, align 4
@RPCMNT_VER1 = common dso_local global i32 0, align 4
@RPCMNT_VER3 = common dso_local global i32 0, align 4
@MNTUDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@RPCPROG_MNT = common dso_local global i32 0, align 4
@EPROGUNAVAIL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@RPCMNT_MOUNT = common dso_local global i32 0, align 4
@RPCAUTH_SYS = common dso_local global i32 0, align 4
@NX_MAX_SEC_FLAVORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_mount_rpc(%struct.nfsmount* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32* %7, %struct.nfs_sec* %8) #0 {
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.nfs_sec*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.nfsm_chain, align 8
  %26 = alloca %struct.nfsm_chain, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.sockaddr_storage, align 4
  %32 = alloca %struct.sockaddr*, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %10, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store %struct.nfs_sec* %8, %struct.nfs_sec** %18, align 8
  store i32 0, i32* %19, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @vfs_context_thread(i32 %33)
  store i32 %34, i32* %22, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @vfs_context_ucred(i32 %35)
  store i32 %36, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %37 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr*
  store %struct.sockaddr* %37, %struct.sockaddr** %32, align 8
  %38 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %25)
  %39 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %26)
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @NFS_VER2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %9
  %44 = load i32, i32* @RPCMNT_VER1, align 4
  br label %47

45:                                               ; preds = %9
  %46 = load i32, i32* @RPCMNT_VER3, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %28, align 4
  %49 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %50 = load i32, i32* @MNTUDP, align 4
  %51 = call i64 @NM_OMFLAG(%struct.nfsmount* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @SOCK_DGRAM, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %47
  %58 = load i32, i32* @IPPROTO_UDP, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @IPPROTO_TCP, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %21, align 4
  %63 = load %struct.nfs_sec*, %struct.nfs_sec** %18, align 8
  %64 = getelementptr inbounds %struct.nfs_sec, %struct.nfs_sec* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %67 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %68 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @min(i32 4, i32 %69)
  %71 = call i32 @bcopy(%struct.sockaddr* %65, %struct.sockaddr* %66, i32 %70)
  %72 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %73 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AF_INET, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %61
  %78 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %79 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %84 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @htons(i64 %85)
  %87 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %88 = bitcast %struct.sockaddr* %87 to %struct.sockaddr_in*
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  br label %90

90:                                               ; preds = %82, %77
  %91 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %92 = bitcast %struct.sockaddr* %91 to %struct.sockaddr_in*
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @ntohs(i8* %94)
  store i32 %95, i32* %29, align 4
  br label %115

96:                                               ; preds = %61
  %97 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %98 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %103 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @htons(i64 %104)
  %106 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %107 = bitcast %struct.sockaddr* %106 to %struct.sockaddr_in6*
  %108 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  br label %109

109:                                              ; preds = %101, %96
  %110 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %111 = bitcast %struct.sockaddr* %110 to %struct.sockaddr_in6*
  %112 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @ntohs(i8* %113)
  store i32 %114, i32* %29, align 4
  br label %115

115:                                              ; preds = %109, %90
  br label %116

116:                                              ; preds = %166, %115
  %117 = load i32, i32* %29, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br i1 %119, label %120, label %167

120:                                              ; preds = %116
  %121 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %124 = load i32, i32* @RPCPROG_MNT, align 4
  %125 = load i32, i32* %28, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @nfs_portmap_lookup(%struct.nfsmount* %121, i32 %122, %struct.sockaddr* %123, i32* null, i32 %124, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @nfsmout_if(i32 %129)
  %131 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %132 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @AF_INET, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %120
  %137 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %138 = bitcast %struct.sockaddr* %137 to %struct.sockaddr_in*
  %139 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @ntohs(i8* %140)
  store i32 %141, i32* %29, align 4
  br label %148

142:                                              ; preds = %120
  %143 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %144 = bitcast %struct.sockaddr* %143 to %struct.sockaddr_in6*
  %145 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @ntohs(i8* %146)
  store i32 %147, i32* %29, align 4
  br label %148

148:                                              ; preds = %142, %136
  %149 = load i32, i32* %29, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* @IPPROTO_UDP, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @EPROGUNAVAIL, align 4
  store i32 %156, i32* %19, align 4
  br label %167

157:                                              ; preds = %151
  %158 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %158, i32* %21, align 4
  %159 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %160 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %161 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %162 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @min(i32 4, i32 %163)
  %165 = call i32 @bcopy(%struct.sockaddr* %159, %struct.sockaddr* %160, i32 %164)
  br label %166

166:                                              ; preds = %157, %148
  br label %116

167:                                              ; preds = %155, %116
  %168 = load i32, i32* %19, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %29, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  br label %174

174:                                              ; preds = %170, %167
  %175 = phi i1 [ true, %167 ], [ %173, %170 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @nfsmout_if(i32 %176)
  %178 = load i8*, i8** %14, align 8
  %179 = call i32 @strlen(i8* %178)
  store i32 %179, i32* %20, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i64, i64* @NFSX_UNSIGNED, align 8
  %182 = load i32, i32* %20, align 4
  %183 = call i64 @nfsm_rndup(i32 %182)
  %184 = add nsw i64 %181, %183
  %185 = call i32 @nfsm_chain_build_alloc_init(i32 %180, %struct.nfsm_chain* %25, i64 %184)
  %186 = load i32, i32* %19, align 4
  %187 = load i8*, i8** %14, align 8
  %188 = load i32, i32* %20, align 4
  %189 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %190 = call i32 @nfsm_chain_add_name(i32 %186, %struct.nfsm_chain* %25, i8* %187, i32 %188, %struct.nfsmount* %189)
  %191 = load i32, i32* %19, align 4
  %192 = call i32 @nfsm_chain_build_done(i32 %191, %struct.nfsm_chain* %25)
  %193 = load i32, i32* %19, align 4
  %194 = call i32 @nfsmout_if(i32 %193)
  %195 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* @IPPROTO_UDP, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %174
  %200 = load i32, i32* @SOCK_DGRAM, align 4
  br label %203

201:                                              ; preds = %174
  %202 = load i32, i32* @SOCK_STREAM, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  %205 = load i32, i32* @RPCPROG_MNT, align 4
  %206 = load i32, i32* %28, align 4
  %207 = load i32, i32* @RPCMNT_MOUNT, align 4
  %208 = load i32, i32* @RPCAUTH_SYS, align 4
  %209 = load i32, i32* %23, align 4
  %210 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %25, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @nfsm_rpchead2(%struct.nfsmount* %195, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32* null, i32* %211, i32* %24, i32* %27)
  store i32 %212, i32* %19, align 4
  %213 = load i32, i32* %19, align 4
  %214 = call i32 @nfsmout_if(i32 %213)
  %215 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %25, i32 0, i32 0
  store i32* null, i32** %215, align 8
  %216 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %217 = load i32, i32* %22, align 4
  %218 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* @IPPROTO_UDP, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %203
  %223 = load i32, i32* @SOCK_DGRAM, align 4
  br label %226

224:                                              ; preds = %203
  %225 = load i32, i32* @SOCK_STREAM, align 4
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i32 [ %223, %222 ], [ %225, %224 ]
  %228 = load i32, i32* %27, align 4
  %229 = load i32, i32* %24, align 4
  %230 = call i32 @R_XID32(i32 %229)
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @nfs_aux_request(%struct.nfsmount* %216, i32 %217, %struct.sockaddr* %218, i32* null, i32 %227, i32 %228, i32 %230, i32 1, i32 %231, %struct.nfsm_chain* %26)
  store i32 %232, i32* %19, align 4
  %233 = load i32, i32* %19, align 4
  %234 = call i32 @nfsmout_if(i32 %233)
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %30, align 4
  %237 = call i32 @nfsm_chain_get_32(i32 %235, %struct.nfsm_chain* %26, i32 %236)
  %238 = load i32, i32* %19, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %226
  %241 = load i32, i32* %30, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = load i32, i32* %30, align 4
  store i32 %244, i32* %19, align 4
  br label %245

245:                                              ; preds = %243, %240, %226
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load i32*, i32** %17, align 8
  %249 = call i32 @nfsm_chain_get_fh(i32 %246, %struct.nfsm_chain* %26, i32 %247, i32* %248)
  %250 = load i32, i32* %19, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %267, label %252

252:                                              ; preds = %245
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* @NFS_VER2, align 4
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %252
  %257 = load i32, i32* @NX_MAX_SEC_FLAVORS, align 4
  %258 = load %struct.nfs_sec*, %struct.nfs_sec** %18, align 8
  %259 = getelementptr inbounds %struct.nfs_sec, %struct.nfs_sec* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  %260 = load %struct.nfs_sec*, %struct.nfs_sec** %18, align 8
  %261 = getelementptr inbounds %struct.nfs_sec, %struct.nfs_sec* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load %struct.nfs_sec*, %struct.nfs_sec** %18, align 8
  %265 = getelementptr inbounds %struct.nfs_sec, %struct.nfs_sec* %264, i32 0, i32 0
  %266 = call i32 @nfsm_chain_get_secinfo(%struct.nfsm_chain* %26, i32* %263, i32* %265)
  store i32 %266, i32* %19, align 4
  br label %267

267:                                              ; preds = %256, %252, %245
  br label %268

268:                                              ; preds = %267
  %269 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %25)
  %270 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %26)
  %271 = load i32, i32* %19, align 4
  ret i32 %271
}

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i64 @NM_OMFLAG(%struct.nfsmount*, i32) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i32 @nfs_portmap_lookup(%struct.nfsmount*, i32, %struct.sockaddr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i64 @nfsm_rndup(i32) #1

declare dso_local i32 @nfsm_chain_add_name(i32, %struct.nfsm_chain*, i8*, i32, %struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_rpchead2(%struct.nfsmount*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nfs_aux_request(%struct.nfsmount*, i32, %struct.sockaddr*, i32*, i32, i32, i32, i32, i32, %struct.nfsm_chain*) #1

declare dso_local i32 @R_XID32(i32) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_get_fh(i32, %struct.nfsm_chain*, i32, i32*) #1

declare dso_local i32 @nfsm_chain_get_secinfo(%struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
