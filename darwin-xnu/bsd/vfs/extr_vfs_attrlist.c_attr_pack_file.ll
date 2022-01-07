; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attr_pack_file.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attr_pack_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.attrlist = type { i32 }
%struct._attrlist_buf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vnode_attr = type { i64, i64, i64, i64, i32, i32, i64, i64, i64 }

@ATTR_FILE_TOTALSIZE = common dso_local global i32 0, align 4
@ATTR_FILE_ALLOCSIZE = common dso_local global i32 0, align 4
@ATTR_FILE_RSRCLENGTH = common dso_local global i32 0, align 4
@ATTR_FILE_RSRCALLOCSIZE = common dso_local global i32 0, align 4
@XATTR_RESOURCEFORK_NAME = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ATTR_FILE_LINKCOUNT = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@va_total_size = common dso_local global i32 0, align 4
@va_data_alloc = common dso_local global i32 0, align 4
@va_total_alloc = common dso_local global i32 0, align 4
@ATTR_FILE_IOBLOCKSIZE = common dso_local global i32 0, align 4
@va_iosize = common dso_local global i32 0, align 4
@ATTR_FILE_CLUMPSIZE = common dso_local global i32 0, align 4
@ATTR_FILE_DEVTYPE = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@va_rdev = common dso_local global i32 0, align 4
@ATTR_FILE_DATALENGTH = common dso_local global i32 0, align 4
@ATTR_FILE_DATAALLOCSIZE = common dso_local global i32 0, align 4
@va_rsrc_length = common dso_local global i32 0, align 4
@va_rsrc_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vnode*, %struct.attrlist*, %struct._attrlist_buf*, %struct.vnode_attr*, i32, i32, i32)* @attr_pack_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_pack_file(i32 %0, %struct.vnode* %1, %struct.attrlist* %2, %struct._attrlist_buf* %3, %struct.vnode_attr* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.attrlist*, align 8
  %12 = alloca %struct._attrlist_buf*, align 8
  %13 = alloca %struct.vnode_attr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.vnode* %1, %struct.vnode** %10, align 8
  store %struct.attrlist* %2, %struct.attrlist** %11, align 8
  store %struct._attrlist_buf* %3, %struct._attrlist_buf** %12, align 8
  store %struct.vnode_attr* %4, %struct.vnode_attr** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %31 = load %struct.vnode*, %struct.vnode** %10, align 8
  %32 = icmp ne %struct.vnode* %31, null
  br i1 %32, label %33, label %105

33:                                               ; preds = %8
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %105, label %36

36:                                               ; preds = %33
  %37 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %38 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATTR_FILE_TOTALSIZE, align 4
  %41 = load i32, i32* @ATTR_FILE_ALLOCSIZE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ATTR_FILE_RSRCLENGTH, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ATTR_FILE_RSRCALLOCSIZE, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %39, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %105

49:                                               ; preds = %36
  %50 = load %struct.vnode*, %struct.vnode** %10, align 8
  %51 = load i32, i32* @XATTR_RESOURCEFORK_NAME, align 4
  %52 = load i32, i32* @XATTR_NOSECURITY, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @vn_getxattr(%struct.vnode* %50, i32 %51, i32* null, i64* %17, i32 %52, i32 %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %49
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %77, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* @ENOATTR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @ENOTSUP, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* @EPERM, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* @EACCES, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69, %65, %61, %57
  store i64 0, i64* %17, align 8
  store i32 0, i32* %20, align 4
  br label %79

78:                                               ; preds = %73
  br label %714

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %49
  %81 = load i64, i64* %17, align 8
  store i64 %81, i64* %18, align 8
  %82 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %83 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ATTR_FILE_RSRCALLOCSIZE, align 4
  %86 = load i32, i32* @ATTR_FILE_ALLOCSIZE, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %80
  %91 = load %struct.vnode*, %struct.vnode** %10, align 8
  %92 = getelementptr inbounds %struct.vnode, %struct.vnode* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %21, align 4
  %97 = load i32, i32* %21, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i32 512, i32* %21, align 4
  br label %100

100:                                              ; preds = %99, %90
  %101 = load i64, i64* %17, align 8
  %102 = load i32, i32* %21, align 4
  %103 = call i64 @roundup(i64 %101, i32 %102)
  store i64 %103, i64* %19, align 8
  br label %104

104:                                              ; preds = %100, %80
  br label %105

105:                                              ; preds = %104, %36, %33, %8
  %106 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %107 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ATTR_FILE_LINKCOUNT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %105
  %113 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %114 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %115 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %114, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %113, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ATTR_PACK4(i32 %120, i32 %117)
  %122 = load i32, i32* @ATTR_FILE_LINKCOUNT, align 4
  %123 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %124 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %112, %105
  %129 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %130 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ATTR_FILE_TOTALSIZE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %211

135:                                              ; preds = %128
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %175, label %138

138:                                              ; preds = %135
  %139 = load i64, i64* %18, align 8
  store i64 %139, i64* %22, align 8
  %140 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %141 = load i32, i32* @va_data_size, align 4
  %142 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %146 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %22, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %22, align 8
  br label %162

150:                                              ; preds = %138
  %151 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %152 = load i32, i32* @va_total_size, align 4
  %153 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %157 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %22, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %22, align 8
  br label %161

161:                                              ; preds = %155, %150
  br label %162

162:                                              ; preds = %161, %144
  %163 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %164 = load i64, i64* %22, align 8
  %165 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %163, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ATTR_PACK8(i32 %167, i64 %164)
  %169 = load i32, i32* @ATTR_FILE_TOTALSIZE, align 4
  %170 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %171 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %169
  store i32 %174, i32* %172, align 4
  br label %210

175:                                              ; preds = %135
  %176 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %177 = load i32, i32* @va_total_size, align 4
  %178 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %175
  %181 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %182 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %183 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %181, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ATTR_PACK8(i32 %187, i64 %184)
  %189 = load i32, i32* @ATTR_FILE_TOTALSIZE, align 4
  %190 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %191 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %189
  store i32 %194, i32* %192, align 4
  br label %209

195:                                              ; preds = %175
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %198, %195
  store i64 0, i64* %23, align 8
  %202 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %203 = load i64, i64* %23, align 8
  %204 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %202, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ATTR_PACK8(i32 %206, i64 %203)
  br label %208

208:                                              ; preds = %201, %198
  br label %209

209:                                              ; preds = %208, %180
  br label %210

210:                                              ; preds = %209, %162
  br label %211

211:                                              ; preds = %210, %128
  %212 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %213 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @ATTR_FILE_ALLOCSIZE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %294

218:                                              ; preds = %211
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %258, label %221

221:                                              ; preds = %218
  %222 = load i64, i64* %19, align 8
  store i64 %222, i64* %24, align 8
  %223 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %224 = load i32, i32* @va_data_alloc, align 4
  %225 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %229 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* %24, align 8
  %232 = add i64 %231, %230
  store i64 %232, i64* %24, align 8
  br label %245

233:                                              ; preds = %221
  %234 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %235 = load i32, i32* @va_total_alloc, align 4
  %236 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %240 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %24, align 8
  %243 = add i64 %242, %241
  store i64 %243, i64* %24, align 8
  br label %244

244:                                              ; preds = %238, %233
  br label %245

245:                                              ; preds = %244, %227
  %246 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %247 = load i64, i64* %24, align 8
  %248 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %246, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @ATTR_PACK8(i32 %250, i64 %247)
  %252 = load i32, i32* @ATTR_FILE_ALLOCSIZE, align 4
  %253 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %254 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %252
  store i32 %257, i32* %255, align 4
  br label %293

258:                                              ; preds = %218
  %259 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %260 = load i32, i32* @va_total_alloc, align 4
  %261 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %258
  %264 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %265 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %266 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %264, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @ATTR_PACK8(i32 %270, i64 %267)
  %272 = load i32, i32* @ATTR_FILE_ALLOCSIZE, align 4
  %273 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %274 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %272
  store i32 %277, i32* %275, align 4
  br label %292

278:                                              ; preds = %258
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i32, i32* %15, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %281, %278
  store i64 0, i64* %25, align 8
  %285 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %286 = load i64, i64* %25, align 8
  %287 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %285, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @ATTR_PACK8(i32 %289, i64 %286)
  br label %291

291:                                              ; preds = %284, %281
  br label %292

292:                                              ; preds = %291, %263
  br label %293

293:                                              ; preds = %292, %245
  br label %294

294:                                              ; preds = %293, %211
  %295 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %296 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @ATTR_FILE_IOBLOCKSIZE, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %335

301:                                              ; preds = %294
  %302 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %303 = load i32, i32* @va_iosize, align 4
  %304 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %302, i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %301
  %307 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %308 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %309 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %307, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @ATTR_PACK4(i32 %313, i32 %310)
  %315 = load i32, i32* @ATTR_FILE_IOBLOCKSIZE, align 4
  %316 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %317 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %315
  store i32 %320, i32* %318, align 4
  br label %334

321:                                              ; preds = %301
  %322 = load i32, i32* %14, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i32, i32* %15, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %324, %321
  %328 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %329 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @ATTR_PACK4(i32 %331, i32 0)
  br label %333

333:                                              ; preds = %327, %324
  br label %334

334:                                              ; preds = %333, %306
  br label %335

335:                                              ; preds = %334, %294
  %336 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %337 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @ATTR_FILE_CLUMPSIZE, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %361

342:                                              ; preds = %335
  %343 = load i32, i32* %14, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load i32, i32* %15, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %360

348:                                              ; preds = %345, %342
  %349 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %350 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @ATTR_PACK4(i32 %352, i32 0)
  %354 = load i32, i32* @ATTR_FILE_CLUMPSIZE, align 4
  %355 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %356 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %354
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %348, %345
  br label %361

361:                                              ; preds = %360, %335
  %362 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %363 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @ATTR_FILE_DEVTYPE, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %469

368:                                              ; preds = %361
  %369 = load %struct.vnode*, %struct.vnode** %10, align 8
  %370 = icmp ne %struct.vnode* %369, null
  br i1 %370, label %371, label %418

371:                                              ; preds = %368
  %372 = load %struct.vnode*, %struct.vnode** %10, align 8
  %373 = getelementptr inbounds %struct.vnode, %struct.vnode* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @VCHR, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %383, label %377

377:                                              ; preds = %371
  %378 = load %struct.vnode*, %struct.vnode** %10, align 8
  %379 = getelementptr inbounds %struct.vnode, %struct.vnode* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @VBLK, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %418

383:                                              ; preds = %377, %371
  %384 = load %struct.vnode*, %struct.vnode** %10, align 8
  %385 = getelementptr inbounds %struct.vnode, %struct.vnode* %384, i32 0, i32 1
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %385, align 8
  %387 = icmp ne %struct.TYPE_8__* %386, null
  br i1 %387, label %388, label %394

388:                                              ; preds = %383
  %389 = load %struct.vnode*, %struct.vnode** %10, align 8
  %390 = getelementptr inbounds %struct.vnode, %struct.vnode* %389, i32 0, i32 1
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %26, align 4
  br label %405

394:                                              ; preds = %383
  %395 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %396 = load i32, i32* @va_rdev, align 4
  %397 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %395, i32 %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %401 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %26, align 4
  br label %404

403:                                              ; preds = %394
  store i32 0, i32* %26, align 4
  br label %404

404:                                              ; preds = %403, %399
  br label %405

405:                                              ; preds = %404, %388
  %406 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %407 = load i32, i32* %26, align 4
  %408 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %406, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @ATTR_PACK4(i32 %410, i32 %407)
  %412 = load i32, i32* @ATTR_FILE_DEVTYPE, align 4
  %413 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %414 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = or i32 %416, %412
  store i32 %417, i32* %415, align 4
  br label %468

418:                                              ; preds = %377, %368
  %419 = load %struct.vnode*, %struct.vnode** %10, align 8
  %420 = icmp ne %struct.vnode* %419, null
  br i1 %420, label %421, label %433

421:                                              ; preds = %418
  %422 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %423 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @ATTR_PACK4(i32 %425, i32 0)
  %427 = load i32, i32* @ATTR_FILE_DEVTYPE, align 4
  %428 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %429 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = or i32 %431, %427
  store i32 %432, i32* %430, align 4
  br label %467

433:                                              ; preds = %418
  %434 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %435 = load i32, i32* @va_rdev, align 4
  %436 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %434, i32 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %453

438:                                              ; preds = %433
  %439 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %440 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %441 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %440, i32 0, i32 5
  %442 = load i32, i32* %441, align 4
  %443 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %439, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @ATTR_PACK4(i32 %445, i32 %442)
  %447 = load i32, i32* @ATTR_FILE_DEVTYPE, align 4
  %448 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %449 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = or i32 %451, %447
  store i32 %452, i32* %450, align 4
  br label %466

453:                                              ; preds = %433
  %454 = load i32, i32* %14, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %453
  %457 = load i32, i32* %15, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %465

459:                                              ; preds = %456, %453
  %460 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %461 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @ATTR_PACK4(i32 %463, i32 0)
  br label %465

465:                                              ; preds = %459, %456
  br label %466

466:                                              ; preds = %465, %438
  br label %467

467:                                              ; preds = %466, %421
  br label %468

468:                                              ; preds = %467, %405
  br label %469

469:                                              ; preds = %468, %361
  %470 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %471 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @ATTR_FILE_DATALENGTH, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %532

476:                                              ; preds = %469
  %477 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %478 = load i32, i32* @va_data_size, align 4
  %479 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %477, i32 %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %496

481:                                              ; preds = %476
  %482 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %483 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %484 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %482, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = call i32 @ATTR_PACK8(i32 %488, i64 %485)
  %490 = load i32, i32* @ATTR_FILE_DATALENGTH, align 4
  %491 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %492 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = or i32 %494, %490
  store i32 %495, i32* %493, align 4
  br label %531

496:                                              ; preds = %476
  %497 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %498 = load i32, i32* @va_total_size, align 4
  %499 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %497, i32 %498)
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %516

501:                                              ; preds = %496
  %502 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %503 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %504 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %503, i32 0, i32 1
  %505 = load i64, i64* %504, align 8
  %506 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %502, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @ATTR_PACK8(i32 %508, i64 %505)
  %510 = load i32, i32* @ATTR_FILE_DATALENGTH, align 4
  %511 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %512 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = or i32 %514, %510
  store i32 %515, i32* %513, align 4
  br label %530

516:                                              ; preds = %496
  %517 = load i32, i32* %14, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %516
  %520 = load i32, i32* %15, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %529

522:                                              ; preds = %519, %516
  store i64 0, i64* %27, align 8
  %523 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %524 = load i64, i64* %27, align 8
  %525 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %523, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @ATTR_PACK8(i32 %527, i64 %524)
  br label %529

529:                                              ; preds = %522, %519
  br label %530

530:                                              ; preds = %529, %501
  br label %531

531:                                              ; preds = %530, %481
  br label %532

532:                                              ; preds = %531, %469
  %533 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %534 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @ATTR_FILE_DATAALLOCSIZE, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %595

539:                                              ; preds = %532
  %540 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %541 = load i32, i32* @va_data_alloc, align 4
  %542 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %540, i32 %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %559

544:                                              ; preds = %539
  %545 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %546 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %547 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %546, i32 0, i32 2
  %548 = load i64, i64* %547, align 8
  %549 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %545, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @ATTR_PACK8(i32 %551, i64 %548)
  %553 = load i32, i32* @ATTR_FILE_DATAALLOCSIZE, align 4
  %554 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %555 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = or i32 %557, %553
  store i32 %558, i32* %556, align 4
  br label %594

559:                                              ; preds = %539
  %560 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %561 = load i32, i32* @va_total_alloc, align 4
  %562 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %560, i32 %561)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %579

564:                                              ; preds = %559
  %565 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %566 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %567 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %566, i32 0, i32 3
  %568 = load i64, i64* %567, align 8
  %569 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %565, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @ATTR_PACK8(i32 %571, i64 %568)
  %573 = load i32, i32* @ATTR_FILE_DATAALLOCSIZE, align 4
  %574 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %575 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 4
  %578 = or i32 %577, %573
  store i32 %578, i32* %576, align 4
  br label %593

579:                                              ; preds = %559
  %580 = load i32, i32* %14, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %579
  %583 = load i32, i32* %15, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %592

585:                                              ; preds = %582, %579
  store i64 0, i64* %28, align 8
  %586 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %587 = load i64, i64* %28, align 8
  %588 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %586, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 4
  %591 = call i32 @ATTR_PACK8(i32 %590, i64 %587)
  br label %592

592:                                              ; preds = %585, %582
  br label %593

593:                                              ; preds = %592, %564
  br label %594

594:                                              ; preds = %593, %544
  br label %595

595:                                              ; preds = %594, %532
  %596 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %597 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 4
  %599 = load i32, i32* @ATTR_FILE_RSRCLENGTH, align 4
  %600 = and i32 %598, %599
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %654

602:                                              ; preds = %595
  %603 = load i32, i32* %16, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %618, label %605

605:                                              ; preds = %602
  %606 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %607 = load i64, i64* %18, align 8
  %608 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %606, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 4
  %611 = call i32 @ATTR_PACK8(i32 %610, i64 %607)
  %612 = load i32, i32* @ATTR_FILE_RSRCLENGTH, align 4
  %613 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %614 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %613, i32 0, i32 0
  %615 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 4
  %617 = or i32 %616, %612
  store i32 %617, i32* %615, align 4
  br label %653

618:                                              ; preds = %602
  %619 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %620 = load i32, i32* @va_rsrc_length, align 4
  %621 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %619, i32 %620)
  %622 = icmp ne i64 %621, 0
  br i1 %622, label %623, label %638

623:                                              ; preds = %618
  %624 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %625 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %626 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %625, i32 0, i32 6
  %627 = load i64, i64* %626, align 8
  %628 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %624, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = call i32 @ATTR_PACK8(i32 %630, i64 %627)
  %632 = load i32, i32* @ATTR_FILE_RSRCLENGTH, align 4
  %633 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %634 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 4
  %637 = or i32 %636, %632
  store i32 %637, i32* %635, align 4
  br label %652

638:                                              ; preds = %618
  %639 = load i32, i32* %14, align 4
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %644

641:                                              ; preds = %638
  %642 = load i32, i32* %15, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %651

644:                                              ; preds = %641, %638
  store i64 0, i64* %29, align 8
  %645 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %646 = load i64, i64* %29, align 8
  %647 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %645, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 4
  %650 = call i32 @ATTR_PACK8(i32 %649, i64 %646)
  br label %651

651:                                              ; preds = %644, %641
  br label %652

652:                                              ; preds = %651, %623
  br label %653

653:                                              ; preds = %652, %605
  br label %654

654:                                              ; preds = %653, %595
  %655 = load %struct.attrlist*, %struct.attrlist** %11, align 8
  %656 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 4
  %658 = load i32, i32* @ATTR_FILE_RSRCALLOCSIZE, align 4
  %659 = and i32 %657, %658
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %713

661:                                              ; preds = %654
  %662 = load i32, i32* %16, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %677, label %664

664:                                              ; preds = %661
  %665 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %666 = load i64, i64* %19, align 8
  %667 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %665, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %667, i32 0, i32 0
  %669 = load i32, i32* %668, align 4
  %670 = call i32 @ATTR_PACK8(i32 %669, i64 %666)
  %671 = load i32, i32* @ATTR_FILE_RSRCALLOCSIZE, align 4
  %672 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %673 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %672, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 4
  %676 = or i32 %675, %671
  store i32 %676, i32* %674, align 4
  br label %712

677:                                              ; preds = %661
  %678 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %679 = load i32, i32* @va_rsrc_alloc, align 4
  %680 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %678, i32 %679)
  %681 = icmp ne i64 %680, 0
  br i1 %681, label %682, label %697

682:                                              ; preds = %677
  %683 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %684 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %685 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %684, i32 0, i32 7
  %686 = load i64, i64* %685, align 8
  %687 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %683, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 4
  %690 = call i32 @ATTR_PACK8(i32 %689, i64 %686)
  %691 = load i32, i32* @ATTR_FILE_RSRCALLOCSIZE, align 4
  %692 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %693 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 4
  %696 = or i32 %695, %691
  store i32 %696, i32* %694, align 4
  br label %711

697:                                              ; preds = %677
  %698 = load i32, i32* %14, align 4
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %703

700:                                              ; preds = %697
  %701 = load i32, i32* %15, align 4
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %710

703:                                              ; preds = %700, %697
  store i64 0, i64* %30, align 8
  %704 = load %struct._attrlist_buf*, %struct._attrlist_buf** %12, align 8
  %705 = load i64, i64* %30, align 8
  %706 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %704, i32 0, i32 0
  %707 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 4
  %709 = call i32 @ATTR_PACK8(i32 %708, i64 %705)
  br label %710

710:                                              ; preds = %703, %700
  br label %711

711:                                              ; preds = %710, %682
  br label %712

712:                                              ; preds = %711, %664
  br label %713

713:                                              ; preds = %712, %654
  br label %714

714:                                              ; preds = %713, %78
  %715 = load i32, i32* %20, align 4
  ret i32 %715
}

declare dso_local i32 @vn_getxattr(%struct.vnode*, i32, i32*, i64*, i32, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @ATTR_PACK4(i32, i32) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @ATTR_PACK8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
