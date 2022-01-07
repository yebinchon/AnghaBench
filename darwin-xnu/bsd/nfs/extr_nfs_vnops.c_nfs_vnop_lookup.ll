; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_vnop_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.vnop_lookup_args = type { i64*, i64, %struct.componentname*, i32 }
%struct.componentname = type { i32, i8*, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.nfsmount = type { i32, %struct.TYPE_25__*, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_26__*, i8*, i32, i32, %struct.nfsreq**)*, i32 (%struct.TYPE_26__*, i8*, i32, i32, %struct.nfsreq*, i32*, %struct.TYPE_27__*, %struct.nfs_vattr*)* }
%struct.nfsreq = type { i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.nfs_vattr = type { i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.vnop_access_args = type { i32, i32, i64, i32* }

@NULLVP = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@NONEGNAMECACHE = common dso_local global i32 0, align 4
@NGA_CACHED = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@RDIRPLUS = common dso_local global i32 0, align 4
@nfsstats = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@vnop_access_desc = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFS_FFLAG_TRIGGER = common dso_local global i32 0, align 4
@NFS_FATTR_MAXNAME = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@NG_MAKEENTRY = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@NNEGNCENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_vnop_lookup(%struct.vnop_lookup_args* %0) #0 {
  %2 = alloca %struct.vnop_lookup_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.nfsmount*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nfs_vattr, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.vnop_access_args, align 8
  %23 = alloca %struct.TYPE_27__, align 8
  %24 = alloca %struct.nfsreq, align 4
  %25 = alloca %struct.nfsreq*, align 8
  store %struct.vnop_lookup_args* %0, %struct.vnop_lookup_args** %2, align 8
  %26 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %27 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  %29 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %30 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %29, i32 0, i32 2
  %31 = load %struct.componentname*, %struct.componentname** %30, align 8
  store %struct.componentname* %31, %struct.componentname** %4, align 8
  %32 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %33 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %36 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  store i64* %37, i64** %6, align 8
  %38 = load %struct.componentname*, %struct.componentname** %4, align 8
  %39 = getelementptr inbounds %struct.componentname, %struct.componentname* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  store i32 129, i32* %15, align 4
  store %struct.nfsreq* %24, %struct.nfsreq** %25, align 8
  %41 = load i64, i64* @NULLVP, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call %struct.TYPE_26__* @VTONFS(i64 %43)
  store %struct.TYPE_26__* %44, %struct.TYPE_26__** %9, align 8
  %45 = call i32 @NVATTR_INIT(%struct.nfs_vattr* %20)
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @vnode_mount(i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call %struct.nfsmount* @VFSTONFS(i64 %48)
  store %struct.nfsmount* %49, %struct.nfsmount** %11, align 8
  %50 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %51 = call i64 @nfs_mount_gone(%struct.nfsmount* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %14, align 4
  br label %418

55:                                               ; preds = %1
  %56 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %57 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %13, align 4
  %59 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %60 = load i32, i32* @NONEGNAMECACHE, align 4
  %61 = call i64 @NMFLAG(%struct.nfsmount* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %18, align 4
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @vfs_context_thread(i32 %66)
  %68 = call i32 @nfs_node_set_busy(%struct.TYPE_26__* %65, i32 %67)
  store i32 %68, i32* %15, align 4
  store i32 %68, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %418

71:                                               ; preds = %55
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @NGA_CACHED, align 4
  %75 = call i32 @nfs_getattr(%struct.TYPE_26__* %72, i32* null, i32 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %418

78:                                               ; preds = %71
  %79 = load i64, i64* %5, align 8
  %80 = load i64*, i64** %6, align 8
  %81 = load %struct.componentname*, %struct.componentname** %4, align 8
  %82 = call i32 @cache_lookup(i64 %79, i64* %80, %struct.componentname* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  switch i32 %83, label %126 [
    i32 129, label %84
    i32 0, label %85
    i32 -1, label %114
  ]

84:                                               ; preds = %78
  br label %418

85:                                               ; preds = %78
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @NFS_VER2, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %85
  %90 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %91 = load i32, i32* @RDIRPLUS, align 4
  %92 = call i64 @NMFLAG(%struct.nfsmount* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %96 = load %struct.componentname*, %struct.componentname** %4, align 8
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @nfs_dir_buf_cache_lookup(%struct.TYPE_26__* %95, %struct.TYPE_26__** %10, %struct.componentname* %96, i32 %97, i32 0)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %103 = icmp ne %struct.TYPE_26__* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %106 = call i64 @NFSTOV(%struct.TYPE_26__* %105)
  %107 = load i64*, i64** %6, align 8
  store i64 %106, i64* %107, align 8
  store i32 -1, i32* %14, align 4
  br label %108

108:                                              ; preds = %104, %101, %94
  br label %109

109:                                              ; preds = %108, %89, %85
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %127

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %78, %113
  %115 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @nfsstats, i32 0, i32 1))
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %117 = call i32 @nfs_node_clear_busy(%struct.TYPE_26__* %116)
  store i32 129, i32* %15, align 4
  %118 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %22, i32 0, i32 3
  store i32* @vnop_access_desc, i32** %118, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %22, i32 0, i32 2
  store i64 %119, i64* %120, align 8
  %121 = load i32, i32* @KAUTH_VNODE_SEARCH, align 4
  %122 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %22, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %3, align 4
  %124 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %22, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = call i32 @nfs_vnop_access(%struct.vnop_access_args* %22)
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %78, %114
  br label %418

127:                                              ; preds = %112
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %128 = load %struct.componentname*, %struct.componentname** %4, align 8
  %129 = getelementptr inbounds %struct.componentname, %struct.componentname* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 46
  br i1 %134, label %135, label %156

135:                                              ; preds = %127
  %136 = load %struct.componentname*, %struct.componentname** %4, align 8
  %137 = getelementptr inbounds %struct.componentname, %struct.componentname* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 1, i32* %16, align 4
  br label %141

141:                                              ; preds = %140, %135
  %142 = load %struct.componentname*, %struct.componentname** %4, align 8
  %143 = getelementptr inbounds %struct.componentname, %struct.componentname* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.componentname*, %struct.componentname** %4, align 8
  %148 = getelementptr inbounds %struct.componentname, %struct.componentname* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 46
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  store i32 1, i32* %17, align 4
  br label %155

155:                                              ; preds = %154, %146, %141
  br label %156

156:                                              ; preds = %155, %127
  %157 = load i32, i32* %17, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159, %156
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  store i64 0, i64* %163, align 8
  br label %247

164:                                              ; preds = %159
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @NFS_VER4, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @NFS_FFLAG_TRIGGER, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 129, i32* %14, align 4
  br label %418

177:                                              ; preds = %168, %164
  %178 = load i64, i64* %5, align 8
  %179 = call %struct.nfsmount* @VTONMP(i64 %178)
  store %struct.nfsmount* %179, %struct.nfsmount** %11, align 8
  %180 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %181 = call i64 @nfs_mount_gone(%struct.nfsmount* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* @ENXIO, align 4
  store i32 %184, i32* %14, align 4
  br label %418

185:                                              ; preds = %177
  %186 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %187 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @NFS_FATTR_MAXNAME, align 4
  %191 = call i64 @NFS_BITMAP_ISSET(i32 %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %185
  %194 = load %struct.componentname*, %struct.componentname** %4, align 8
  %195 = getelementptr inbounds %struct.componentname, %struct.componentname* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %198 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = icmp sgt i32 %196, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %193
  %204 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %204, i32* %14, align 4
  br label %418

205:                                              ; preds = %193, %185
  store i32 0, i32* %14, align 4
  %206 = load i64, i64* @NULLVP, align 8
  store i64 %206, i64* %8, align 8
  %207 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @nfsstats, i32 0, i32 0))
  %208 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %209 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %208, i32 0, i32 1
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 0
  %212 = load i32 (%struct.TYPE_26__*, i8*, i32, i32, %struct.nfsreq**)*, i32 (%struct.TYPE_26__*, i8*, i32, i32, %struct.nfsreq**)** %211, align 8
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %214 = load %struct.componentname*, %struct.componentname** %4, align 8
  %215 = getelementptr inbounds %struct.componentname, %struct.componentname* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.componentname*, %struct.componentname** %4, align 8
  %218 = getelementptr inbounds %struct.componentname, %struct.componentname* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %3, align 4
  %221 = call i32 %212(%struct.TYPE_26__* %213, i8* %216, i32 %219, i32 %220, %struct.nfsreq** %25)
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @nfsmout_if(i32 %222)
  %224 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %225 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %224, i32 0, i32 1
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 1
  %228 = load i32 (%struct.TYPE_26__*, i8*, i32, i32, %struct.nfsreq*, i32*, %struct.TYPE_27__*, %struct.nfs_vattr*)*, i32 (%struct.TYPE_26__*, i8*, i32, i32, %struct.nfsreq*, i32*, %struct.TYPE_27__*, %struct.nfs_vattr*)** %227, align 8
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %230 = load %struct.componentname*, %struct.componentname** %4, align 8
  %231 = getelementptr inbounds %struct.componentname, %struct.componentname* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.componentname*, %struct.componentname** %4, align 8
  %234 = getelementptr inbounds %struct.componentname, %struct.componentname* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %3, align 4
  %237 = load %struct.nfsreq*, %struct.nfsreq** %25, align 8
  %238 = call i32 %228(%struct.TYPE_26__* %229, i8* %232, i32 %235, i32 %236, %struct.nfsreq* %237, i32* %19, %struct.TYPE_27__* %23, %struct.nfs_vattr* %20)
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @nfsmout_if(i32 %239)
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @NFS_CMPFH(%struct.TYPE_26__* %241, i32 %243, i64 %245)
  store i32 %246, i32* %16, align 4
  br label %247

247:                                              ; preds = %205, %162
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* @ISLASTCN, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %276

252:                                              ; preds = %247
  %253 = load %struct.componentname*, %struct.componentname** %4, align 8
  %254 = getelementptr inbounds %struct.componentname, %struct.componentname* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %275 [
    i32 130, label %256
    i32 128, label %263
  ]

256:                                              ; preds = %252
  %257 = load i32, i32* @MAKEENTRY, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.componentname*, %struct.componentname** %4, align 8
  %260 = getelementptr inbounds %struct.componentname, %struct.componentname* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %275

263:                                              ; preds = %252
  %264 = load i32, i32* @MAKEENTRY, align 4
  %265 = xor i32 %264, -1
  %266 = load %struct.componentname*, %struct.componentname** %4, align 8
  %267 = getelementptr inbounds %struct.componentname, %struct.componentname* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, %265
  store i32 %269, i32* %267, align 8
  %270 = load i32, i32* %16, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %263
  %273 = load i32, i32* @EISDIR, align 4
  store i32 %273, i32* %14, align 4
  br label %418

274:                                              ; preds = %263
  br label %275

275:                                              ; preds = %252, %274, %256
  br label %276

276:                                              ; preds = %275, %247
  %277 = load i32, i32* %17, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %276
  %280 = load i64, i64* %5, align 8
  %281 = call i64 @vnode_getparent(i64 %280)
  store i64 %281, i64* %8, align 8
  %282 = load i64, i64* %8, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %279
  store i32 129, i32* %14, align 4
  br label %418

285:                                              ; preds = %279
  br label %346

286:                                              ; preds = %276
  %287 = load i32, i32* %16, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %314

289:                                              ; preds = %286
  %290 = load i64, i64* %5, align 8
  %291 = call i32 @vnode_get(i64 %290)
  store i32 %291, i32* %14, align 4
  %292 = load i32, i32* %14, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %418

295:                                              ; preds = %289
  %296 = load i64, i64* %5, align 8
  store i64 %296, i64* %8, align 8
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %298 = call i32 @nfs_node_lock_force(%struct.TYPE_26__* %297)
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %295
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %19, align 4
  %307 = icmp sle i32 %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %302
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %310 = call i32 @nfs_loadattrcache(%struct.TYPE_26__* %309, %struct.nfs_vattr* %20, i32* %19, i32 0)
  br label %311

311:                                              ; preds = %308, %302, %295
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %313 = call i32 @nfs_node_unlock(%struct.TYPE_26__* %312)
  br label %345

314:                                              ; preds = %286
  %315 = load %struct.componentname*, %struct.componentname** %4, align 8
  %316 = getelementptr inbounds %struct.componentname, %struct.componentname* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @MAKEENTRY, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %314
  %322 = load i32, i32* @NG_MAKEENTRY, align 4
  br label %324

323:                                              ; preds = %314
  br label %324

324:                                              ; preds = %323, %321
  %325 = phi i32 [ %322, %321 ], [ 0, %323 ]
  store i32 %325, i32* %21, align 4
  %326 = load i64, i64* %12, align 8
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %328 = load %struct.componentname*, %struct.componentname** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = getelementptr inbounds %struct.nfsreq, %struct.nfsreq* %24, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %21, align 4
  %336 = call i32 @nfs_nget(i64 %326, %struct.TYPE_26__* %327, %struct.componentname* %328, i32 %330, i64 %332, %struct.nfs_vattr* %20, i32* %19, i32 %334, i32 %335, %struct.TYPE_26__** %10)
  store i32 %336, i32* %14, align 4
  %337 = load i32, i32* %14, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %324
  br label %418

340:                                              ; preds = %324
  %341 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %342 = call i64 @NFSTOV(%struct.TYPE_26__* %341)
  store i64 %342, i64* %8, align 8
  %343 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %344 = call i32 @nfs_node_unlock(%struct.TYPE_26__* %343)
  br label %345

345:                                              ; preds = %340, %311
  br label %346

346:                                              ; preds = %345, %285
  %347 = load i64, i64* %8, align 8
  %348 = load i64*, i64** %6, align 8
  store i64 %347, i64* %348, align 8
  br label %349

349:                                              ; preds = %346
  %350 = load i32, i32* %14, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %385

352:                                              ; preds = %349
  %353 = load %struct.componentname*, %struct.componentname** %4, align 8
  %354 = getelementptr inbounds %struct.componentname, %struct.componentname* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @CREATE, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %363, label %358

358:                                              ; preds = %352
  %359 = load %struct.componentname*, %struct.componentname** %4, align 8
  %360 = getelementptr inbounds %struct.componentname, %struct.componentname* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %361, 128
  br i1 %362, label %363, label %384

363:                                              ; preds = %358, %352
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* @ISLASTCN, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %384

368:                                              ; preds = %363
  %369 = load i32, i32* %14, align 4
  %370 = icmp eq i32 %369, 129
  br i1 %370, label %371, label %384

371:                                              ; preds = %368
  %372 = load i64, i64* %5, align 8
  %373 = call i64 @vnode_mount(i64 %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %371
  %376 = load i64, i64* %5, align 8
  %377 = call i64 @vnode_vfsisrdonly(i64 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %375
  %380 = load i32, i32* @EROFS, align 4
  store i32 %380, i32* %14, align 4
  br label %383

381:                                              ; preds = %375, %371
  %382 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %382, i32* %14, align 4
  br label %383

383:                                              ; preds = %381, %379
  br label %384

384:                                              ; preds = %383, %368, %363, %358
  br label %385

385:                                              ; preds = %384, %349
  %386 = load i32, i32* %14, align 4
  %387 = icmp eq i32 %386, 129
  br i1 %387, label %388, label %417

388:                                              ; preds = %385
  %389 = load %struct.componentname*, %struct.componentname** %4, align 8
  %390 = getelementptr inbounds %struct.componentname, %struct.componentname* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @MAKEENTRY, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %417

395:                                              ; preds = %388
  %396 = load %struct.componentname*, %struct.componentname** %4, align 8
  %397 = getelementptr inbounds %struct.componentname, %struct.componentname* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @CREATE, align 4
  %400 = icmp ne i32 %398, %399
  br i1 %400, label %401, label %417

401:                                              ; preds = %395
  %402 = load i32, i32* %18, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %417

404:                                              ; preds = %401
  %405 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %406 = call i32 @nfs_node_lock_force(%struct.TYPE_26__* %405)
  %407 = load i64, i64* %5, align 8
  %408 = load %struct.componentname*, %struct.componentname** %4, align 8
  %409 = call i32 @cache_enter(i64 %407, i32* null, %struct.componentname* %408)
  %410 = load i32, i32* @NNEGNCENTRIES, align 4
  %411 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = or i32 %413, %410
  store i32 %414, i32* %412, align 4
  %415 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %416 = call i32 @nfs_node_unlock(%struct.TYPE_26__* %415)
  br label %417

417:                                              ; preds = %404, %401, %395, %388, %385
  br label %418

418:                                              ; preds = %417, %339, %294, %284, %272, %203, %183, %176, %126, %84, %77, %70, %53
  %419 = call i32 @NVATTR_CLEANUP(%struct.nfs_vattr* %20)
  %420 = load i32, i32* %15, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %418
  %423 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %424 = call i32 @nfs_node_clear_busy(%struct.TYPE_26__* %423)
  br label %425

425:                                              ; preds = %422, %418
  %426 = load i32, i32* %14, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %438

428:                                              ; preds = %425
  %429 = load i64*, i64** %6, align 8
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %438

432:                                              ; preds = %428
  %433 = load i64*, i64** %6, align 8
  %434 = load i64, i64* %433, align 8
  %435 = call i32 @vnode_put(i64 %434)
  %436 = load i64, i64* @NULLVP, align 8
  %437 = load i64*, i64** %6, align 8
  store i64 %436, i64* %437, align 8
  br label %438

438:                                              ; preds = %432, %428, %425
  %439 = load i32, i32* %14, align 4
  ret i32 %439
}

declare dso_local %struct.TYPE_26__* @VTONFS(i64) #1

declare dso_local i32 @NVATTR_INIT(%struct.nfs_vattr*) #1

declare dso_local i64 @vnode_mount(i64) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i64) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i64 @NMFLAG(%struct.nfsmount*, i32) #1

declare dso_local i32 @nfs_node_set_busy(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @nfs_getattr(%struct.TYPE_26__*, i32*, i32, i32) #1

declare dso_local i32 @cache_lookup(i64, i64*, %struct.componentname*) #1

declare dso_local i32 @nfs_dir_buf_cache_lookup(%struct.TYPE_26__*, %struct.TYPE_26__**, %struct.componentname*, i32, i32) #1

declare dso_local i64 @NFSTOV(%struct.TYPE_26__*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @nfs_node_clear_busy(%struct.TYPE_26__*) #1

declare dso_local i32 @nfs_vnop_access(%struct.vnop_access_args*) #1

declare dso_local %struct.nfsmount* @VTONMP(i64) #1

declare dso_local i64 @NFS_BITMAP_ISSET(i32, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @NFS_CMPFH(%struct.TYPE_26__*, i32, i64) #1

declare dso_local i64 @vnode_getparent(i64) #1

declare dso_local i32 @vnode_get(i64) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_26__*) #1

declare dso_local i32 @nfs_loadattrcache(%struct.TYPE_26__*, %struct.nfs_vattr*, i32*, i32) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_26__*) #1

declare dso_local i32 @nfs_nget(i64, %struct.TYPE_26__*, %struct.componentname*, i32, i64, %struct.nfs_vattr*, i32*, i32, i32, %struct.TYPE_26__**) #1

declare dso_local i64 @vnode_vfsisrdonly(i64) #1

declare dso_local i32 @cache_enter(i64, i32*, %struct.componentname*) #1

declare dso_local i32 @NVATTR_CLEANUP(%struct.nfs_vattr*) #1

declare dso_local i32 @vnode_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
