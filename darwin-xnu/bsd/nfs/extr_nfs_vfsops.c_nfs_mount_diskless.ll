; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_mount_diskless.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_mount_diskless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_dlmount = type { i8*, i64, i32, i32*, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.xdrbuf = type { i32 }

@MAX_IPv4_STR_LEN = common dso_local global i32 0, align 4
@NFS_MATTR_BITMAP_LEN = common dso_local global i32 0, align 4
@NFS_MFLAG_BITMAP_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"nfs_mount_diskless: NFS not configured\0A\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"nfs_mount_diskless: bad address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFS_MATTR_NFS_VERSION = common dso_local global i32 0, align 4
@NFS_MATTR_SOCKET_TYPE = common dso_local global i32 0, align 4
@NFS_MATTR_NFS_PORT = common dso_local global i32 0, align 4
@NFS_MATTR_FH = common dso_local global i32 0, align 4
@NFS_MATTR_FS_LOCATIONS = common dso_local global i32 0, align 4
@NFS_MATTR_MNTFLAGS = common dso_local global i32 0, align 4
@NFS_MFLAG_RESVPORT = common dso_local global i32 0, align 4
@NFS_ARGSVERSION_XDR = common dso_local global i32 0, align 4
@NFS_XDRARGS_VERSION_0 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@XDRWORD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"nfs_mount_diskless: error %d assembling mount args\0A\00", align 1
@XB_CLEANUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"nfs_mountroot: mount %s failed: %d\0A\00", align 1
@M_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_dlmount*, i8*, i32, i32*, %struct.TYPE_13__**, i32)* @nfs_mount_diskless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_mount_diskless(%struct.nfs_dlmount* %0, i8* %1, i32 %2, i32* %3, %struct.TYPE_13__** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_dlmount*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.xdrbuf, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.nfs_dlmount* %0, %struct.nfs_dlmount** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_13__** %4, %struct.TYPE_13__*** %12, align 8
  store i32 %5, i32* %13, align 4
  %32 = load i32, i32* @MAX_IPv4_STR_LEN, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %22, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %23, align 8
  %36 = load i32, i32* @NFS_MATTR_BITMAP_LEN, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %25, align 8
  %39 = load i32, i32* @NFS_MFLAG_BITMAP_LEN, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %26, align 8
  %42 = load i32, i32* @NFS_MFLAG_BITMAP_LEN, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %27, align 8
  %45 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %46 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @vfs_rootmountalloc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %47, %struct.TYPE_13__** %14)
  store i32 %48, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %6
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %451

53:                                               ; preds = %6
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @MNT_RDONLY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @MNT_RDONLY, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %63, %53
  %71 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %72 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %20, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 91
  br i1 %77, label %78, label %103

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %91, %78
  %80 = load i8*, i8** %20, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %20, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 93
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi i1 [ false, %79 ], [ %88, %84 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i8*, i8** %20, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %20, align 8
  br label %79

94:                                               ; preds = %89
  %95 = load i8*, i8** %20, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 93
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %20, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %20, align 8
  br label %102

102:                                              ; preds = %99, %94
  br label %103

103:                                              ; preds = %102, %70
  br label %104

104:                                              ; preds = %116, %103
  %105 = load i8*, i8** %20, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i8*, i8** %20, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 58
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi i1 [ false, %104 ], [ %113, %109 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i8*, i8** %20, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %20, align 8
  br label %104

119:                                              ; preds = %114
  %120 = load i8*, i8** %20, align 8
  store i8* %120, i8** %21, align 8
  br label %121

121:                                              ; preds = %133, %119
  %122 = load i8*, i8** %20, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %20, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 58
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i1 [ false, %121 ], [ %130, %126 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i8*, i8** %20, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %20, align 8
  br label %121

136:                                              ; preds = %131
  %137 = load i8*, i8** %20, align 8
  store i8* %137, i8** %18, align 8
  br label %138

138:                                              ; preds = %150, %136
  %139 = load i8*, i8** %18, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i8*, i8** %18, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 47
  br label %148

148:                                              ; preds = %143, %138
  %149 = phi i1 [ false, %138 ], [ %147, %143 ]
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = load i8*, i8** %18, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %18, align 8
  br label %138

153:                                              ; preds = %148
  store i32 0, i32* %16, align 4
  br label %154

154:                                              ; preds = %192, %153
  %155 = load i8*, i8** %18, align 8
  %156 = load i8, i8* %155, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %158, label %193

158:                                              ; preds = %154
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %173, %158
  %162 = load i8*, i8** %18, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i8*, i8** %18, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 47
  br label %171

171:                                              ; preds = %166, %161
  %172 = phi i1 [ false, %161 ], [ %170, %166 ]
  br i1 %172, label %173, label %176

173:                                              ; preds = %171
  %174 = load i8*, i8** %18, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %18, align 8
  br label %161

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %189, %176
  %178 = load i8*, i8** %18, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load i8*, i8** %18, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 47
  br label %187

187:                                              ; preds = %182, %177
  %188 = phi i1 [ false, %177 ], [ %186, %182 ]
  br i1 %188, label %189, label %192

189:                                              ; preds = %187
  %190 = load i8*, i8** %18, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %18, align 8
  br label %177

192:                                              ; preds = %187
  br label %154

193:                                              ; preds = %154
  %194 = load i32, i32* @AF_INET, align 4
  %195 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %196 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = trunc i64 %33 to i32
  %199 = call i8* @inet_ntop(i32 %194, i32* %197, i8* %35, i32 %198)
  %200 = icmp ne i8* %199, %35
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %203 = load i32, i32* @EINVAL, align 4
  store i32 %203, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %451

204:                                              ; preds = %193
  %205 = load i32, i32* @NFS_MATTR_BITMAP_LEN, align 4
  %206 = call i32 @NFS_BITMAP_ZERO(i32* %38, i32 %205)
  %207 = load i32, i32* @NFS_MATTR_NFS_VERSION, align 4
  %208 = call i32 @NFS_BITMAP_SET(i32* %38, i32 %207)
  %209 = load i32, i32* @NFS_MATTR_SOCKET_TYPE, align 4
  %210 = call i32 @NFS_BITMAP_SET(i32* %38, i32 %209)
  %211 = load i32, i32* @NFS_MATTR_NFS_PORT, align 4
  %212 = call i32 @NFS_BITMAP_SET(i32* %38, i32 %211)
  %213 = load i32, i32* @NFS_MATTR_FH, align 4
  %214 = call i32 @NFS_BITMAP_SET(i32* %38, i32 %213)
  %215 = load i32, i32* @NFS_MATTR_FS_LOCATIONS, align 4
  %216 = call i32 @NFS_BITMAP_SET(i32* %38, i32 %215)
  %217 = load i32, i32* @NFS_MATTR_MNTFLAGS, align 4
  %218 = call i32 @NFS_BITMAP_SET(i32* %38, i32 %217)
  %219 = load i32, i32* @NFS_MFLAG_BITMAP_LEN, align 4
  %220 = call i32 @NFS_BITMAP_ZERO(i32* %41, i32 %219)
  %221 = load i32, i32* @NFS_MFLAG_BITMAP_LEN, align 4
  %222 = call i32 @NFS_BITMAP_ZERO(i32* %44, i32 %221)
  %223 = load i32, i32* @NFS_MFLAG_RESVPORT, align 4
  %224 = call i32 @NFS_BITMAP_SET(i32* %41, i32 %223)
  %225 = load i32, i32* @NFS_MFLAG_RESVPORT, align 4
  %226 = call i32 @NFS_BITMAP_SET(i32* %44, i32 %225)
  %227 = call i32 @xb_init_buffer(%struct.xdrbuf* %24, i32* null, i32 0)
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* @NFS_ARGSVERSION_XDR, align 4
  %230 = call i32 @xb_add_32(i32 %228, %struct.xdrbuf* %24, i32 %229)
  %231 = call i32 @xb_offset(%struct.xdrbuf* %24)
  store i32 %231, i32* %28, align 4
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @xb_add_32(i32 %232, %struct.xdrbuf* %24, i32 0)
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* @NFS_XDRARGS_VERSION_0, align 4
  %236 = call i32 @xb_add_32(i32 %234, %struct.xdrbuf* %24, i32 %235)
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* @NFS_MATTR_BITMAP_LEN, align 4
  %239 = call i32 @xb_add_bitmap(i32 %237, %struct.xdrbuf* %24, i32* %38, i32 %238)
  %240 = call i32 @xb_offset(%struct.xdrbuf* %24)
  store i32 %240, i32* %29, align 4
  %241 = load i32, i32* %15, align 4
  %242 = call i32 @xb_add_32(i32 %241, %struct.xdrbuf* %24, i32 0)
  %243 = load i32, i32* %15, align 4
  %244 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %245 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %244, i32 0, i32 5
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i32 3, i32 2
  %250 = call i32 @xb_add_32(i32 %243, %struct.xdrbuf* %24, i32 %249)
  %251 = load i32, i32* %15, align 4
  %252 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %253 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @SOCK_DGRAM, align 8
  %256 = icmp eq i64 %254, %255
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %259 = call i32 @xb_add_string(i32 %251, %struct.xdrbuf* %24, i8* %258, i32 3)
  %260 = load i32, i32* %15, align 4
  %261 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %262 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @ntohs(i32 %264)
  %266 = call i32 @xb_add_32(i32 %260, %struct.xdrbuf* %24, i32 %265)
  %267 = load i32, i32* %15, align 4
  %268 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %269 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %273 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @xb_add_fh(i32 %267, %struct.xdrbuf* %24, i32* %271, i32 %274)
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @xb_add_32(i32 %276, %struct.xdrbuf* %24, i32 1)
  %278 = load i32, i32* %15, align 4
  %279 = call i32 @xb_add_32(i32 %278, %struct.xdrbuf* %24, i32 1)
  %280 = load i32, i32* %15, align 4
  %281 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %282 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %281, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = load i8*, i8** %21, align 8
  %285 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %8, align 8
  %286 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = ptrtoint i8* %284 to i64
  %289 = ptrtoint i8* %287 to i64
  %290 = sub i64 %288, %289
  %291 = trunc i64 %290 to i32
  %292 = call i32 @xb_add_string(i32 %280, %struct.xdrbuf* %24, i8* %283, i32 %291)
  %293 = load i32, i32* %15, align 4
  %294 = call i32 @xb_add_32(i32 %293, %struct.xdrbuf* %24, i32 1)
  %295 = load i32, i32* %15, align 4
  %296 = call i32 @strlen(i8* %35)
  %297 = call i32 @xb_add_string(i32 %295, %struct.xdrbuf* %24, i8* %35, i32 %296)
  %298 = load i32, i32* %15, align 4
  %299 = call i32 @xb_add_32(i32 %298, %struct.xdrbuf* %24, i32 0)
  %300 = load i32, i32* %15, align 4
  %301 = load i32, i32* %16, align 4
  %302 = call i32 @xb_add_32(i32 %300, %struct.xdrbuf* %24, i32 %301)
  %303 = load i8*, i8** %20, align 8
  store i8* %303, i8** %18, align 8
  br label %304

304:                                              ; preds = %316, %204
  %305 = load i8*, i8** %18, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = load i8*, i8** %18, align 8
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 47
  br label %314

314:                                              ; preds = %309, %304
  %315 = phi i1 [ false, %304 ], [ %313, %309 ]
  br i1 %315, label %316, label %319

316:                                              ; preds = %314
  %317 = load i8*, i8** %18, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %18, align 8
  br label %304

319:                                              ; preds = %314
  br label %320

320:                                              ; preds = %370, %319
  %321 = load i8*, i8** %18, align 8
  %322 = load i8, i8* %321, align 1
  %323 = icmp ne i8 %322, 0
  br i1 %323, label %324, label %371

324:                                              ; preds = %320
  %325 = load i8*, i8** %18, align 8
  store i8* %325, i8** %19, align 8
  br label %326

326:                                              ; preds = %338, %324
  %327 = load i8*, i8** %18, align 8
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %326
  %332 = load i8*, i8** %18, align 8
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp ne i32 %334, 47
  br label %336

336:                                              ; preds = %331, %326
  %337 = phi i1 [ false, %326 ], [ %335, %331 ]
  br i1 %337, label %338, label %341

338:                                              ; preds = %336
  %339 = load i8*, i8** %18, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %340, i8** %18, align 8
  br label %326

341:                                              ; preds = %336
  %342 = load i32, i32* %15, align 4
  %343 = load i8*, i8** %19, align 8
  %344 = load i8*, i8** %18, align 8
  %345 = load i8*, i8** %19, align 8
  %346 = ptrtoint i8* %344 to i64
  %347 = ptrtoint i8* %345 to i64
  %348 = sub i64 %346, %347
  %349 = trunc i64 %348 to i32
  %350 = call i32 @xb_add_string(i32 %342, %struct.xdrbuf* %24, i8* %343, i32 %349)
  %351 = load i32, i32* %15, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %341
  br label %371

354:                                              ; preds = %341
  br label %355

355:                                              ; preds = %367, %354
  %356 = load i8*, i8** %18, align 8
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %355
  %361 = load i8*, i8** %18, align 8
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 47
  br label %365

365:                                              ; preds = %360, %355
  %366 = phi i1 [ false, %355 ], [ %364, %360 ]
  br i1 %366, label %367, label %370

367:                                              ; preds = %365
  %368 = load i8*, i8** %18, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %18, align 8
  br label %355

370:                                              ; preds = %365
  br label %320

371:                                              ; preds = %353, %320
  %372 = load i32, i32* %15, align 4
  %373 = call i32 @xb_add_32(i32 %372, %struct.xdrbuf* %24, i32 0)
  %374 = load i32, i32* %15, align 4
  %375 = load i32, i32* %10, align 4
  %376 = call i32 @xb_add_32(i32 %374, %struct.xdrbuf* %24, i32 %375)
  %377 = load i32, i32* %15, align 4
  %378 = call i32 @xb_build_done(i32 %377, %struct.xdrbuf* %24)
  %379 = call i32 @xb_offset(%struct.xdrbuf* %24)
  store i32 %379, i32* %30, align 4
  %380 = load i32, i32* %15, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %392, label %382

382:                                              ; preds = %371
  %383 = load i32, i32* %28, align 4
  %384 = call i32 @xb_seek(%struct.xdrbuf* %24, i32 %383)
  store i32 %384, i32* %15, align 4
  %385 = load i32, i32* %15, align 4
  %386 = load i32, i32* %30, align 4
  %387 = load i32, i32* %28, align 4
  %388 = sub nsw i32 %386, %387
  %389 = load i32, i32* @XDRWORD, align 4
  %390 = add nsw i32 %388, %389
  %391 = call i32 @xb_add_32(i32 %385, %struct.xdrbuf* %24, i32 %390)
  br label %392

392:                                              ; preds = %382, %371
  %393 = load i32, i32* %15, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %405, label %395

395:                                              ; preds = %392
  %396 = load i32, i32* %29, align 4
  %397 = call i32 @xb_seek(%struct.xdrbuf* %24, i32 %396)
  store i32 %397, i32* %15, align 4
  %398 = load i32, i32* %15, align 4
  %399 = load i32, i32* %30, align 4
  %400 = load i32, i32* %29, align 4
  %401 = sub nsw i32 %399, %400
  %402 = load i32, i32* @XDRWORD, align 4
  %403 = sub nsw i32 %401, %402
  %404 = call i32 @xb_add_32(i32 %398, %struct.xdrbuf* %24, i32 %403)
  br label %405

405:                                              ; preds = %395, %392
  %406 = load i32, i32* %15, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %405
  %409 = load i32, i32* %15, align 4
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %409)
  %411 = call i32 @xb_cleanup(%struct.xdrbuf* %24)
  %412 = load i32, i32* %15, align 4
  store i32 %412, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %451

413:                                              ; preds = %405
  %414 = call i8* @xb_buffer_base(%struct.xdrbuf* %24)
  store i8* %414, i8** %17, align 8
  %415 = load i32, i32* @XB_CLEANUP, align 4
  %416 = xor i32 %415, -1
  %417 = getelementptr inbounds %struct.xdrbuf, %struct.xdrbuf* %24, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = and i32 %418, %416
  store i32 %419, i32* %417, align 4
  %420 = load i8*, i8** %17, align 8
  %421 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %422 = load i32, i32* %13, align 4
  %423 = load i32*, i32** %11, align 8
  %424 = call i32 @mountnfs(i8* %420, %struct.TYPE_13__* %421, i32 %422, i32* %423)
  store i32 %424, i32* %15, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %445

426:                                              ; preds = %413
  %427 = load i8*, i8** %9, align 8
  %428 = load i32, i32* %15, align 4
  %429 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %427, i32 %428)
  %430 = call i32 (...) @mount_list_lock()
  %431 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 1
  %433 = load %struct.TYPE_12__*, %struct.TYPE_12__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = add nsw i32 %435, -1
  store i32 %436, i32* %434, align 4
  %437 = call i32 (...) @mount_list_unlock()
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %439 = call i32 @vfs_unbusy(%struct.TYPE_13__* %438)
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %441 = call i32 @mount_lock_destroy(%struct.TYPE_13__* %440)
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %443 = load i32, i32* @M_MOUNT, align 4
  %444 = call i32 @FREE_ZONE(%struct.TYPE_13__* %442, i32 4, i32 %443)
  br label %448

445:                                              ; preds = %413
  %446 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %447 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  store %struct.TYPE_13__* %446, %struct.TYPE_13__** %447, align 8
  br label %448

448:                                              ; preds = %445, %426
  %449 = call i32 @xb_cleanup(%struct.xdrbuf* %24)
  %450 = load i32, i32* %15, align 4
  store i32 %450, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %451

451:                                              ; preds = %448, %408, %201, %50
  %452 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %452)
  %453 = load i32, i32* %7, align 4
  ret i32 %453
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vfs_rootmountalloc(i8*, i8*, %struct.TYPE_13__**) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @NFS_BITMAP_ZERO(i32*, i32) #2

declare dso_local i32 @NFS_BITMAP_SET(i32*, i32) #2

declare dso_local i32 @xb_init_buffer(%struct.xdrbuf*, i32*, i32) #2

declare dso_local i32 @xb_add_32(i32, %struct.xdrbuf*, i32) #2

declare dso_local i32 @xb_offset(%struct.xdrbuf*) #2

declare dso_local i32 @xb_add_bitmap(i32, %struct.xdrbuf*, i32*, i32) #2

declare dso_local i32 @xb_add_string(i32, %struct.xdrbuf*, i8*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @xb_add_fh(i32, %struct.xdrbuf*, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @xb_build_done(i32, %struct.xdrbuf*) #2

declare dso_local i32 @xb_seek(%struct.xdrbuf*, i32) #2

declare dso_local i32 @xb_cleanup(%struct.xdrbuf*) #2

declare dso_local i8* @xb_buffer_base(%struct.xdrbuf*) #2

declare dso_local i32 @mountnfs(i8*, %struct.TYPE_13__*, i32, i32*) #2

declare dso_local i32 @mount_list_lock(...) #2

declare dso_local i32 @mount_list_unlock(...) #2

declare dso_local i32 @vfs_unbusy(%struct.TYPE_13__*) #2

declare dso_local i32 @mount_lock_destroy(%struct.TYPE_13__*) #2

declare dso_local i32 @FREE_ZONE(%struct.TYPE_13__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
