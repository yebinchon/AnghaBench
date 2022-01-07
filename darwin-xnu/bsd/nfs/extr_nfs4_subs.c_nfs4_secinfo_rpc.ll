; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_secinfo_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_secinfo_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32, i32 }
%struct.nfsreq_secinfo_args = type { i32, i8*, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32*, i32*, %struct.TYPE_8__, %struct.nfs_sillyrename* }
%struct.TYPE_8__ = type { i32 }
%struct.nfs_sillyrename = type { i8*, i32, %struct.TYPE_9__* }
%struct.nfsm_chain = type { i32 }

@NULLVP = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NFS_FFLAG_IS_ATTR = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"secinfo\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_PUTROOTFH = common dso_local global i32 0, align 4
@NFS_OP_SECINFO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_secinfo_rpc(%struct.nfsmount* %0, %struct.nfsreq_secinfo_args* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsmount*, align 8
  %8 = alloca %struct.nfsreq_secinfo_args*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.nfsm_chain, align 4
  %26 = alloca %struct.nfsm_chain, align 4
  %27 = alloca %struct.nfs_sillyrename*, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %7, align 8
  store %struct.nfsreq_secinfo_args* %1, %struct.nfsreq_secinfo_args** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load i32*, i32** @NULLVP, align 8
  store i32* %28, i32** %18, align 8
  store i8* null, i8** %22, align 8
  %29 = load i32*, i32** %11, align 8
  store i32 0, i32* %29, align 4
  %30 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %31 = call i64 @nfs_mount_gone(%struct.nfsmount* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %6, align 4
  br label %308

35:                                               ; preds = %5
  %36 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %37 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.nfsreq_secinfo_args*, %struct.nfsreq_secinfo_args** %8, align 8
  %40 = getelementptr inbounds %struct.nfsreq_secinfo_args, %struct.nfsreq_secinfo_args* %39, i32 0, i32 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %19, align 8
  %42 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %25)
  %43 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %26)
  %44 = load %struct.nfsreq_secinfo_args*, %struct.nfsreq_secinfo_args** %8, align 8
  %45 = getelementptr inbounds %struct.nfsreq_secinfo_args, %struct.nfsreq_secinfo_args* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %21, align 8
  %47 = load i32*, i32** %21, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load %struct.nfsreq_secinfo_args*, %struct.nfsreq_secinfo_args** %8, align 8
  %51 = getelementptr inbounds %struct.nfsreq_secinfo_args, %struct.nfsreq_secinfo_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  br label %54

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ %52, %49 ], [ 0, %53 ]
  store i32 %55, i32* %17, align 4
  %56 = load %struct.nfsreq_secinfo_args*, %struct.nfsreq_secinfo_args** %8, align 8
  %57 = getelementptr inbounds %struct.nfsreq_secinfo_args, %struct.nfsreq_secinfo_args* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %23, align 8
  %59 = load i8*, i8** %23, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.nfsreq_secinfo_args*, %struct.nfsreq_secinfo_args** %8, align 8
  %63 = getelementptr inbounds %struct.nfsreq_secinfo_args, %struct.nfsreq_secinfo_args* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  br label %66

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ 0, %65 ]
  store i32 %67, i32* %16, align 4
  %68 = load i8*, i8** %23, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %23, align 8
  %75 = call i32 @strlen(i8* %74)
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %73, %70, %66
  %77 = load i32*, i32** %21, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %23, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %84 = icmp ne %struct.TYPE_9__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %204

86:                                               ; preds = %82
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %21, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %86, %79, %76
  %94 = load i32*, i32** %21, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i8*, i8** %23, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %204

100:                                              ; preds = %96, %93
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %102 = icmp ne %struct.TYPE_9__* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @EIO, align 4
  store i32 %104, i32* %6, align 4
  br label %308

105:                                              ; preds = %100
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %107 = call i32 @nfs_node_lock_force(%struct.TYPE_9__* %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %109 = call i32* @NFSTOV(%struct.TYPE_9__* %108)
  %110 = call i64 @vnode_vtype(i32* %109)
  %111 = load i64, i64* @VDIR, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %146

113:                                              ; preds = %105
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %115, align 8
  %117 = icmp ne %struct.nfs_sillyrename* %116, null
  br i1 %117, label %118, label %146

118:                                              ; preds = %113
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  %121 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %120, align 8
  store %struct.nfs_sillyrename* %121, %struct.nfs_sillyrename** %27, align 8
  %122 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %27, align 8
  %123 = getelementptr inbounds %struct.nfs_sillyrename, %struct.nfs_sillyrename* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %20, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %126 = call i32* @NFSTOV(%struct.TYPE_9__* %125)
  store i32* %126, i32** %18, align 8
  %127 = load i32*, i32** %18, align 8
  %128 = call i32 @vnode_get(i32* %127)
  store i32 %128, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %132 = call i32 @nfs_node_unlock(%struct.TYPE_9__* %131)
  br label %291

133:                                              ; preds = %118
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %21, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %17, align 4
  %140 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %27, align 8
  %141 = getelementptr inbounds %struct.nfs_sillyrename, %struct.nfs_sillyrename* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %23, align 8
  %143 = load %struct.nfs_sillyrename*, %struct.nfs_sillyrename** %27, align 8
  %144 = getelementptr inbounds %struct.nfs_sillyrename, %struct.nfs_sillyrename* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %16, align 4
  br label %201

146:                                              ; preds = %113, %105
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @NFS_FFLAG_IS_ATTR, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %146
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %18, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i32*, i32** %18, align 8
  %161 = call i32 @vnode_get(i32* %160)
  store i32 %161, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32* null, i32** %18, align 8
  br label %164

164:                                              ; preds = %163, %159, %154, %146
  %165 = load i32*, i32** %18, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %169 = call i32* @NFSTOV(%struct.TYPE_9__* %168)
  %170 = call i32* @vnode_getparent(i32* %169)
  store i32* %170, i32** %18, align 8
  br label %171

171:                                              ; preds = %167, %164
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %173 = call i32* @NFSTOV(%struct.TYPE_9__* %172)
  %174 = call i8* @vnode_getname(i32* %173)
  store i8* %174, i8** %22, align 8
  %175 = load i32*, i32** %18, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i8*, i8** %22, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %177, %171
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* @EIO, align 4
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %183, %180
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %187 = call i32 @nfs_node_unlock(%struct.TYPE_9__* %186)
  br label %291

188:                                              ; preds = %177
  %189 = load i32*, i32** %18, align 8
  %190 = call %struct.TYPE_9__* @VTONFS(i32* %189)
  store %struct.TYPE_9__* %190, %struct.TYPE_9__** %20, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %21, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %17, align 4
  %197 = load i8*, i8** %22, align 8
  store i8* %197, i8** %23, align 8
  %198 = load i8*, i8** %22, align 8
  %199 = load i32, i32* @MAXPATHLEN, align 4
  %200 = call i32 @strnlen(i8* %198, i32 %199)
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %188, %133
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %203 = call i32 @nfs_node_unlock(%struct.TYPE_9__* %202)
  br label %204

204:                                              ; preds = %201, %99, %85
  store i32 2, i32* %15, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* @NFSX_UNSIGNED, align 4
  %207 = mul nsw i32 4, %206
  %208 = sext i32 %207 to i64
  %209 = load i32, i32* %14, align 4
  %210 = call i64 @NFSX_FH(i32 %209)
  %211 = add nsw i64 %208, %210
  %212 = load i32, i32* %16, align 4
  %213 = call i64 @nfsm_rndup(i32 %212)
  %214 = add nsw i64 %211, %213
  %215 = call i32 @nfsm_chain_build_alloc_init(i32 %205, %struct.nfsm_chain* %25, i64 %214)
  %216 = load i32, i32* %12, align 4
  %217 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %218 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %15, align 4
  %221 = call i32 @nfsm_chain_add_compound_header(i32 %216, %struct.nfsm_chain* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %219, i32 %220)
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %15, align 4
  %224 = load i32*, i32** %21, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %235

226:                                              ; preds = %204
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @NFS_OP_PUTFH, align 4
  %229 = call i32 @nfsm_chain_add_32(i32 %227, %struct.nfsm_chain* %25, i32 %228)
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %14, align 4
  %232 = load i32*, i32** %21, align 8
  %233 = load i32, i32* %17, align 4
  %234 = call i32 @nfsm_chain_add_fh(i32 %230, %struct.nfsm_chain* %25, i32 %231, i32* %232, i32 %233)
  br label %239

235:                                              ; preds = %204
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* @NFS_OP_PUTROOTFH, align 4
  %238 = call i32 @nfsm_chain_add_32(i32 %236, %struct.nfsm_chain* %25, i32 %237)
  br label %239

239:                                              ; preds = %235, %226
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %15, align 4
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* @NFS_OP_SECINFO, align 4
  %244 = call i32 @nfsm_chain_add_32(i32 %242, %struct.nfsm_chain* %25, i32 %243)
  %245 = load i32, i32* %12, align 4
  %246 = load i8*, i8** %23, align 8
  %247 = load i32, i32* %16, align 4
  %248 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %249 = call i32 @nfsm_chain_add_name(i32 %245, %struct.nfsm_chain* %25, i8* %246, i32 %247, %struct.nfsmount* %248)
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @nfsm_chain_build_done(i32 %250, %struct.nfsm_chain* %25)
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %15, align 4
  %254 = icmp eq i32 %253, 0
  %255 = zext i1 %254 to i32
  %256 = load i32, i32* @EPROTO, align 4
  %257 = call i32 @nfsm_assert(i32 %252, i32 %255, i32 %256)
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @nfsmout_if(i32 %258)
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %261 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %262 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %265 = call i32 (...) @current_thread()
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @nfs_request2(%struct.TYPE_9__* %260, i32 %263, %struct.nfsm_chain* %25, i32 %264, i32 %265, i32 %266, i32* null, i32 0, %struct.nfsm_chain* %26, i32* %24, i32* %13)
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %12, align 4
  %269 = call i32 @nfsm_chain_skip_tag(i32 %268, %struct.nfsm_chain* %26)
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %15, align 4
  %272 = call i32 @nfsm_chain_get_32(i32 %270, %struct.nfsm_chain* %26, i32 %271)
  %273 = load i32, i32* %12, align 4
  %274 = load i32*, i32** %21, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %239
  %277 = load i32, i32* @NFS_OP_PUTFH, align 4
  br label %280

278:                                              ; preds = %239
  %279 = load i32, i32* @NFS_OP_PUTROOTFH, align 4
  br label %280

280:                                              ; preds = %278, %276
  %281 = phi i32 [ %277, %276 ], [ %279, %278 ]
  %282 = call i32 @nfsm_chain_op_check(i32 %273, %struct.nfsm_chain* %26, i32 %281)
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* @NFS_OP_SECINFO, align 4
  %285 = call i32 @nfsm_chain_op_check(i32 %283, %struct.nfsm_chain* %26, i32 %284)
  %286 = load i32, i32* %12, align 4
  %287 = call i32 @nfsmout_if(i32 %286)
  %288 = load i32*, i32** %10, align 8
  %289 = load i32*, i32** %11, align 8
  %290 = call i32 @nfsm_chain_get_secinfo(%struct.nfsm_chain* %26, i32* %288, i32* %289)
  store i32 %290, i32* %12, align 4
  br label %291

291:                                              ; preds = %280, %185, %130
  %292 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %25)
  %293 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %26)
  %294 = load i8*, i8** %22, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load i8*, i8** %22, align 8
  %298 = call i32 @vnode_putname(i8* %297)
  br label %299

299:                                              ; preds = %296, %291
  %300 = load i32*, i32** %18, align 8
  %301 = load i32*, i32** @NULLVP, align 8
  %302 = icmp ne i32* %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %299
  %304 = load i32*, i32** %18, align 8
  %305 = call i32 @vnode_put(i32* %304)
  br label %306

306:                                              ; preds = %303, %299
  %307 = load i32, i32* %12, align 4
  store i32 %307, i32* %6, align 4
  br label %308

308:                                              ; preds = %306, %103, %33
  %309 = load i32, i32* %6, align 4
  ret i32 %309
}

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_9__*) #1

declare dso_local i64 @vnode_vtype(i32*) #1

declare dso_local i32* @NFSTOV(%struct.TYPE_9__*) #1

declare dso_local i32 @vnode_get(i32*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_9__*) #1

declare dso_local i32* @vnode_getparent(i32*) #1

declare dso_local i8* @vnode_getname(i32*) #1

declare dso_local %struct.TYPE_9__* @VTONFS(i32*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i64 @NFSX_FH(i32) #1

declare dso_local i64 @nfsm_rndup(i32) #1

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32*, i32) #1

declare dso_local i32 @nfsm_chain_add_name(i32, %struct.nfsm_chain*, i8*, i32, %struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_assert(i32, i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(%struct.TYPE_9__*, i32, %struct.nfsm_chain*, i32, i32, i32, i32*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_get_secinfo(%struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

declare dso_local i32 @vnode_putname(i8*) #1

declare dso_local i32 @vnode_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
