; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attr_pack_dir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attr_pack_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.attrlist = type { i32 }
%struct._attrlist_buf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vnode_attr = type { i32, i32, i32, i32, i32, i64, i64 }

@ATTR_DIR_LINKCOUNT = common dso_local global i32 0, align 4
@ATTR_DIR_ENTRYCOUNT = common dso_local global i32 0, align 4
@ATTR_DIR_MOUNTSTATUS = common dso_local global i32 0, align 4
@VROOT = common dso_local global i32 0, align 4
@DIR_MNTSTATUS_MNTPOINT = common dso_local global i32 0, align 4
@ATTR_DIR_ALLOCSIZE = common dso_local global i32 0, align 4
@va_data_alloc = common dso_local global i32 0, align 4
@va_total_alloc = common dso_local global i32 0, align 4
@ATTR_DIR_IOBLOCKSIZE = common dso_local global i32 0, align 4
@va_iosize = common dso_local global i32 0, align 4
@ATTR_DIR_DATALENGTH = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@va_total_size = common dso_local global i32 0, align 4
@DIR_MNTSTATUS_TRIGGER = common dso_local global i32 0, align 4
@VNT_NO_DIRECT_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.attrlist*, %struct._attrlist_buf*, %struct.vnode_attr*, i32, i32)* @attr_pack_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_pack_dir(%struct.vnode* %0, %struct.attrlist* %1, %struct._attrlist_buf* %2, %struct.vnode_attr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.attrlist*, align 8
  %9 = alloca %struct._attrlist_buf*, align 8
  %10 = alloca %struct.vnode_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.attrlist* %1, %struct.attrlist** %8, align 8
  store %struct._attrlist_buf* %2, %struct._attrlist_buf** %9, align 8
  store %struct.vnode_attr* %3, %struct.vnode_attr** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %17 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ATTR_DIR_LINKCOUNT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %6
  %23 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %24 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %25 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %23, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ATTR_PACK4(i32 %30, i32 %27)
  %32 = load i32, i32* @ATTR_DIR_LINKCOUNT, align 4
  %33 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %34 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %22, %6
  %39 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %40 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATTR_DIR_ENTRYCOUNT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %47 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %48 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %46, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ATTR_PACK4(i32 %53, i32 %50)
  %55 = load i32, i32* @ATTR_DIR_ENTRYCOUNT, align 4
  %56 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %57 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %45, %38
  %62 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %63 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ATTR_DIR_MOUNTSTATUS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %61
  %69 = load %struct.vnode*, %struct.vnode** %7, align 8
  %70 = icmp ne %struct.vnode* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load %struct.vnode*, %struct.vnode** %7, align 8
  %73 = getelementptr inbounds %struct.vnode, %struct.vnode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VROOT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = load %struct.vnode*, %struct.vnode** %7, align 8
  %80 = call i64 @vnode_mountedhere(%struct.vnode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %71
  %83 = load i32, i32* @DIR_MNTSTATUS_MNTPOINT, align 4
  store i32 %83, i32* %13, align 4
  br label %85

84:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %82
  br label %87

86:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %86, %85
  %88 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %89 = load i32, i32* %13, align 4
  %90 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %88, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ATTR_PACK4(i32 %92, i32 %89)
  %94 = load i32, i32* @ATTR_DIR_MOUNTSTATUS, align 4
  %95 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %96 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %87, %61
  %101 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %102 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ATTR_DIR_ALLOCSIZE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %163

107:                                              ; preds = %100
  %108 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %109 = load i32, i32* @va_data_alloc, align 4
  %110 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %114 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %115 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %113, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ATTR_PACK8(i32 %119, i32 %116)
  %121 = load i32, i32* @ATTR_DIR_ALLOCSIZE, align 4
  %122 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %123 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 4
  br label %162

127:                                              ; preds = %107
  %128 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %129 = load i32, i32* @va_total_alloc, align 4
  %130 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %134 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %135 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %133, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ATTR_PACK8(i32 %139, i32 %136)
  %141 = load i32, i32* @ATTR_DIR_ALLOCSIZE, align 4
  %142 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %143 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %141
  store i32 %146, i32* %144, align 4
  br label %161

147:                                              ; preds = %127
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150, %147
  store i32 0, i32* %14, align 4
  %154 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %155 = load i32, i32* %14, align 4
  %156 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %154, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ATTR_PACK8(i32 %158, i32 %155)
  br label %160

160:                                              ; preds = %153, %150
  br label %161

161:                                              ; preds = %160, %132
  br label %162

162:                                              ; preds = %161, %112
  br label %163

163:                                              ; preds = %162, %100
  %164 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %165 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ATTR_DIR_IOBLOCKSIZE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %204

170:                                              ; preds = %163
  %171 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %172 = load i32, i32* @va_iosize, align 4
  %173 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %170
  %176 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %177 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %178 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %176, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ATTR_PACK4(i32 %182, i32 %179)
  %184 = load i32, i32* @ATTR_DIR_IOBLOCKSIZE, align 4
  %185 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %186 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %184
  store i32 %189, i32* %187, align 4
  br label %203

190:                                              ; preds = %170
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193, %190
  %197 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %198 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ATTR_PACK4(i32 %200, i32 0)
  br label %202

202:                                              ; preds = %196, %193
  br label %203

203:                                              ; preds = %202, %175
  br label %204

204:                                              ; preds = %203, %163
  %205 = load %struct.attrlist*, %struct.attrlist** %8, align 8
  %206 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @ATTR_DIR_DATALENGTH, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %267

211:                                              ; preds = %204
  %212 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %213 = load i32, i32* @va_data_size, align 4
  %214 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %211
  %217 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %218 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %219 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %217, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ATTR_PACK8(i32 %223, i32 %220)
  %225 = load i32, i32* @ATTR_DIR_DATALENGTH, align 4
  %226 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %227 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %225
  store i32 %230, i32* %228, align 4
  br label %266

231:                                              ; preds = %211
  %232 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %233 = load i32, i32* @va_total_size, align 4
  %234 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %251

236:                                              ; preds = %231
  %237 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %238 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %239 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %237, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @ATTR_PACK8(i32 %243, i32 %240)
  %245 = load i32, i32* @ATTR_DIR_DATALENGTH, align 4
  %246 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %247 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %245
  store i32 %250, i32* %248, align 4
  br label %265

251:                                              ; preds = %231
  %252 = load i32, i32* %11, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i32, i32* %12, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %254, %251
  store i32 0, i32* %15, align 4
  %258 = load %struct._attrlist_buf*, %struct._attrlist_buf** %9, align 8
  %259 = load i32, i32* %15, align 4
  %260 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %258, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @ATTR_PACK8(i32 %262, i32 %259)
  br label %264

264:                                              ; preds = %257, %254
  br label %265

265:                                              ; preds = %264, %236
  br label %266

266:                                              ; preds = %265, %216
  br label %267

267:                                              ; preds = %266, %204
  ret i32 0
}

declare dso_local i32 @ATTR_PACK4(i32, i32) #1

declare dso_local i64 @vnode_mountedhere(%struct.vnode*) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @ATTR_PACK8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
