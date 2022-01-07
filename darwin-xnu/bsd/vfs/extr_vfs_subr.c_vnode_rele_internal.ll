; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_rele_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_rele_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i64, i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.uthread = type { %struct.TYPE_16__*, i64 }

@.str = private unnamed_addr constant [80 x i8] c"vnode_rele_ext: vp %p usecount -ve : %d.  v_tag = %d, v_type = %d, v_flag = %x.\00", align 1
@FWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"vnode_rele_ext: vp %p writecount -ve : %d.  v_tag = %d, v_type = %d, v_flag = %x.\00", align 1
@O_EVTONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"vnode_rele_ext: vp %p kusecount -ve : %d.  v_tag = %d, v_type = %d, v_flag = %x.\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"vnode_rele_ext: vp %p kusecount(%d) out of balance with usecount(%d).  v_tag = %d, v_type = %d, v_flag = %x.\00", align 1
@VL_NEEDINACTIVE = common dso_local global i32 0, align 4
@VNOCACHE_DATA = common dso_local global i32 0, align 4
@VRAOFF = common dso_local global i32 0, align 4
@VOPENEVT = common dso_local global i32 0, align 4
@VL_TERMINATE = common dso_local global i32 0, align 4
@VL_DEAD = common dso_local global i32 0, align 4
@VL_MARKTERM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@VISDIRTY = common dso_local global i32 0, align 4
@VAGE = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VSYSTEM = common dso_local global i32 0, align 4
@VRAGE = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnode_rele_internal(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uthread*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = call i32 @vnode_lock_spin(%struct.TYPE_16__* %13)
  br label %15

15:                                               ; preds = %12, %4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = call i32 (i8*, %struct.TYPE_16__*, i64, i64, i64, i64, ...) @panic(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %22, i64 %25, i64 %29, i64 %32, i64 %36)
  br label %38

38:                                               ; preds = %21, %15
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @FWRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = call i32 (i8*, %struct.TYPE_16__*, i64, i64, i64, i64, ...) @panic(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %50, i64 %53, i64 %57, i64 %60, i64 %64)
  br label %66

66:                                               ; preds = %49, %43
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @O_EVTONLY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = call i32 (i8*, %struct.TYPE_16__*, i64, i64, i64, i64, ...) @panic(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_16__* %79, i64 %82, i64 %86, i64 %89, i64 %93)
  br label %95

95:                                               ; preds = %78, %72
  br label %96

96:                                               ; preds = %95, %67
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %96
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, %struct.TYPE_16__*, i64, i64, i64, i64, ...) @panic(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_16__* %105, i64 %108, i64 %111, i64 %115, i64 %118, i32 %121)
  br label %123

123:                                              ; preds = %104, %96
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %128, %123
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* @VNOCACHE_DATA, align 4
  %145 = load i32, i32* @VRAOFF, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @VOPENEVT, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %138, %133
  br label %286

155:                                              ; preds = %128
  %156 = load i32, i32* @VNOCACHE_DATA, align 4
  %157 = load i32, i32* @VRAOFF, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @VOPENEVT, align 4
  %160 = or i32 %158, %159
  %161 = xor i32 %160, -1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @VL_TERMINATE, align 4
  %170 = load i32, i32* @VL_DEAD, align 4
  %171 = or i32 %169, %170
  %172 = call i64 @ISSET(i32 %168, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %155
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %221

177:                                              ; preds = %174, %155
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %218

180:                                              ; preds = %177
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @VL_TERMINATE, align 4
  %185 = load i32, i32* @VL_DEAD, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @VL_MARKTERM, align 4
  %188 = or i32 %186, %187
  %189 = and i32 %183, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %212, label %191

191:                                              ; preds = %180
  %192 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %198 = call i64 @vnode_on_reliable_media(%struct.TYPE_16__* %197)
  %199 = load i64, i64* @FALSE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %208, label %201

201:                                              ; preds = %191
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @VISDIRTY, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %201, %191
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %210 = call i32 @vnode_async_list_add(%struct.TYPE_16__* %209)
  br label %286

211:                                              ; preds = %201
  br label %212

212:                                              ; preds = %211, %180
  %213 = load i32, i32* @VAGE, align 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %177
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %220 = call i32 @vnode_list_add(%struct.TYPE_16__* %219)
  br label %286

221:                                              ; preds = %174
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 8
  %226 = load i32, i32* @VL_NEEDINACTIVE, align 4
  %227 = xor i32 %226, -1
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %233 = call i32 @vnode_unlock(%struct.TYPE_16__* %232)
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %235 = call i32 (...) @vfs_context_current()
  %236 = call i32 @VNOP_INACTIVE(%struct.TYPE_16__* %234, i32 %235)
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %238 = call i32 @vnode_lock_spin(%struct.TYPE_16__* %237)
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %281

243:                                              ; preds = %221
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %281

248:                                              ; preds = %243
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @VL_MARKTERM, align 4
  %253 = load i32, i32* @VL_TERMINATE, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @VL_DEAD, align 4
  %256 = or i32 %254, %255
  %257 = and i32 %251, %256
  %258 = load i32, i32* @VL_MARKTERM, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %281

260:                                              ; preds = %248
  %261 = call i32 (...) @current_thread()
  %262 = call %struct.uthread* @get_bsdthread_info(i32 %261)
  store %struct.uthread* %262, %struct.uthread** %9, align 8
  %263 = load %struct.uthread*, %struct.uthread** %9, align 8
  %264 = getelementptr inbounds %struct.uthread, %struct.uthread* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %260
  %268 = load %struct.uthread*, %struct.uthread** %9, align 8
  %269 = getelementptr inbounds %struct.uthread, %struct.uthread* %268, i32 0, i32 0
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 8
  store %struct.TYPE_16__* %270, %struct.TYPE_16__** %272, align 8
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %274 = load %struct.uthread*, %struct.uthread** %9, align 8
  %275 = getelementptr inbounds %struct.uthread, %struct.uthread* %274, i32 0, i32 0
  store %struct.TYPE_16__* %273, %struct.TYPE_16__** %275, align 8
  br label %286

276:                                              ; preds = %260
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %278 = call i32 @vnode_lock_convert(%struct.TYPE_16__* %277)
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %280 = call i32 @vnode_reclaim_internal(%struct.TYPE_16__* %279, i32 1, i32 1, i32 0)
  br label %281

281:                                              ; preds = %276, %248, %243, %221
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %283 = call i32 @vnode_dropiocount(%struct.TYPE_16__* %282)
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %285 = call i32 @vnode_list_add(%struct.TYPE_16__* %284)
  br label %286

286:                                              ; preds = %281, %267, %218, %208, %154
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %327

291:                                              ; preds = %286
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @VREG, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %327

297:                                              ; preds = %291
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @VSYSTEM, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %327, label %304

304:                                              ; preds = %297
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 7
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %306, align 8
  %308 = icmp ne %struct.TYPE_15__* %307, null
  br i1 %308, label %309, label %326

309:                                              ; preds = %304
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %311 = call i32 @vnode_lock_convert(%struct.TYPE_16__* %310)
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 7
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @VRAGE, align 4
  %321 = and i32 %319, %320
  %322 = load i32, i32* @VRAGE, align 4
  %323 = icmp eq i32 %321, %322
  %324 = zext i1 %323 to i32
  %325 = call i32 @memory_object_mark_unused(i32 %316, i32 %324)
  br label %326

326:                                              ; preds = %309, %304
  br label %327

327:                                              ; preds = %326, %297, %291, %286
  %328 = load i32, i32* %8, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %327
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %332 = call i32 @vnode_unlock(%struct.TYPE_16__* %331)
  br label %333

333:                                              ; preds = %330, %327
  ret void
}

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_16__*) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_16__*, i64, i64, i64, i64, ...) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i64 @vnode_on_reliable_media(%struct.TYPE_16__*) #1

declare dso_local i32 @vnode_async_list_add(%struct.TYPE_16__*) #1

declare dso_local i32 @vnode_list_add(%struct.TYPE_16__*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @VNOP_INACTIVE(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @vnode_lock_convert(%struct.TYPE_16__*) #1

declare dso_local i32 @vnode_reclaim_internal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @vnode_dropiocount(%struct.TYPE_16__*) #1

declare dso_local i32 @memory_object_mark_unused(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
