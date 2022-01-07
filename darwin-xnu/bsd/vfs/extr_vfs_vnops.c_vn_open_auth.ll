; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_open_auth.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_open_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.vnode* }
%struct.nameidata = type { i32, %struct.vnode*, %struct.TYPE_3__, %struct.vnode*, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.vnode_attr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@va_dataprotect_flags = common dso_local global i32 0, align 4
@VA_DP_RAWENCRYPTED = common dso_local global i32 0, align 4
@FENCRYPTED = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@USEDVP = common dso_local global i32 0, align 4
@NOCROSSMOUNT = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@NAMEI_COMPOUNDOPEN = common dso_local global i8* null, align 8
@O_EXCL = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@EKEEPLOOKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"EKEEPLOOKING from a filesystem that doesn't support compound VNOPs?\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Shouldn't have a dvp here.\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@NAMEI_CONTLOOKUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"EKEEPLOOKING, but continue flag not set?\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8
@LOOKUP = common dso_local global i32 0, align 4
@WANTPARENT = common dso_local global i32 0, align 4
@CN_RAW_ENCRYPTED = common dso_local global i32 0, align 4
@CN_SKIPNAMECACHE = common dso_local global i32 0, align 4
@O_SYMLINK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Haven't cleaned up adequately in vn_open_auth()\00", align 1
@FWRITE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [86 x i8] c"Why am I trying to use VNOP_OPEN() on anything other than the root or a named stream?\00", align 1
@VA_DP_RAWUNENCRYPTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"com.apple.private.security.file-unencrypt-access\00", align 1
@FUNENCRYPTED = common dso_local global i32 0, align 4
@VOPENEVT = common dso_local global i32 0, align 4
@P_CHECKOPENEVT = common dso_local global i32 0, align 4
@O_EVTONLY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EREDRIVEOPEN = common dso_local global i32 0, align 4
@RETRY_NO_YIELD_COUNT = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"vn_open_auth_retry\00", align 1
@hz = common dso_local global i32 0, align 4
@CN_ALLOWRSRCFORK = common dso_local global i32 0, align 4
@OP_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_open_auth(%struct.nameidata* %0, i32* %1, %struct.vnode_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vnode_attr*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.vnode_attr* %2, %struct.vnode_attr** %7, align 8
  %21 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  store i32 0, i32* %19, align 4
  br label %25

25:                                               ; preds = %575, %181, %3
  store %struct.vnode* null, %struct.vnode** %8, align 8
  store %struct.vnode* null, %struct.vnode** %9, align 8
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %33 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %13, align 4
  %36 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %37 = load i32, i32* @va_dataprotect_flags, align 4
  %38 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %25
  %41 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %42 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VA_DP_RAWENCRYPTED, align 4
  %45 = call i64 @ISSET(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @FENCRYPTED, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %47, %40, %25
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @O_CREAT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %255

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @O_DIRECTORY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %11, align 4
  br label %578

63:                                               ; preds = %56
  %64 = load i32, i32* @CREATE, align 4
  %65 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %66 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @USEDVP, align 4
  %69 = load i32, i32* @NOCROSSMOUNT, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @LOCKPARENT, align 4
  %77 = load i32, i32* @LOCKLEAF, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @AUDITVNPATH1, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %82 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 8
  %86 = load i8*, i8** @NAMEI_COMPOUNDOPEN, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %89 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @O_EXCL, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %63
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @O_NOFOLLOW, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @FOLLOW, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32, i32* @FOLLOW, align 4
  %106 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %107 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %99, %94, %63
  br label %112

112:                                              ; preds = %235, %155, %111
  %113 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %114 = call i32 @namei(%struct.nameidata* %113)
  store i32 %114, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %578

117:                                              ; preds = %112
  %118 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %119 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %118, i32 0, i32 3
  %120 = load %struct.vnode*, %struct.vnode** %119, align 8
  store %struct.vnode* %120, %struct.vnode** %9, align 8
  %121 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %122 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %121, i32 0, i32 1
  %123 = load %struct.vnode*, %struct.vnode** %122, align 8
  store %struct.vnode* %123, %struct.vnode** %8, align 8
  %124 = load %struct.vnode*, %struct.vnode** %9, align 8
  %125 = call i32 @vnode_compound_open_available(%struct.vnode* %124)
  store i32 %125, i32* %17, align 4
  %126 = load %struct.vnode*, %struct.vnode** %8, align 8
  %127 = icmp eq %struct.vnode* %126, null
  br i1 %127, label %128, label %188

128:                                              ; preds = %117
  %129 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %130 = icmp eq %struct.vnode_attr* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.vnode*, %struct.vnode** %9, align 8
  %133 = call i32 @vnode_put(%struct.vnode* %132)
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %11, align 4
  br label %578

135:                                              ; preds = %128
  %136 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %137 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @vn_open_auth_do_create(%struct.nameidata* %136, %struct.vnode_attr* %137, i32 %138, i32* %14, i32* %15, i64 %139)
  store i32 %140, i32* %11, align 4
  %141 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %142 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %141, i32 0, i32 3
  %143 = load %struct.vnode*, %struct.vnode** %142, align 8
  store %struct.vnode* %143, %struct.vnode** %9, align 8
  %144 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %145 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %144, i32 0, i32 1
  %146 = load %struct.vnode*, %struct.vnode** %145, align 8
  store %struct.vnode* %146, %struct.vnode** %8, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @EKEEPLOOKING, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %135
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = call i32 @panic(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %150
  br label %112

156:                                              ; preds = %135
  %157 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %158 = call i32 @nameidone(%struct.nameidata* %157)
  %159 = load %struct.vnode*, %struct.vnode** %9, align 8
  %160 = icmp ne %struct.vnode* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %156
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %183

166:                                              ; preds = %163
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @EEXIST, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @O_EXCL, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %170
  %176 = load %struct.vnode*, %struct.vnode** %8, align 8
  %177 = icmp ne %struct.vnode* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.vnode*, %struct.vnode** %8, align 8
  %180 = call i32 @vnode_put(%struct.vnode* %179)
  br label %181

181:                                              ; preds = %178, %175
  br label %25

182:                                              ; preds = %170, %166
  br label %528

183:                                              ; preds = %163
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  store i32 %187, i32* %16, align 4
  br label %254

188:                                              ; preds = %117
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @O_EXCL, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* @EEXIST, align 4
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %193, %188
  %196 = load i32, i32* %11, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %238

198:                                              ; preds = %195
  %199 = load i32, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %238

201:                                              ; preds = %198
  %202 = load %struct.vnode*, %struct.vnode** %9, align 8
  %203 = call i64 @vnode_mount(%struct.vnode* %202)
  %204 = load %struct.vnode*, %struct.vnode** %8, align 8
  %205 = call i64 @vnode_mount(%struct.vnode* %204)
  %206 = icmp eq i64 %203, %205
  br i1 %206, label %207, label %238

207:                                              ; preds = %201
  %208 = load %struct.vnode*, %struct.vnode** %9, align 8
  %209 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %210 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %209, i32 0, i32 1
  %211 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i64, i64* %10, align 8
  %214 = call i32 @VNOP_COMPOUND_OPEN(%struct.vnode* %208, %struct.vnode** %210, %struct.nameidata* %211, i32 0, i32 %212, i32* null, i32* null, i64 %213)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %207
  %218 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %219 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %218, i32 0, i32 1
  %220 = load %struct.vnode*, %struct.vnode** %219, align 8
  store %struct.vnode* %220, %struct.vnode** %8, align 8
  %221 = load i32, i32* @FALSE, align 4
  store i32 %221, i32* %16, align 4
  br label %237

222:                                              ; preds = %207
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @EKEEPLOOKING, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %228 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @NAMEI_CONTLOOKUP, align 4
  %231 = and i32 %229, %230
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %226
  br label %112

236:                                              ; preds = %222
  br label %237

237:                                              ; preds = %236, %217
  br label %238

238:                                              ; preds = %237, %201, %198, %195
  %239 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %240 = call i32 @nameidone(%struct.nameidata* %239)
  %241 = load %struct.vnode*, %struct.vnode** %9, align 8
  %242 = call i32 @vnode_put(%struct.vnode* %241)
  %243 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %244 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %245 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %244, i32 0, i32 3
  store %struct.vnode* %243, %struct.vnode** %245, align 8
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %238
  br label %528

249:                                              ; preds = %238
  %250 = load i32, i32* @O_CREAT, align 4
  %251 = xor i32 %250, -1
  %252 = load i32, i32* %12, align 4
  %253 = and i32 %252, %251
  store i32 %253, i32* %12, align 4
  br label %254

254:                                              ; preds = %249, %183
  br label %395

255:                                              ; preds = %51
  %256 = load i32, i32* @LOOKUP, align 4
  %257 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %258 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 2
  store i32 %256, i32* %259, align 4
  %260 = load i32, i32* @USEDVP, align 4
  %261 = load i32, i32* @NOCROSSMOUNT, align 4
  %262 = or i32 %260, %261
  %263 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %264 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, %262
  store i32 %267, i32* %265, align 8
  %268 = load i32, i32* @FOLLOW, align 4
  %269 = load i32, i32* @LOCKLEAF, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @AUDITVNPATH1, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @WANTPARENT, align 4
  %274 = or i32 %272, %273
  %275 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %276 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %274
  store i32 %279, i32* %277, align 8
  %280 = load i32, i32* %12, align 4
  %281 = load i32, i32* @FENCRYPTED, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %255
  %285 = load i32, i32* @CN_RAW_ENCRYPTED, align 4
  %286 = load i32, i32* @CN_SKIPNAMECACHE, align 4
  %287 = or i32 %285, %286
  %288 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %289 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %287
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %284, %255
  %294 = load i8*, i8** @NAMEI_COMPOUNDOPEN, align 8
  %295 = ptrtoint i8* %294 to i32
  %296 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %297 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* @O_NOFOLLOW, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %312, label %302

302:                                              ; preds = %293
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* @O_SYMLINK, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %302
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* @FOLLOW, align 4
  %310 = and i32 %308, %309
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %307, %302, %293
  %313 = load i32, i32* @FOLLOW, align 4
  %314 = xor i32 %313, -1
  %315 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %316 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = and i32 %318, %314
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %312, %307
  br label %321

321:                                              ; preds = %379, %320
  %322 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %323 = call i32 @namei(%struct.nameidata* %322)
  store i32 %323, i32* %11, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %578

326:                                              ; preds = %321
  %327 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %328 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %327, i32 0, i32 1
  %329 = load %struct.vnode*, %struct.vnode** %328, align 8
  store %struct.vnode* %329, %struct.vnode** %8, align 8
  %330 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %331 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %330, i32 0, i32 3
  %332 = load %struct.vnode*, %struct.vnode** %331, align 8
  store %struct.vnode* %332, %struct.vnode** %9, align 8
  %333 = load %struct.vnode*, %struct.vnode** %9, align 8
  %334 = call i32 @vnode_compound_open_available(%struct.vnode* %333)
  store i32 %334, i32* %17, align 4
  %335 = load i32, i32* %17, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %378

337:                                              ; preds = %326
  %338 = load %struct.vnode*, %struct.vnode** %8, align 8
  %339 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %340 = icmp eq %struct.vnode* %338, %339
  br i1 %340, label %347, label %341

341:                                              ; preds = %337
  %342 = load %struct.vnode*, %struct.vnode** %9, align 8
  %343 = call i64 @vnode_mount(%struct.vnode* %342)
  %344 = load %struct.vnode*, %struct.vnode** %8, align 8
  %345 = call i64 @vnode_mount(%struct.vnode* %344)
  %346 = icmp eq i64 %343, %345
  br i1 %346, label %347, label %378

347:                                              ; preds = %341, %337
  %348 = load %struct.vnode*, %struct.vnode** %9, align 8
  %349 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %350 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %349, i32 0, i32 1
  %351 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %352 = load i32, i32* %12, align 4
  %353 = load i64, i64* %10, align 8
  %354 = call i32 @VNOP_COMPOUND_OPEN(%struct.vnode* %348, %struct.vnode** %350, %struct.nameidata* %351, i32 0, i32 %352, i32* null, i32* null, i64 %353)
  store i32 %354, i32* %11, align 4
  %355 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %356 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %355, i32 0, i32 1
  %357 = load %struct.vnode*, %struct.vnode** %356, align 8
  store %struct.vnode* %357, %struct.vnode** %8, align 8
  %358 = load i32, i32* %11, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %347
  %361 = load i32, i32* @FALSE, align 4
  store i32 %361, i32* %16, align 4
  br label %377

362:                                              ; preds = %347
  %363 = load i32, i32* %11, align 4
  %364 = load i32, i32* @EKEEPLOOKING, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %376

366:                                              ; preds = %362
  %367 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %368 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @NAMEI_CONTLOOKUP, align 4
  %371 = and i32 %369, %370
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %366
  %374 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %375

375:                                              ; preds = %373, %366
  br label %376

376:                                              ; preds = %375, %362
  br label %377

377:                                              ; preds = %376, %360
  br label %378

378:                                              ; preds = %377, %341, %326
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %11, align 4
  %381 = load i32, i32* @EKEEPLOOKING, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %321, label %383

383:                                              ; preds = %379
  %384 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %385 = call i32 @nameidone(%struct.nameidata* %384)
  %386 = load %struct.vnode*, %struct.vnode** %9, align 8
  %387 = call i32 @vnode_put(%struct.vnode* %386)
  %388 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %389 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %390 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %389, i32 0, i32 3
  store %struct.vnode* %388, %struct.vnode** %390, align 8
  %391 = load i32, i32* %11, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %383
  br label %528

394:                                              ; preds = %383
  br label %395

395:                                              ; preds = %394, %254
  %396 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %397 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %396, i32 0, i32 3
  %398 = load %struct.vnode*, %struct.vnode** %397, align 8
  %399 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %400 = icmp ne %struct.vnode* %398, %399
  br i1 %400, label %401, label %403

401:                                              ; preds = %395
  %402 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %403

403:                                              ; preds = %401, %395
  %404 = load %struct.vnode*, %struct.vnode** %8, align 8
  %405 = call i64 @vnode_isswap(%struct.vnode* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %420

407:                                              ; preds = %403
  %408 = load i32, i32* %12, align 4
  %409 = load i32, i32* @FWRITE, align 4
  %410 = load i32, i32* @O_TRUNC, align 4
  %411 = or i32 %409, %410
  %412 = and i32 %408, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %420

414:                                              ; preds = %407
  %415 = load i64, i64* %10, align 8
  %416 = call i64 (...) @vfs_context_kernel()
  %417 = icmp ne i64 %415, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %414
  %419 = load i32, i32* @EPERM, align 4
  store i32 %419, i32* %11, align 4
  br label %528

420:                                              ; preds = %414, %407, %403
  %421 = load i32, i32* %16, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %484

423:                                              ; preds = %420
  %424 = load i32, i32* %17, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %436

426:                                              ; preds = %423
  %427 = load %struct.vnode*, %struct.vnode** %8, align 8
  %428 = call i32 @vnode_isvroot(%struct.vnode* %427)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %436, label %430

430:                                              ; preds = %426
  %431 = load %struct.vnode*, %struct.vnode** %8, align 8
  %432 = call i64 @vnode_isnamedstream(%struct.vnode* %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %430
  %435 = call i32 @panic(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  br label %436

436:                                              ; preds = %434, %430, %426, %423
  %437 = load i32, i32* %14, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %450, label %439

439:                                              ; preds = %436
  %440 = load %struct.vnode*, %struct.vnode** %8, align 8
  %441 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %442 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %441, i32 0, i32 2
  %443 = load i32, i32* %12, align 4
  %444 = load i64, i64* %10, align 8
  %445 = call i32 @vn_authorize_open_existing(%struct.vnode* %440, %struct.TYPE_3__* %442, i32 %443, i64 %444, i32* null)
  store i32 %445, i32* %11, align 4
  %446 = load i32, i32* %11, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %439
  br label %528

449:                                              ; preds = %439
  br label %450

450:                                              ; preds = %449, %436
  %451 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %452 = load i32, i32* @va_dataprotect_flags, align 4
  %453 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %451, i32 %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %474

455:                                              ; preds = %450
  %456 = load %struct.vnode_attr*, %struct.vnode_attr** %7, align 8
  %457 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @VA_DP_RAWUNENCRYPTED, align 4
  %460 = call i64 @ISSET(i32 %458, i32 %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %474

462:                                              ; preds = %455
  %463 = load i32, i32* @FALSE, align 4
  store i32 %463, i32* %20, align 4
  %464 = call i32 (...) @current_task()
  %465 = call i32 @IOTaskHasEntitlement(i32 %464, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  store i32 %465, i32* %20, align 4
  %466 = load i32, i32* %20, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %470, label %468

468:                                              ; preds = %462
  %469 = load i32, i32* @EPERM, align 4
  store i32 %469, i32* %11, align 4
  br label %528

470:                                              ; preds = %462
  %471 = load i32, i32* @FUNENCRYPTED, align 4
  %472 = load i32, i32* %12, align 4
  %473 = or i32 %472, %471
  store i32 %473, i32* %12, align 4
  br label %474

474:                                              ; preds = %470, %455, %450
  %475 = load %struct.vnode*, %struct.vnode** %8, align 8
  %476 = load i32, i32* %12, align 4
  %477 = load i64, i64* %10, align 8
  %478 = call i32 @VNOP_OPEN(%struct.vnode* %475, i32 %476, i64 %477)
  store i32 %478, i32* %11, align 4
  %479 = load i32, i32* %11, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %474
  br label %528

482:                                              ; preds = %474
  %483 = load i32, i32* @FALSE, align 4
  store i32 %483, i32* %16, align 4
  br label %484

484:                                              ; preds = %482, %420
  %485 = load i32, i32* %14, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %505, label %487

487:                                              ; preds = %484
  %488 = load %struct.vnode*, %struct.vnode** %8, align 8
  %489 = getelementptr inbounds %struct.vnode, %struct.vnode* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = load i32, i32* @VOPENEVT, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %505

494:                                              ; preds = %487
  %495 = call %struct.TYPE_4__* (...) @current_proc()
  %496 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @P_CHECKOPENEVT, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %505

501:                                              ; preds = %494
  %502 = load i32, i32* @O_EVTONLY, align 4
  %503 = load i32, i32* %12, align 4
  %504 = or i32 %503, %502
  store i32 %504, i32* %12, align 4
  br label %505

505:                                              ; preds = %501, %494, %487, %484
  %506 = load %struct.vnode*, %struct.vnode** %8, align 8
  %507 = load i32, i32* %12, align 4
  %508 = load i64, i64* %10, align 8
  %509 = call i32 @vn_open_auth_finish(%struct.vnode* %506, i32 %507, i64 %508)
  store i32 %509, i32* %11, align 4
  %510 = load i32, i32* %11, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %505
  %513 = load i32, i32* @TRUE, align 4
  store i32 %513, i32* %18, align 4
  br label %528

514:                                              ; preds = %505
  %515 = load i32, i32* %17, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %514
  %518 = load i32, i32* %14, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %525

520:                                              ; preds = %517, %514
  %521 = load i32, i32* @O_TRUNC, align 4
  %522 = xor i32 %521, -1
  %523 = load i32, i32* %12, align 4
  %524 = and i32 %523, %522
  store i32 %524, i32* %12, align 4
  br label %525

525:                                              ; preds = %520, %517
  %526 = load i32, i32* %12, align 4
  %527 = load i32*, i32** %6, align 8
  store i32 %526, i32* %527, align 4
  store i32 0, i32* %4, align 4
  br label %580

528:                                              ; preds = %512, %481, %468, %448, %418, %393, %248, %182
  %529 = load i32, i32* %16, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %536, label %531

531:                                              ; preds = %528
  %532 = load %struct.vnode*, %struct.vnode** %8, align 8
  %533 = load i32, i32* %12, align 4
  %534 = load i64, i64* %10, align 8
  %535 = call i32 @VNOP_CLOSE(%struct.vnode* %532, i32 %533, i64 %534)
  br label %536

536:                                              ; preds = %531, %528
  %537 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %538 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %537, i32 0, i32 1
  store %struct.vnode* null, %struct.vnode** %538, align 8
  %539 = load %struct.vnode*, %struct.vnode** %8, align 8
  %540 = icmp ne %struct.vnode* %539, null
  br i1 %540, label %541, label %577

541:                                              ; preds = %536
  %542 = load %struct.vnode*, %struct.vnode** %8, align 8
  %543 = call i32 @vnode_put(%struct.vnode* %542)
  %544 = load i32, i32* %11, align 4
  %545 = load i32, i32* @ENOENT, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %553

547:                                              ; preds = %541
  %548 = load i32*, i32** %6, align 8
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* @O_CREAT, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %560, label %553

553:                                              ; preds = %547, %541
  %554 = load i32, i32* %11, align 4
  %555 = load i32, i32* @EREDRIVEOPEN, align 4
  %556 = icmp eq i32 %554, %555
  br i1 %556, label %560, label %557

557:                                              ; preds = %553
  %558 = load i32, i32* %18, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %576

560:                                              ; preds = %557, %553, %547
  %561 = load i32, i32* %19, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %19, align 4
  %563 = load i32, i32* %19, align 4
  %564 = load i32, i32* @RETRY_NO_YIELD_COUNT, align 4
  %565 = icmp sgt i32 %563, %564
  br i1 %565, label %566, label %575

566:                                              ; preds = %560
  %567 = load i32, i32* @PVFS, align 4
  %568 = load i32, i32* %19, align 4
  %569 = load i32, i32* @hz, align 4
  %570 = sdiv i32 %569, 100
  %571 = mul nsw i32 %568, %570
  %572 = load i32, i32* @hz, align 4
  %573 = call i32 @MIN(i32 %571, i32 %572)
  %574 = call i32 @tsleep(i32* %19, i32 %567, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %573)
  br label %575

575:                                              ; preds = %566, %560
  br label %25

576:                                              ; preds = %557
  br label %577

577:                                              ; preds = %576, %536
  br label %578

578:                                              ; preds = %577, %325, %131, %116, %61
  %579 = load i32, i32* %11, align 4
  store i32 %579, i32* %4, align 4
  br label %580

580:                                              ; preds = %578, %525
  %581 = load i32, i32* %4, align 4
  ret i32 %581
}

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vnode_compound_open_available(%struct.vnode*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @vn_open_auth_do_create(%struct.nameidata*, %struct.vnode_attr*, i32, i32*, i32*, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i64 @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @VNOP_COMPOUND_OPEN(%struct.vnode*, %struct.vnode**, %struct.nameidata*, i32, i32, i32*, i32*, i64) #1

declare dso_local i64 @vnode_isswap(%struct.vnode*) #1

declare dso_local i64 @vfs_context_kernel(...) #1

declare dso_local i32 @vnode_isvroot(%struct.vnode*) #1

declare dso_local i64 @vnode_isnamedstream(%struct.vnode*) #1

declare dso_local i32 @vn_authorize_open_existing(%struct.vnode*, %struct.TYPE_3__*, i32, i64, i32*) #1

declare dso_local i32 @IOTaskHasEntitlement(i32, i8*) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @VNOP_OPEN(%struct.vnode*, i32, i64) #1

declare dso_local %struct.TYPE_4__* @current_proc(...) #1

declare dso_local i32 @vn_open_auth_finish(%struct.vnode*, i32, i64) #1

declare dso_local i32 @VNOP_CLOSE(%struct.vnode*, i32, i64) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
