; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_init_io_attributes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_init_io_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@DKIOCGETTHROTTLEMASK = common dso_local global i32 0, align 4
@rootvp = common dso_local global i64 0, align 8
@rootunit = common dso_local global i64 0, align 8
@MNTK_ROOTDEV = common dso_local global i32 0, align 4
@DKIOCGETBLOCKSIZE = common dso_local global i32 0, align 4
@MAX_UPL_SIZE_BYTES = common dso_local global i8* null, align 8
@DKIOCISVIRTUAL = common dso_local global i32 0, align 4
@MNTK_VIRTUALDEV = common dso_local global i32 0, align 4
@DKIOCISSOLIDSTATE = common dso_local global i32 0, align 4
@MNTK_SSD = common dso_local global i32 0, align 4
@DKIOCGETFEATURES = common dso_local global i32 0, align 4
@DKIOCGETMAXBLOCKCOUNTREAD = common dso_local global i32 0, align 4
@DKIOCGETMAXBLOCKCOUNTWRITE = common dso_local global i32 0, align 4
@DKIOCGETMAXBYTECOUNTREAD = common dso_local global i32 0, align 4
@DKIOCGETMAXBYTECOUNTWRITE = common dso_local global i32 0, align 4
@DKIOCGETMAXSEGMENTCOUNTREAD = common dso_local global i32 0, align 4
@DKIOCGETMAXSEGMENTCOUNTWRITE = common dso_local global i32 0, align 4
@DKIOCGETMAXSEGMENTBYTECOUNTREAD = common dso_local global i32 0, align 4
@DKIOCGETMAXSEGMENTBYTECOUNTWRITE = common dso_local global i32 0, align 4
@DKIOCGETMINSEGMENTALIGNMENTBYTECOUNT = common dso_local global i32 0, align 4
@DKIOCGETCOMMANDPOOLSIZE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@MNT_DEFAULT_IOQUEUE_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ioqueue_depth = %d,   ioscale = %d\0A\00", align 1
@DK_FEATURE_FORCE_UNIT_ACCESS = common dso_local global i32 0, align 4
@MNT_IOFLAGS_FUA_SUPPORTED = common dso_local global i32 0, align 4
@DKIOCGETIOMINSATURATIONBYTECOUNT = common dso_local global i32 0, align 4
@DKIOCCORESTORAGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@DK_FEATURE_UNMAP = common dso_local global i32 0, align 4
@MNT_IOFLAGS_UNMAP_SUPPORTED = common dso_local global i32 0, align 4
@MNT_IOFLAGS_CSUNMAP_SUPPORTED = common dso_local global i32 0, align 4
@DK_CORESTORAGE_PIN_YOUR_METADATA = common dso_local global i32 0, align 4
@MNT_IOFLAGS_FUSION_DRIVE = common dso_local global i32 0, align 4
@DKIOCGETAPFSFLAVOUR = common dso_local global i32 0, align 4
@DK_APFS_FUSION = common dso_local global i64 0, align 8
@DK_FEATURE_PRIORITY = common dso_local global i32 0, align 4
@MNT_IOFLAGS_IOSCHED_SUPPORTED = common dso_local global i32 0, align 4
@iosched_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_init_io_attributes(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_5__, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = call i32* (...) @vfs_context_current()
  store i32* %27, i32** %21, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @DKIOCGETTHROTTLEMASK, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 14
  %33 = ptrtoint i32* %32 to i32
  %34 = call i64 @VNOP_IOCTL(i64 %29, i32 %30, i32 %33, i32 0, i32* null)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @num_trailing_0(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @rootvp, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* @rootunit, align 8
  br label %48

48:                                               ; preds = %44, %2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @rootunit, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @MNTK_ROOTDEV, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 13
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @set_fsblocksize(i64 %61)
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* @DKIOCGETBLOCKSIZE, align 4
  %65 = ptrtoint i32* %18 to i32
  %66 = load i32*, i32** %21, align 8
  %67 = call i64 @VNOP_IOCTL(i64 %63, i32 %64, i32 %65, i32 0, i32* %66)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %549

72:                                               ; preds = %60
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** @MAX_UPL_SIZE_BYTES, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load i8*, i8** @MAX_UPL_SIZE_BYTES, align 8
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i32, i32* @DKIOCISVIRTUAL, align 4
  %86 = ptrtoint i32* %25 to i32
  %87 = load i32*, i32** %21, align 8
  %88 = call i64 @VNOP_IOCTL(i64 %84, i32 %85, i32 %86, i32 0, i32* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %72
  %91 = load i32, i32* %25, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* @MNTK_VIRTUALDEV, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %90
  br label %100

100:                                              ; preds = %99, %72
  %101 = load i64, i64* %4, align 8
  %102 = load i32, i32* @DKIOCISSOLIDSTATE, align 4
  %103 = ptrtoint i32* %24 to i32
  %104 = load i32*, i32** %21, align 8
  %105 = call i64 @VNOP_IOCTL(i64 %101, i32 %102, i32 %103, i32 0, i32* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load i32, i32* %24, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* @MNTK_SSD, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 13
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %107
  br label %117

117:                                              ; preds = %116, %100
  %118 = load i64, i64* %4, align 8
  %119 = load i32, i32* @DKIOCGETFEATURES, align 4
  %120 = ptrtoint i32* %20 to i32
  %121 = load i32*, i32** %21, align 8
  %122 = call i64 @VNOP_IOCTL(i64 %118, i32 %119, i32 %120, i32 0, i32* %121)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %549

127:                                              ; preds = %117
  %128 = load i64, i64* %4, align 8
  %129 = load i32, i32* @DKIOCGETMAXBLOCKCOUNTREAD, align 4
  %130 = ptrtoint i32* %7 to i32
  %131 = load i32*, i32** %21, align 8
  %132 = call i64 @VNOP_IOCTL(i64 %128, i32 %129, i32 %130, i32 0, i32* %131)
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %549

137:                                              ; preds = %127
  %138 = load i64, i64* %4, align 8
  %139 = load i32, i32* @DKIOCGETMAXBLOCKCOUNTWRITE, align 4
  %140 = ptrtoint i32* %8 to i32
  %141 = load i32*, i32** %21, align 8
  %142 = call i64 @VNOP_IOCTL(i64 %138, i32 %139, i32 %140, i32 0, i32* %141)
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %549

147:                                              ; preds = %137
  %148 = load i64, i64* %4, align 8
  %149 = load i32, i32* @DKIOCGETMAXBYTECOUNTREAD, align 4
  %150 = ptrtoint i32* %9 to i32
  %151 = load i32*, i32** %21, align 8
  %152 = call i64 @VNOP_IOCTL(i64 %148, i32 %149, i32 %150, i32 0, i32* %151)
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %549

157:                                              ; preds = %147
  %158 = load i64, i64* %4, align 8
  %159 = load i32, i32* @DKIOCGETMAXBYTECOUNTWRITE, align 4
  %160 = ptrtoint i32* %10 to i32
  %161 = load i32*, i32** %21, align 8
  %162 = call i64 @VNOP_IOCTL(i64 %158, i32 %159, i32 %160, i32 0, i32* %161)
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %3, align 4
  br label %549

167:                                              ; preds = %157
  %168 = load i64, i64* %4, align 8
  %169 = load i32, i32* @DKIOCGETMAXSEGMENTCOUNTREAD, align 4
  %170 = ptrtoint i32* %11 to i32
  %171 = load i32*, i32** %21, align 8
  %172 = call i64 @VNOP_IOCTL(i64 %168, i32 %169, i32 %170, i32 0, i32* %171)
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %3, align 4
  br label %549

177:                                              ; preds = %167
  %178 = load i64, i64* %4, align 8
  %179 = load i32, i32* @DKIOCGETMAXSEGMENTCOUNTWRITE, align 4
  %180 = ptrtoint i32* %12 to i32
  %181 = load i32*, i32** %21, align 8
  %182 = call i64 @VNOP_IOCTL(i64 %178, i32 %179, i32 %180, i32 0, i32* %181)
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %3, align 4
  br label %549

187:                                              ; preds = %177
  %188 = load i64, i64* %4, align 8
  %189 = load i32, i32* @DKIOCGETMAXSEGMENTBYTECOUNTREAD, align 4
  %190 = ptrtoint i32* %13 to i32
  %191 = load i32*, i32** %21, align 8
  %192 = call i64 @VNOP_IOCTL(i64 %188, i32 %189, i32 %190, i32 0, i32* %191)
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %187
  %196 = load i32, i32* %6, align 4
  store i32 %196, i32* %3, align 4
  br label %549

197:                                              ; preds = %187
  %198 = load i64, i64* %4, align 8
  %199 = load i32, i32* @DKIOCGETMAXSEGMENTBYTECOUNTWRITE, align 4
  %200 = ptrtoint i32* %14 to i32
  %201 = load i32*, i32** %21, align 8
  %202 = call i64 @VNOP_IOCTL(i64 %198, i32 %199, i32 %200, i32 0, i32* %201)
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %3, align 4
  br label %549

207:                                              ; preds = %197
  %208 = load i64, i64* %4, align 8
  %209 = load i32, i32* @DKIOCGETMINSEGMENTALIGNMENTBYTECOUNT, align 4
  %210 = ptrtoint i32* %15 to i32
  %211 = load i32*, i32** %21, align 8
  %212 = call i64 @VNOP_IOCTL(i64 %208, i32 %209, i32 %210, i32 0, i32* %211)
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %207
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %3, align 4
  br label %549

217:                                              ; preds = %207
  %218 = load i64, i64* %4, align 8
  %219 = load i32, i32* @DKIOCGETCOMMANDPOOLSIZE, align 4
  %220 = ptrtoint i32* %17 to i32
  %221 = load i32*, i32** %21, align 8
  %222 = call i64 @VNOP_IOCTL(i64 %218, i32 %219, i32 %220, i32 0, i32* %221)
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %217
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %3, align 4
  br label %549

227:                                              ; preds = %217
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %227
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* @UINT32_MAX, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @UINT32_MAX, align 4
  br label %238

236:                                              ; preds = %230
  %237 = load i32, i32* %9, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi i32 [ %235, %234 ], [ %237, %236 ]
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %238, %227
  %243 = load i32, i32* %7, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %268

245:                                              ; preds = %242
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* %18, align 4
  %248 = mul nsw i32 %246, %247
  store i32 %248, i32* %19, align 4
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* @UINT32_MAX, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %245
  %253 = load i32, i32* @UINT32_MAX, align 4
  br label %256

254:                                              ; preds = %245
  %255 = load i32, i32* %19, align 4
  br label %256

256:                                              ; preds = %254, %252
  %257 = phi i32 [ %253, %252 ], [ %255, %254 ]
  store i32 %257, i32* %19, align 4
  %258 = load i32, i32* %19, align 4
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %256
  %264 = load i32, i32* %19, align 4
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %263, %256
  br label %268

268:                                              ; preds = %267, %242
  %269 = load i32, i32* %10, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %268
  %272 = load i32, i32* %10, align 4
  %273 = load i32, i32* @UINT32_MAX, align 4
  %274 = icmp sgt i32 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = load i32, i32* @UINT32_MAX, align 4
  br label %279

277:                                              ; preds = %271
  %278 = load i32, i32* %10, align 4
  br label %279

279:                                              ; preds = %277, %275
  %280 = phi i32 [ %276, %275 ], [ %278, %277 ]
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 8
  br label %283

283:                                              ; preds = %279, %268
  %284 = load i32, i32* %8, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %309

286:                                              ; preds = %283
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* %18, align 4
  %289 = mul nsw i32 %287, %288
  store i32 %289, i32* %19, align 4
  %290 = load i32, i32* %19, align 4
  %291 = load i32, i32* @UINT32_MAX, align 4
  %292 = icmp sgt i32 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %286
  %294 = load i32, i32* @UINT32_MAX, align 4
  br label %297

295:                                              ; preds = %286
  %296 = load i32, i32* %19, align 4
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi i32 [ %294, %293 ], [ %296, %295 ]
  store i32 %298, i32* %19, align 4
  %299 = load i32, i32* %19, align 4
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = icmp slt i32 %299, %302
  br i1 %303, label %304, label %308

304:                                              ; preds = %297
  %305 = load i32, i32* %19, align 4
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 3
  store i32 %305, i32* %307, align 8
  br label %308

308:                                              ; preds = %304, %297
  br label %309

309:                                              ; preds = %308, %283
  %310 = load i32, i32* %11, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %309
  %313 = load i32, i32* %11, align 4
  %314 = load i32, i32* @UINT16_MAX, align 4
  %315 = icmp sgt i32 %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = load i32, i32* @UINT16_MAX, align 4
  br label %320

318:                                              ; preds = %312
  %319 = load i32, i32* %11, align 4
  br label %320

320:                                              ; preds = %318, %316
  %321 = phi i32 [ %317, %316 ], [ %319, %318 ]
  store i32 %321, i32* %19, align 4
  br label %334

322:                                              ; preds = %309
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @PAGE_SIZE, align 4
  %327 = sdiv i32 %325, %326
  store i32 %327, i32* %19, align 4
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* @UINT16_MAX, align 4
  %330 = icmp sgt i32 %328, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %322
  %332 = load i32, i32* @UINT16_MAX, align 4
  store i32 %332, i32* %19, align 4
  br label %333

333:                                              ; preds = %331, %322
  br label %334

334:                                              ; preds = %333, %320
  %335 = load i32, i32* %19, align 4
  %336 = sext i32 %335 to i64
  %337 = inttoptr i64 %336 to i8*
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 12
  store i8* %337, i8** %339, align 8
  %340 = load i32, i32* %12, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %352

342:                                              ; preds = %334
  %343 = load i32, i32* %12, align 4
  %344 = load i32, i32* @UINT16_MAX, align 4
  %345 = icmp sgt i32 %343, %344
  br i1 %345, label %346, label %348

346:                                              ; preds = %342
  %347 = load i32, i32* @UINT16_MAX, align 4
  br label %350

348:                                              ; preds = %342
  %349 = load i32, i32* %12, align 4
  br label %350

350:                                              ; preds = %348, %346
  %351 = phi i32 [ %347, %346 ], [ %349, %348 ]
  store i32 %351, i32* %19, align 4
  br label %364

352:                                              ; preds = %334
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @PAGE_SIZE, align 4
  %357 = sdiv i32 %355, %356
  store i32 %357, i32* %19, align 4
  %358 = load i32, i32* %19, align 4
  %359 = load i32, i32* @UINT16_MAX, align 4
  %360 = icmp sgt i32 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %352
  %362 = load i32, i32* @UINT16_MAX, align 4
  store i32 %362, i32* %19, align 4
  br label %363

363:                                              ; preds = %361, %352
  br label %364

364:                                              ; preds = %363, %350
  %365 = load i32, i32* %19, align 4
  %366 = sext i32 %365 to i64
  %367 = inttoptr i64 %366 to i8*
  %368 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 11
  store i8* %367, i8** %369, align 8
  %370 = load i32, i32* %13, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %382

372:                                              ; preds = %364
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* @UINT32_MAX, align 4
  %375 = icmp sgt i32 %373, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %372
  %377 = load i32, i32* @UINT32_MAX, align 4
  br label %380

378:                                              ; preds = %372
  %379 = load i32, i32* %13, align 4
  br label %380

380:                                              ; preds = %378, %376
  %381 = phi i32 [ %377, %376 ], [ %379, %378 ]
  store i32 %381, i32* %19, align 4
  br label %386

382:                                              ; preds = %364
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %19, align 4
  br label %386

386:                                              ; preds = %382, %380
  %387 = load i32, i32* %19, align 4
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 4
  store i32 %387, i32* %389, align 4
  %390 = load i32, i32* %14, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %402

392:                                              ; preds = %386
  %393 = load i32, i32* %14, align 4
  %394 = load i32, i32* @UINT32_MAX, align 4
  %395 = icmp sgt i32 %393, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %392
  %397 = load i32, i32* @UINT32_MAX, align 4
  br label %400

398:                                              ; preds = %392
  %399 = load i32, i32* %14, align 4
  br label %400

400:                                              ; preds = %398, %396
  %401 = phi i32 [ %397, %396 ], [ %399, %398 ]
  store i32 %401, i32* %19, align 4
  br label %406

402:                                              ; preds = %386
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  store i32 %405, i32* %19, align 4
  br label %406

406:                                              ; preds = %402, %400
  %407 = load i32, i32* %19, align 4
  %408 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 5
  store i32 %407, i32* %409, align 8
  %410 = load i32, i32* %15, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %423

412:                                              ; preds = %406
  %413 = load i32, i32* %15, align 4
  %414 = load i32, i32* @PAGE_SIZE, align 4
  %415 = icmp sgt i32 %413, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %412
  %417 = load i32, i32* @PAGE_MASK, align 4
  br label %421

418:                                              ; preds = %412
  %419 = load i32, i32* %15, align 4
  %420 = sub nsw i32 %419, 1
  br label %421

421:                                              ; preds = %418, %416
  %422 = phi i32 [ %417, %416 ], [ %420, %418 ]
  store i32 %422, i32* %19, align 4
  br label %424

423:                                              ; preds = %406
  store i32 0, i32* %19, align 4
  br label %424

424:                                              ; preds = %423, %421
  %425 = load i32, i32* %19, align 4
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 6
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* %17, align 4
  %429 = load i32, i32* @MNT_DEFAULT_IOQUEUE_DEPTH, align 4
  %430 = icmp sgt i32 %428, %429
  br i1 %430, label %431, label %433

431:                                              ; preds = %424
  %432 = load i32, i32* %17, align 4
  store i32 %432, i32* %19, align 4
  br label %435

433:                                              ; preds = %424
  %434 = load i32, i32* @MNT_DEFAULT_IOQUEUE_DEPTH, align 4
  store i32 %434, i32* %19, align 4
  br label %435

435:                                              ; preds = %433, %431
  %436 = load i32, i32* %19, align 4
  %437 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 7
  store i32 %436, i32* %438, align 8
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 7
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @MNT_IOSCALE(i32 %441)
  %443 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 8
  store i32 %442, i32* %444, align 4
  %445 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 8
  %447 = load i32, i32* %446, align 4
  %448 = icmp sgt i32 %447, 1
  br i1 %448, label %449, label %457

449:                                              ; preds = %435
  %450 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %450, i32 0, i32 7
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 8
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %452, i32 %455)
  br label %457

457:                                              ; preds = %449, %435
  %458 = load i32, i32* %20, align 4
  %459 = load i32, i32* @DK_FEATURE_FORCE_UNIT_ACCESS, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %468

462:                                              ; preds = %457
  %463 = load i32, i32* @MNT_IOFLAGS_FUA_SUPPORTED, align 4
  %464 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 9
  %466 = load i32, i32* %465, align 8
  %467 = or i32 %466, %463
  store i32 %467, i32* %465, align 8
  br label %468

468:                                              ; preds = %462, %457
  %469 = load i64, i64* %4, align 8
  %470 = load i32, i32* @DKIOCGETIOMINSATURATIONBYTECOUNT, align 4
  %471 = ptrtoint i32* %16 to i32
  %472 = load i32*, i32** %21, align 8
  %473 = call i64 @VNOP_IOCTL(i64 %469, i32 %470, i32 %471, i32 0, i32* %472)
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %468
  %476 = load i32, i32* %16, align 4
  %477 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 10
  store i32 %476, i32* %478, align 4
  br label %482

479:                                              ; preds = %468
  %480 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %480, i32 0, i32 10
  store i32 0, i32* %481, align 4
  br label %482

482:                                              ; preds = %479, %475
  %483 = load i64, i64* %4, align 8
  %484 = load i32, i32* @DKIOCCORESTORAGE, align 4
  %485 = ptrtoint %struct.TYPE_5__* %22 to i32
  %486 = load i32*, i32** %21, align 8
  %487 = call i64 @VNOP_IOCTL(i64 %483, i32 %484, i32 %485, i32 0, i32* %486)
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %489, label %491

489:                                              ; preds = %482
  %490 = load i64, i64* @TRUE, align 8
  store i64 %490, i64* %23, align 8
  br label %491

491:                                              ; preds = %489, %482
  %492 = load i32, i32* %20, align 4
  %493 = load i32, i32* @DK_FEATURE_UNMAP, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %512

496:                                              ; preds = %491
  %497 = load i32, i32* @MNT_IOFLAGS_UNMAP_SUPPORTED, align 4
  %498 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %498, i32 0, i32 9
  %500 = load i32, i32* %499, align 8
  %501 = or i32 %500, %497
  store i32 %501, i32* %499, align 8
  %502 = load i64, i64* %23, align 8
  %503 = load i64, i64* @TRUE, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %511

505:                                              ; preds = %496
  %506 = load i32, i32* @MNT_IOFLAGS_CSUNMAP_SUPPORTED, align 4
  %507 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %507, i32 0, i32 9
  %509 = load i32, i32* %508, align 8
  %510 = or i32 %509, %506
  store i32 %510, i32* %508, align 8
  br label %511

511:                                              ; preds = %505, %496
  br label %512

512:                                              ; preds = %511, %491
  %513 = load i64, i64* %23, align 8
  %514 = load i64, i64* @TRUE, align 8
  %515 = icmp eq i64 %513, %514
  br i1 %515, label %516, label %529

516:                                              ; preds = %512
  %517 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* @DK_CORESTORAGE_PIN_YOUR_METADATA, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %528

522:                                              ; preds = %516
  %523 = load i32, i32* @MNT_IOFLAGS_FUSION_DRIVE, align 4
  %524 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %525 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %524, i32 0, i32 9
  %526 = load i32, i32* %525, align 8
  %527 = or i32 %526, %523
  store i32 %527, i32* %525, align 8
  br label %528

528:                                              ; preds = %522, %516
  br label %547

529:                                              ; preds = %512
  %530 = load i64, i64* %4, align 8
  %531 = load i32, i32* @DKIOCGETAPFSFLAVOUR, align 4
  %532 = ptrtoint i64* %26 to i32
  %533 = load i32*, i32** %21, align 8
  %534 = call i64 @VNOP_IOCTL(i64 %530, i32 %531, i32 %532, i32 0, i32* %533)
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %536, label %546

536:                                              ; preds = %529
  %537 = load i64, i64* %26, align 8
  %538 = load i64, i64* @DK_APFS_FUSION, align 8
  %539 = icmp eq i64 %537, %538
  br i1 %539, label %540, label %546

540:                                              ; preds = %536
  %541 = load i32, i32* @MNT_IOFLAGS_FUSION_DRIVE, align 4
  %542 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %542, i32 0, i32 9
  %544 = load i32, i32* %543, align 8
  %545 = or i32 %544, %541
  store i32 %545, i32* %543, align 8
  br label %546

546:                                              ; preds = %540, %536, %529
  br label %547

547:                                              ; preds = %546, %528
  %548 = load i32, i32* %6, align 4
  store i32 %548, i32* %3, align 4
  br label %549

549:                                              ; preds = %547, %225, %215, %205, %195, %185, %175, %165, %155, %145, %135, %125, %70
  %550 = load i32, i32* %3, align 4
  ret i32 %550
}

declare dso_local i32* @vfs_context_current(...) #1

declare dso_local i64 @VNOP_IOCTL(i64, i32, i32, i32, i32*) #1

declare dso_local i64 @num_trailing_0(i32) #1

declare dso_local i32 @set_fsblocksize(i64) #1

declare dso_local i32 @MNT_IOSCALE(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
