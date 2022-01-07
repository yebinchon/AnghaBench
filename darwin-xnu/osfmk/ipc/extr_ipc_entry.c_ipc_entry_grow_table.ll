; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_entry.c_ipc_entry_grow_table.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_entry.c_ipc_entry_grow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_entry = type { i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i32, %struct.TYPE_14__*, %struct.ipc_entry* }
%struct.TYPE_14__ = type { i64 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@ITS_SIZE_NONE = common dso_local global i64 0, align 8
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@IE_NULL = common dso_local global %struct.ipc_entry* null, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@IO_NULL = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_SEND = common dso_local global i64 0, align 8
@IPC_OBJECT_NULL = common dso_local global i64 0, align 8
@ipc_entry_grow_count = common dso_local global i32 0, align 4
@ipc_entry_grow_freelist_entries = common dso_local global i64 0, align 8
@ipc_entry_grow_freelist_entries_max = common dso_local global i64 0, align 8
@ipc_entry_grow_rescan = common dso_local global i32 0, align 4
@ipc_entry_grow_rescan_entries = common dso_local global i32 0, align 4
@ipc_entry_grow_rescan_entries_max = common dso_local global i64 0, align 8
@ipc_entry_grow_rescan_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_entry_grow_table(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ipc_entry*, align 8
  %11 = alloca %struct.ipc_entry*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ipc_entry*, align 8
  %21 = alloca %struct.ipc_entry, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = call i32 @is_active(%struct.TYPE_15__* %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = call i64 @is_growing(%struct.TYPE_15__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call i32 @is_write_sleep(%struct.TYPE_15__* %29)
  %31 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %31, i32* %3, align 4
  br label %422

32:                                               ; preds = %2
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 5
  %35 = load %struct.ipc_entry*, %struct.ipc_entry** %34, align 8
  store %struct.ipc_entry* %35, %struct.ipc_entry** %10, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %13, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i64 -1
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %12, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @ITS_SIZE_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %32
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %55, i32* %3, align 4
  br label %422

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %68, %56
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp sgt i64 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  br i1 %67, label %68, label %75

68:                                               ; preds = %66
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %9, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 1
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %13, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %7, align 8
  br label %58

75:                                               ; preds = %66
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = call i32 @is_write_unlock(%struct.TYPE_15__* %80)
  %82 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %82, i32* %3, align 4
  br label %422

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %32
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = call i32 @is_write_unlock(%struct.TYPE_15__* %89)
  %91 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %91, i32* %3, align 4
  br label %422

92:                                               ; preds = %84
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i64 1
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %14, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp sle i64 %102, %103
  br label %105

105:                                              ; preds = %101, %92
  %106 = phi i1 [ false, %92 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = call i32 @is_start_growing(%struct.TYPE_15__* %109)
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %117 = call i32 @is_write_unlock(%struct.TYPE_15__* %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %119 = call %struct.ipc_entry* @it_entries_alloc(%struct.TYPE_14__* %118)
  store %struct.ipc_entry* %119, %struct.ipc_entry** %11, align 8
  %120 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %121 = load %struct.ipc_entry*, %struct.ipc_entry** @IE_NULL, align 8
  %122 = icmp eq %struct.ipc_entry* %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %105
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = call i32 @is_write_lock(%struct.TYPE_15__* %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = call i32 @is_done_growing(%struct.TYPE_15__* %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = call i32 @is_write_unlock(%struct.TYPE_15__* %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = ptrtoint %struct.TYPE_15__* %130 to i32
  %132 = call i32 @thread_wakeup(i32 %131)
  %133 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %133, i32* %3, align 4
  br label %422

134:                                              ; preds = %105
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* %7, align 8
  %139 = call i32 @ipc_space_rand_freelist(%struct.TYPE_15__* %135, %struct.ipc_entry* %136, i64 %137, i64 %138)
  %140 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %141 = bitcast %struct.ipc_entry* %140 to i8*
  %142 = load i64, i64* %6, align 8
  %143 = mul i64 %142, 24
  %144 = call i32 @memset(i8* %141, i32 0, i64 %143)
  store i64 0, i64* %17, align 8
  %145 = load i64, i64* %6, align 8
  %146 = sub nsw i64 %145, 1
  store i64 %146, i64* %18, align 8
  br label %147

147:                                              ; preds = %320, %134
  %148 = load i64, i64* %17, align 8
  store i64 %148, i64* %15, align 8
  br label %149

149:                                              ; preds = %252, %147
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %18, align 8
  %152 = icmp ule i64 %150, %151
  br i1 %152, label %153, label %255

153:                                              ; preds = %149
  %154 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %155 = load i64, i64* %15, align 8
  %156 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %154, i64 %155
  store %struct.ipc_entry* %156, %struct.ipc_entry** %20, align 8
  %157 = load %struct.ipc_entry*, %struct.ipc_entry** %10, align 8
  %158 = load i64, i64* %15, align 8
  %159 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %157, i64 %158
  %160 = bitcast %struct.ipc_entry* %21 to i8*
  %161 = bitcast %struct.ipc_entry* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 24, i1 false)
  %162 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %163 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %21, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %164, %166
  br i1 %167, label %177, label %168

168:                                              ; preds = %153
  %169 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %170 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @IE_BITS_TYPE(i32 %171)
  %173 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %21, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @IE_BITS_TYPE(i32 %174)
  %176 = icmp ne i64 %172, %175
  br i1 %176, label %177, label %234

177:                                              ; preds = %168, %153
  %178 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %179 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @IO_NULL, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %177
  %184 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %185 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @IE_BITS_TYPE(i32 %186)
  %188 = load i64, i64* @MACH_PORT_TYPE_SEND, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %183
  %191 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %192 = load i64, i64* %7, align 8
  %193 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %194 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %15, align 8
  %197 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %198 = call i32 @ipc_hash_table_delete(%struct.ipc_entry* %191, i64 %192, i64 %195, i64 %196, %struct.ipc_entry* %197)
  br label %199

199:                                              ; preds = %190, %183, %177
  %200 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %21, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %203 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %21, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %207 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %21, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %211 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %213 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @IO_NULL, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %199
  %218 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %219 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @IE_BITS_TYPE(i32 %220)
  %222 = load i64, i64* @MACH_PORT_TYPE_SEND, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %217
  %225 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %226 = load i64, i64* %7, align 8
  %227 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %228 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %15, align 8
  %231 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %232 = call i32 @ipc_hash_table_insert(%struct.ipc_entry* %225, i64 %226, i64 %229, i64 %230, %struct.ipc_entry* %231)
  br label %233

233:                                              ; preds = %224, %217, %199
  br label %251

234:                                              ; preds = %168
  %235 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %236 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %21, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %237, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 @assert(i32 %241)
  %243 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %21, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %246 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %21, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ipc_entry*, %struct.ipc_entry** %20, align 8
  %250 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %234, %233
  br label %252

252:                                              ; preds = %251
  %253 = load i64, i64* %15, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %15, align 8
  br label %149

255:                                              ; preds = %149
  %256 = load %struct.ipc_entry*, %struct.ipc_entry** %10, align 8
  %257 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %256, i64 0
  %258 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %261 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %260, i64 0
  %262 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %261, i32 0, i32 1
  store i64 %259, i64* %262, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %19, align 8
  br label %263

263:                                              ; preds = %291, %255
  %264 = load i64, i64* %19, align 8
  %265 = load i64, i64* %6, align 8
  %266 = icmp slt i64 %264, %265
  br i1 %266, label %267, label %294

267:                                              ; preds = %263
  %268 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %269 = load i64, i64* %16, align 8
  %270 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %268, i64 %269
  %271 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @IPC_OBJECT_NULL, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  br label %294

276:                                              ; preds = %267
  %277 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %278 = load i64, i64* %16, align 8
  %279 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %277, i64 %278
  %280 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %15, align 8
  %282 = load i64, i64* %15, align 8
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %276
  %285 = load i64, i64* %15, align 8
  %286 = load i64, i64* %6, align 8
  %287 = icmp uge i64 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %284, %276
  br label %294

289:                                              ; preds = %284
  %290 = load i64, i64* %15, align 8
  store i64 %290, i64* %16, align 8
  br label %291

291:                                              ; preds = %289
  %292 = load i64, i64* %19, align 8
  %293 = add nsw i64 %292, 1
  store i64 %293, i64* %19, align 8
  br label %263

294:                                              ; preds = %288, %275, %263
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %296 = call i32 @is_write_lock(%struct.TYPE_15__* %295)
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %298 = call i32 @is_active(%struct.TYPE_15__* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %314, label %300

300:                                              ; preds = %294
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %302 = call i32 @is_done_growing(%struct.TYPE_15__* %301)
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %304 = call i32 @is_write_unlock(%struct.TYPE_15__* %303)
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %306 = ptrtoint %struct.TYPE_15__* %305 to i32
  %307 = call i32 @thread_wakeup(i32 %306)
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %309 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %310 = call i32 @it_entries_free(%struct.TYPE_14__* %308, %struct.ipc_entry* %309)
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %312 = call i32 @is_write_lock(%struct.TYPE_15__* %311)
  %313 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %313, i32* %3, align 4
  br label %422

314:                                              ; preds = %294
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %6, align 8
  %319 = icmp slt i64 %317, %318
  br i1 %319, label %320, label %340

320:                                              ; preds = %314
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = icmp sgt i64 %323, 0
  %325 = zext i1 %324 to i32
  %326 = call i32 @assert(i32 %325)
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %17, align 8
  %330 = load i64, i64* %6, align 8
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 0
  store i64 %330, i64* %332, align 8
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %18, align 8
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 1
  store i64 0, i64* %337, align 8
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %339 = call i32 @is_write_unlock(%struct.TYPE_15__* %338)
  br label %147

340:                                              ; preds = %314
  %341 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %342 = load i64, i64* %16, align 8
  %343 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %341, i64 %342
  %344 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %340
  %348 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %349 = load i64, i64* %16, align 8
  %350 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %348, i64 %349
  %351 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @IO_NULL, align 8
  %354 = icmp eq i64 %352, %353
  br label %355

355:                                              ; preds = %347, %340
  %356 = phi i1 [ false, %340 ], [ %354, %347 ]
  %357 = zext i1 %356 to i32
  %358 = call i32 @assert(i32 %357)
  %359 = load i64, i64* %6, align 8
  %360 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %361 = load i64, i64* %16, align 8
  %362 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %360, i64 %361
  %363 = getelementptr inbounds %struct.ipc_entry, %struct.ipc_entry* %362, i32 0, i32 1
  store i64 %359, i64* %363, align 8
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 5
  %366 = load %struct.ipc_entry*, %struct.ipc_entry** %365, align 8
  %367 = load %struct.ipc_entry*, %struct.ipc_entry** %10, align 8
  %368 = icmp eq %struct.ipc_entry* %366, %367
  %369 = zext i1 %368 to i32
  %370 = call i32 @assert(i32 %369)
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 4
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %372, align 8
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %375 = icmp eq %struct.TYPE_14__* %373, %374
  br i1 %375, label %380, label %376

376:                                              ; preds = %355
  %377 = load i64, i64* %5, align 8
  %378 = load i64, i64* @ITS_SIZE_NONE, align 8
  %379 = icmp ne i64 %377, %378
  br label %380

380:                                              ; preds = %376, %355
  %381 = phi i1 [ true, %355 ], [ %379, %376 ]
  %382 = zext i1 %381 to i32
  %383 = call i32 @assert(i32 %382)
  %384 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* %6, align 8
  %388 = icmp eq i64 %386, %387
  %389 = zext i1 %388 to i32
  %390 = call i32 @assert(i32 %389)
  %391 = load %struct.ipc_entry*, %struct.ipc_entry** %11, align 8
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 5
  store %struct.ipc_entry* %391, %struct.ipc_entry** %393, align 8
  %394 = load i64, i64* %7, align 8
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 2
  store i64 %394, i64* %396, align 8
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 4
  store %struct.TYPE_14__* %397, %struct.TYPE_14__** %399, align 8
  %400 = load i64, i64* %7, align 8
  %401 = load i64, i64* %6, align 8
  %402 = sub nsw i64 %400, %401
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = sext i32 %405 to i64
  %407 = add nsw i64 %406, %402
  %408 = trunc i64 %407 to i32
  store i32 %408, i32* %404, align 8
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %410 = call i32 @is_done_growing(%struct.TYPE_15__* %409)
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %412 = call i32 @is_write_unlock(%struct.TYPE_15__* %411)
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %414 = ptrtoint %struct.TYPE_15__* %413 to i32
  %415 = call i32 @thread_wakeup(i32 %414)
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %417 = load %struct.ipc_entry*, %struct.ipc_entry** %10, align 8
  %418 = call i32 @it_entries_free(%struct.TYPE_14__* %416, %struct.ipc_entry* %417)
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %420 = call i32 @is_write_lock(%struct.TYPE_15__* %419)
  %421 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %421, i32* %3, align 4
  br label %422

422:                                              ; preds = %380, %300, %123, %88, %79, %54, %28
  %423 = load i32, i32* %3, align 4
  ret i32 %423
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(%struct.TYPE_15__*) #1

declare dso_local i64 @is_growing(%struct.TYPE_15__*) #1

declare dso_local i32 @is_write_sleep(%struct.TYPE_15__*) #1

declare dso_local i32 @is_write_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @is_start_growing(%struct.TYPE_15__*) #1

declare dso_local %struct.ipc_entry* @it_entries_alloc(%struct.TYPE_14__*) #1

declare dso_local i32 @is_write_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @is_done_growing(%struct.TYPE_15__*) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @ipc_space_rand_freelist(%struct.TYPE_15__*, %struct.ipc_entry*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @ipc_hash_table_delete(%struct.ipc_entry*, i64, i64, i64, %struct.ipc_entry*) #1

declare dso_local i32 @ipc_hash_table_insert(%struct.ipc_entry*, i64, i64, i64, %struct.ipc_entry*) #1

declare dso_local i32 @it_entries_free(%struct.TYPE_14__*, %struct.ipc_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
