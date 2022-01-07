; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_unwire_nested.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_unwire_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32* }
%struct.vm_map_entry = type { i64, i32, i64, i64, i64, i32, %struct.vm_map_entry*, i8*, i64, i64, i64 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@KERN_SUCCESS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"vm_map_unwire: start not found\00", align 1
@KERN_INVALID_ADDRESS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"vm_map_unwire: in_transition entry\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"vm_map_unwire: entry is unwired\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"vm_map_unwire: non-contiguous region\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"vm_map_unwire: re-lookup failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i64, i64, i8*, i32*, i64)* @vm_map_unwire_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vm_map_unwire_nested(%struct.TYPE_16__* %0, i64 %1, i64 %2, i8* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.vm_map_entry*, align 8
  %15 = alloca %struct.vm_map_entry*, align 8
  %16 = alloca %struct.vm_map_entry, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %24 = load i8*, i8** @FALSE, align 8
  store i8* %24, i8** %18, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = call i32 @vm_map_lock(%struct.TYPE_16__* %25)
  %27 = load i32*, i32** %12, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i8*, i8** @TRUE, align 8
  store i8* %30, i8** %18, align 8
  br label %31

31:                                               ; preds = %29, %6
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %19, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_16__* %35, i64 %36, i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @page_aligned(i64 %39)
  %41 = call i32 @assert(i32 %40)
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @page_aligned(i64 %42)
  %44 = call i32 @assert(i32 %43)
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_16__* %46)
  %48 = call i32 @VM_MAP_PAGE_ALIGNED(i64 %45, i32 %47)
  %49 = call i32 @assert(i32 %48)
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_16__* %51)
  %53 = call i32 @VM_MAP_PAGE_ALIGNED(i64 %50, i32 %52)
  %54 = call i32 @assert(i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %31
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = call i32 @vm_map_unlock(%struct.TYPE_16__* %59)
  %61 = load i8*, i8** @KERN_SUCCESS, align 8
  store i8* %61, i8** %7, align 8
  br label %568

62:                                               ; preds = %31
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @vm_map_lookup_entry(%struct.TYPE_16__* %63, i64 %64, %struct.vm_map_entry** %15)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load %struct.vm_map_entry*, %struct.vm_map_entry** %15, align 8
  store %struct.vm_map_entry* %68, %struct.vm_map_entry** %14, align 8
  br label %78

69:                                               ; preds = %62
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = call i32 @vm_map_unlock(%struct.TYPE_16__* %75)
  %77 = load i8*, i8** @KERN_INVALID_ADDRESS, align 8
  store i8* %77, i8** %7, align 8
  br label %568

78:                                               ; preds = %67
  %79 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %80 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %79, i32 0, i32 10
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = call i32 @vm_map_unlock(%struct.TYPE_16__* %84)
  %86 = load i8*, i8** @KERN_INVALID_ADDRESS, align 8
  store i8* %86, i8** %7, align 8
  br label %568

87:                                               ; preds = %78
  %88 = load i8*, i8** @FALSE, align 8
  store i8* %88, i8** %17, align 8
  br label %89

89:                                               ; preds = %553, %445, %432, %374, %313, %224, %182, %112, %87
  %90 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = call %struct.vm_map_entry* @vm_map_to_entry(%struct.TYPE_16__* %91)
  %93 = icmp ne %struct.vm_map_entry* %90, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %96 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp slt i64 %97, %98
  br label %100

100:                                              ; preds = %94, %89
  %101 = phi i1 [ false, %89 ], [ %99, %94 ]
  br i1 %101, label %102, label %554

102:                                              ; preds = %100
  %103 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %104 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i8*, i8** %11, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %107
  %113 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %114 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %113, i32 0, i32 6
  %115 = load %struct.vm_map_entry*, %struct.vm_map_entry** %114, align 8
  store %struct.vm_map_entry* %115, %struct.vm_map_entry** %14, align 8
  br label %89

116:                                              ; preds = %102
  %117 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %118 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %356

121:                                              ; preds = %116
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @vm_map_clip_start(%struct.TYPE_16__* %122, %struct.vm_map_entry* %123, i64 %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @vm_map_clip_end(%struct.TYPE_16__* %126, %struct.vm_map_entry* %127, i64 %128)
  %130 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %131 = call i64 @VME_OFFSET(%struct.vm_map_entry* %130)
  store i64 %131, i64* %20, align 8
  %132 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %133 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %136 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %134, %137
  store i64 %138, i64* %21, align 8
  %139 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %140 = call i64 @VME_OFFSET(%struct.vm_map_entry* %139)
  %141 = load i64, i64* %21, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %21, align 8
  %143 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %144 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %22, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %314

148:                                              ; preds = %121
  %149 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %150 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %155 = call %struct.TYPE_16__* @VME_SUBMAP(%struct.vm_map_entry* %154)
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %23, align 8
  %158 = load i64, i64* %20, align 8
  store i64 %158, i64* %13, align 8
  br label %164

159:                                              ; preds = %148
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  store i32* %162, i32** %23, align 8
  %163 = load i64, i64* %9, align 8
  store i64 %163, i64* %13, align 8
  br label %164

164:                                              ; preds = %159, %153
  %165 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %166 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %164
  %170 = load i8*, i8** %11, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %186

172:                                              ; preds = %169
  %173 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %174 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172, %164
  %178 = load i8*, i8** %11, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %177
  %183 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %184 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %183, i32 0, i32 6
  %185 = load %struct.vm_map_entry*, %struct.vm_map_entry** %184, align 8
  store %struct.vm_map_entry* %185, %struct.vm_map_entry** %14, align 8
  br label %89

186:                                              ; preds = %172, %169
  %187 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %188 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %10, align 8
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %192, label %215

192:                                              ; preds = %186
  %193 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %194 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %193, i32 0, i32 6
  %195 = load %struct.vm_map_entry*, %struct.vm_map_entry** %194, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %197 = call %struct.vm_map_entry* @vm_map_to_entry(%struct.TYPE_16__* %196)
  %198 = icmp eq %struct.vm_map_entry* %195, %197
  br i1 %198, label %209, label %199

199:                                              ; preds = %192
  %200 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %201 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %200, i32 0, i32 6
  %202 = load %struct.vm_map_entry*, %struct.vm_map_entry** %201, align 8
  %203 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %206 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp sgt i64 %204, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %199, %192
  %210 = load i8*, i8** %11, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %209
  br label %215

215:                                              ; preds = %214, %199, %186
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %217 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = call i32 @subtract_wire_counts(%struct.TYPE_16__* %216, %struct.vm_map_entry* %217, i8* %218)
  %220 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %221 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %215
  %225 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %226 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %225, i32 0, i32 6
  %227 = load %struct.vm_map_entry*, %struct.vm_map_entry** %226, align 8
  store %struct.vm_map_entry* %227, %struct.vm_map_entry** %14, align 8
  br label %89

228:                                              ; preds = %215
  %229 = load i8*, i8** @TRUE, align 8
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %232 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 8
  %233 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %234 = bitcast %struct.vm_map_entry* %16 to i8*
  %235 = bitcast %struct.vm_map_entry* %233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %234, i8* align 8 %235, i64 88, i1 false)
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %237 = call i32 @vm_map_unlock(%struct.TYPE_16__* %236)
  %238 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %239 = call %struct.TYPE_16__* @VME_SUBMAP(%struct.vm_map_entry* %238)
  %240 = load i64, i64* %20, align 8
  %241 = load i64, i64* %21, align 8
  %242 = load i8*, i8** %11, align 8
  %243 = load i32*, i32** %23, align 8
  %244 = load i64, i64* %13, align 8
  %245 = call i8* @vm_map_unwire_nested(%struct.TYPE_16__* %239, i64 %240, i64 %241, i8* %242, i32* %243, i64 %244)
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %247 = call i32 @vm_map_lock(%struct.TYPE_16__* %246)
  %248 = load i32, i32* %19, align 4
  %249 = add i32 %248, 1
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %249, %252
  br i1 %253, label %254, label %272

254:                                              ; preds = %228
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %256 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %16, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @vm_map_lookup_entry(%struct.TYPE_16__* %255, i64 %257, %struct.vm_map_entry** %15)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %269, label %260

260:                                              ; preds = %254
  %261 = load i8*, i8** %11, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %260
  %264 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %265

265:                                              ; preds = %263, %260
  %266 = load %struct.vm_map_entry*, %struct.vm_map_entry** %15, align 8
  %267 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %266, i32 0, i32 6
  %268 = load %struct.vm_map_entry*, %struct.vm_map_entry** %267, align 8
  store %struct.vm_map_entry* %268, %struct.vm_map_entry** %14, align 8
  br label %271

269:                                              ; preds = %254
  %270 = load %struct.vm_map_entry*, %struct.vm_map_entry** %15, align 8
  store %struct.vm_map_entry* %270, %struct.vm_map_entry** %14, align 8
  br label %271

271:                                              ; preds = %269, %265
  br label %272

272:                                              ; preds = %271, %228
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %19, align 4
  br label %276

276:                                              ; preds = %309, %272
  %277 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %279 = call %struct.vm_map_entry* @vm_map_to_entry(%struct.TYPE_16__* %278)
  %280 = icmp ne %struct.vm_map_entry* %277, %279
  br i1 %280, label %281, label %288

281:                                              ; preds = %276
  %282 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %283 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %16, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = icmp slt i64 %284, %286
  br label %288

288:                                              ; preds = %281, %276
  %289 = phi i1 [ false, %276 ], [ %287, %281 ]
  br i1 %289, label %290, label %313

290:                                              ; preds = %288
  %291 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %292 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @assert(i32 %293)
  %295 = load i8*, i8** @FALSE, align 8
  %296 = ptrtoint i8* %295 to i32
  %297 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %298 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 8
  %299 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %300 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %290
  %304 = load i8*, i8** @FALSE, align 8
  %305 = ptrtoint i8* %304 to i32
  %306 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %307 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %306, i32 0, i32 5
  store i32 %305, i32* %307, align 8
  %308 = load i8*, i8** @TRUE, align 8
  store i8* %308, i8** %17, align 8
  br label %309

309:                                              ; preds = %303, %290
  %310 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %311 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %310, i32 0, i32 6
  %312 = load %struct.vm_map_entry*, %struct.vm_map_entry** %311, align 8
  store %struct.vm_map_entry* %312, %struct.vm_map_entry** %14, align 8
  br label %276

313:                                              ; preds = %288
  br label %89

314:                                              ; preds = %121
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %316 = call i32 @vm_map_unlock(%struct.TYPE_16__* %315)
  %317 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %318 = call %struct.TYPE_16__* @VME_SUBMAP(%struct.vm_map_entry* %317)
  %319 = load i64, i64* %20, align 8
  %320 = load i64, i64* %21, align 8
  %321 = load i8*, i8** %11, align 8
  %322 = load i32*, i32** %12, align 8
  %323 = load i64, i64* %13, align 8
  %324 = call i8* @vm_map_unwire_nested(%struct.TYPE_16__* %318, i64 %319, i64 %320, i8* %321, i32* %322, i64 %323)
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %326 = call i32 @vm_map_lock(%struct.TYPE_16__* %325)
  %327 = load i32, i32* %19, align 4
  %328 = add i32 %327, 1
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %328, %331
  br i1 %332, label %333, label %351

333:                                              ; preds = %314
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %335 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %16, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = call i64 @vm_map_lookup_entry(%struct.TYPE_16__* %334, i64 %336, %struct.vm_map_entry** %15)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %348, label %339

339:                                              ; preds = %333
  %340 = load i8*, i8** %11, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %344, label %342

342:                                              ; preds = %339
  %343 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %344

344:                                              ; preds = %342, %339
  %345 = load %struct.vm_map_entry*, %struct.vm_map_entry** %15, align 8
  %346 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %345, i32 0, i32 6
  %347 = load %struct.vm_map_entry*, %struct.vm_map_entry** %346, align 8
  store %struct.vm_map_entry* %347, %struct.vm_map_entry** %14, align 8
  br label %350

348:                                              ; preds = %333
  %349 = load %struct.vm_map_entry*, %struct.vm_map_entry** %15, align 8
  store %struct.vm_map_entry* %349, %struct.vm_map_entry** %14, align 8
  br label %350

350:                                              ; preds = %348, %344
  br label %351

351:                                              ; preds = %350, %314
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  store i32 %354, i32* %19, align 4
  br label %355

355:                                              ; preds = %351
  br label %356

356:                                              ; preds = %355, %116
  %357 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %358 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %369, label %361

361:                                              ; preds = %356
  %362 = load i8*, i8** %11, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %364, label %378

364:                                              ; preds = %361
  %365 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %366 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %365, i32 0, i32 4
  %367 = load i64, i64* %366, align 8
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %378

369:                                              ; preds = %364, %356
  %370 = load i8*, i8** %11, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %369
  %373 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %374

374:                                              ; preds = %372, %369
  %375 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %376 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %375, i32 0, i32 6
  %377 = load %struct.vm_map_entry*, %struct.vm_map_entry** %376, align 8
  store %struct.vm_map_entry* %377, %struct.vm_map_entry** %14, align 8
  br label %89

378:                                              ; preds = %364, %361
  %379 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %380 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = icmp sgt i64 %381, 0
  br i1 %382, label %383, label %393

383:                                              ; preds = %378
  %384 = load i8*, i8** %11, align 8
  %385 = icmp ne i8* %384, null
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %388 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %387, i32 0, i32 4
  %389 = load i64, i64* %388, align 8
  %390 = icmp sgt i64 %389, 0
  br label %391

391:                                              ; preds = %386, %383
  %392 = phi i1 [ true, %383 ], [ %390, %386 ]
  br label %393

393:                                              ; preds = %391, %378
  %394 = phi i1 [ false, %378 ], [ %392, %391 ]
  %395 = zext i1 %394 to i32
  %396 = call i32 @assert(i32 %395)
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %398 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %399 = load i64, i64* %9, align 8
  %400 = call i32 @vm_map_clip_start(%struct.TYPE_16__* %397, %struct.vm_map_entry* %398, i64 %399)
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %402 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %403 = load i64, i64* %10, align 8
  %404 = call i32 @vm_map_clip_end(%struct.TYPE_16__* %401, %struct.vm_map_entry* %402, i64 %403)
  %405 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %406 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* %10, align 8
  %409 = icmp slt i64 %407, %408
  br i1 %409, label %410, label %436

410:                                              ; preds = %393
  %411 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %412 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %411, i32 0, i32 6
  %413 = load %struct.vm_map_entry*, %struct.vm_map_entry** %412, align 8
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %415 = call %struct.vm_map_entry* @vm_map_to_entry(%struct.TYPE_16__* %414)
  %416 = icmp eq %struct.vm_map_entry* %413, %415
  br i1 %416, label %427, label %417

417:                                              ; preds = %410
  %418 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %419 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %418, i32 0, i32 6
  %420 = load %struct.vm_map_entry*, %struct.vm_map_entry** %419, align 8
  %421 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %424 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %423, i32 0, i32 2
  %425 = load i64, i64* %424, align 8
  %426 = icmp sgt i64 %422, %425
  br i1 %426, label %427, label %436

427:                                              ; preds = %417, %410
  %428 = load i8*, i8** %11, align 8
  %429 = icmp ne i8* %428, null
  br i1 %429, label %432, label %430

430:                                              ; preds = %427
  %431 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %432

432:                                              ; preds = %430, %427
  %433 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %434 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %433, i32 0, i32 6
  %435 = load %struct.vm_map_entry*, %struct.vm_map_entry** %434, align 8
  store %struct.vm_map_entry* %435, %struct.vm_map_entry** %14, align 8
  br label %89

436:                                              ; preds = %417, %393
  %437 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %438 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %439 = load i8*, i8** %11, align 8
  %440 = call i32 @subtract_wire_counts(%struct.TYPE_16__* %437, %struct.vm_map_entry* %438, i8* %439)
  %441 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %442 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %441, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %436
  %446 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %447 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %446, i32 0, i32 6
  %448 = load %struct.vm_map_entry*, %struct.vm_map_entry** %447, align 8
  store %struct.vm_map_entry* %448, %struct.vm_map_entry** %14, align 8
  br label %89

449:                                              ; preds = %436
  %450 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %451 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %450, i32 0, i32 7
  %452 = load i8*, i8** %451, align 8
  %453 = icmp ne i8* %452, null
  br i1 %453, label %454, label %458

454:                                              ; preds = %449
  %455 = load i8*, i8** @FALSE, align 8
  %456 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %457 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %456, i32 0, i32 7
  store i8* %455, i8** %457, align 8
  br label %458

458:                                              ; preds = %454, %449
  %459 = load i8*, i8** @TRUE, align 8
  %460 = ptrtoint i8* %459 to i32
  %461 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %462 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %461, i32 0, i32 1
  store i32 %460, i32* %462, align 8
  %463 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %464 = bitcast %struct.vm_map_entry* %16 to i8*
  %465 = bitcast %struct.vm_map_entry* %463 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %464, i8* align 8 %465, i64 88, i1 false)
  %466 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %467 = call i32 @vm_map_unlock(%struct.TYPE_16__* %466)
  %468 = load i32*, i32** %12, align 8
  %469 = icmp ne i32* %468, null
  br i1 %469, label %470, label %476

470:                                              ; preds = %458
  %471 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %472 = load i8*, i8** @FALSE, align 8
  %473 = load i32*, i32** %12, align 8
  %474 = load i64, i64* %13, align 8
  %475 = call i32 @vm_fault_unwire(%struct.TYPE_16__* %471, %struct.vm_map_entry* %16, i8* %472, i32* %473, i64 %474)
  br label %485

476:                                              ; preds = %458
  %477 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %478 = load i8*, i8** @FALSE, align 8
  %479 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %480 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %479, i32 0, i32 1
  %481 = load i32*, i32** %480, align 8
  %482 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %16, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = call i32 @vm_fault_unwire(%struct.TYPE_16__* %477, %struct.vm_map_entry* %16, i8* %478, i32* %481, i64 %483)
  br label %485

485:                                              ; preds = %476, %470
  %486 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %487 = call i32 @vm_map_lock(%struct.TYPE_16__* %486)
  %488 = load i32, i32* %19, align 4
  %489 = add i32 %488, 1
  %490 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = icmp ne i32 %489, %492
  br i1 %493, label %494, label %512

494:                                              ; preds = %485
  %495 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %496 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %16, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = call i64 @vm_map_lookup_entry(%struct.TYPE_16__* %495, i64 %497, %struct.vm_map_entry** %15)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %509, label %500

500:                                              ; preds = %494
  %501 = load i8*, i8** %11, align 8
  %502 = icmp ne i8* %501, null
  br i1 %502, label %505, label %503

503:                                              ; preds = %500
  %504 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %505

505:                                              ; preds = %503, %500
  %506 = load %struct.vm_map_entry*, %struct.vm_map_entry** %15, align 8
  %507 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %506, i32 0, i32 6
  %508 = load %struct.vm_map_entry*, %struct.vm_map_entry** %507, align 8
  store %struct.vm_map_entry* %508, %struct.vm_map_entry** %14, align 8
  br label %511

509:                                              ; preds = %494
  %510 = load %struct.vm_map_entry*, %struct.vm_map_entry** %15, align 8
  store %struct.vm_map_entry* %510, %struct.vm_map_entry** %14, align 8
  br label %511

511:                                              ; preds = %509, %505
  br label %512

512:                                              ; preds = %511, %485
  %513 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %514 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  store i32 %515, i32* %19, align 4
  br label %516

516:                                              ; preds = %549, %512
  %517 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %518 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %519 = call %struct.vm_map_entry* @vm_map_to_entry(%struct.TYPE_16__* %518)
  %520 = icmp ne %struct.vm_map_entry* %517, %519
  br i1 %520, label %521, label %528

521:                                              ; preds = %516
  %522 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %523 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %16, i32 0, i32 2
  %526 = load i64, i64* %525, align 8
  %527 = icmp slt i64 %524, %526
  br label %528

528:                                              ; preds = %521, %516
  %529 = phi i1 [ false, %516 ], [ %527, %521 ]
  br i1 %529, label %530, label %553

530:                                              ; preds = %528
  %531 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %532 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 8
  %534 = call i32 @assert(i32 %533)
  %535 = load i8*, i8** @FALSE, align 8
  %536 = ptrtoint i8* %535 to i32
  %537 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %538 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %537, i32 0, i32 1
  store i32 %536, i32* %538, align 8
  %539 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %540 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %539, i32 0, i32 5
  %541 = load i32, i32* %540, align 8
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %549

543:                                              ; preds = %530
  %544 = load i8*, i8** @FALSE, align 8
  %545 = ptrtoint i8* %544 to i32
  %546 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %547 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %546, i32 0, i32 5
  store i32 %545, i32* %547, align 8
  %548 = load i8*, i8** @TRUE, align 8
  store i8* %548, i8** %17, align 8
  br label %549

549:                                              ; preds = %543, %530
  %550 = load %struct.vm_map_entry*, %struct.vm_map_entry** %14, align 8
  %551 = getelementptr inbounds %struct.vm_map_entry, %struct.vm_map_entry* %550, i32 0, i32 6
  %552 = load %struct.vm_map_entry*, %struct.vm_map_entry** %551, align 8
  store %struct.vm_map_entry* %552, %struct.vm_map_entry** %14, align 8
  br label %516

553:                                              ; preds = %528
  br label %89

554:                                              ; preds = %100
  %555 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %556 = load i64, i64* %9, align 8
  %557 = load i64, i64* %10, align 8
  %558 = call i32 @vm_map_simplify_range(%struct.TYPE_16__* %555, i64 %556, i64 %557)
  %559 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %560 = call i32 @vm_map_unlock(%struct.TYPE_16__* %559)
  %561 = load i8*, i8** %17, align 8
  %562 = icmp ne i8* %561, null
  br i1 %562, label %563, label %566

563:                                              ; preds = %554
  %564 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %565 = call i32 @vm_map_entry_wakeup(%struct.TYPE_16__* %564)
  br label %566

566:                                              ; preds = %563, %554
  %567 = load i8*, i8** @KERN_SUCCESS, align 8
  store i8* %567, i8** %7, align 8
  br label %568

568:                                              ; preds = %566, %83, %74, %58
  %569 = load i8*, i8** %7, align 8
  ret i8* %569
}

declare dso_local i32 @vm_map_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @page_aligned(i64) #1

declare dso_local i32 @VM_MAP_PAGE_ALIGNED(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_16__*) #1

declare dso_local i64 @vm_map_lookup_entry(%struct.TYPE_16__*, i64, %struct.vm_map_entry**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.vm_map_entry* @vm_map_to_entry(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_map_clip_start(%struct.TYPE_16__*, %struct.vm_map_entry*, i64) #1

declare dso_local i32 @vm_map_clip_end(%struct.TYPE_16__*, %struct.vm_map_entry*, i64) #1

declare dso_local i64 @VME_OFFSET(%struct.vm_map_entry*) #1

declare dso_local %struct.TYPE_16__* @VME_SUBMAP(%struct.vm_map_entry*) #1

declare dso_local i32 @subtract_wire_counts(%struct.TYPE_16__*, %struct.vm_map_entry*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vm_fault_unwire(%struct.TYPE_16__*, %struct.vm_map_entry*, i8*, i32*, i64) #1

declare dso_local i32 @vm_map_simplify_range(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @vm_map_entry_wakeup(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
