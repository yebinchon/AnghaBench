; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_rb.c_update_holes_on_entry_deletion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_rb.c_update_holes_on_entry_deletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.vm_map_links*, %struct.vm_map_links* }
%struct.vm_map_links = type { i64, i64, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_12__*, %struct.TYPE_12__* }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [113 x i8] c"Hole hint failed: Hole entry start: 0x%llx, entry start: 0x%llx, map hole start: 0x%llx, map hint start: 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [111 x i8] c"Hole hint failed: Hole entry end: 0x%llx, entry start: 0x%llx, map hole start: 0x%llx, map hint start: 0x%llx\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@vm_map_holes_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_holes_on_entry_deletion(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_map_links*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.vm_map_links*, %struct.vm_map_links** %13, align 8
  %15 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %214

18:                                               ; preds = %2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %62

27:                                               ; preds = %18
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.vm_map_links*, %struct.vm_map_links** %38, align 8
  %40 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %39)
  %41 = icmp ne %struct.TYPE_12__* %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %5, align 8
  br label %46

46:                                               ; preds = %42, %35
  br label %61

47:                                               ; preds = %27
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.vm_map_links*, %struct.vm_map_links** %57, align 8
  %59 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %58)
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %5, align 8
  br label %60

60:                                               ; preds = %55, %47
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %26
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.vm_map_links*, %struct.vm_map_links** %65, align 8
  %67 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %66)
  %68 = icmp ne %struct.TYPE_12__* %63, %67
  br i1 %68, label %69, label %122

69:                                               ; preds = %62
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %69
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.vm_map_links*, %struct.vm_map_links** %85, align 8
  %87 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.vm_map_links*, %struct.vm_map_links** %90, align 8
  %92 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @panic(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %83, i64 %88, i64 %93)
  br label %95

95:                                               ; preds = %77, %69
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %95
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.vm_map_links*, %struct.vm_map_links** %111, align 8
  %113 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load %struct.vm_map_links*, %struct.vm_map_links** %116, align 8
  %118 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @panic(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i64 0, i64 0), i64 %106, i64 %109, i64 %114, i64 %119)
  br label %121

121:                                              ; preds = %103, %95
  br label %122

122:                                              ; preds = %121, %62
  br label %123

123:                                              ; preds = %122, %212
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %6, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %123
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %137, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = call i32 @vm_map_combine_hole(%struct.TYPE_11__* %145, %struct.TYPE_12__* %146)
  br label %154

148:                                              ; preds = %134
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %148, %144
  %155 = load i64, i64* @FALSE, align 8
  store i64 %155, i64* %7, align 8
  br label %213

156:                                              ; preds = %123
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %156
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* @FALSE, align 8
  store i64 %170, i64* %7, align 8
  br label %213

171:                                              ; preds = %156
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %174, %177
  br i1 %178, label %179, label %200

179:                                              ; preds = %171
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load %struct.vm_map_links*, %struct.vm_map_links** %182, align 8
  %184 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %183)
  %185 = icmp ne %struct.TYPE_12__* %180, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %179
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %189, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  store %struct.TYPE_12__* %198, %struct.TYPE_12__** %5, align 8
  br label %199

199:                                              ; preds = %186, %179
  br label %213

200:                                              ; preds = %171
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %201, %struct.TYPE_12__** %5, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load %struct.vm_map_links*, %struct.vm_map_links** %204, align 8
  %206 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %205)
  %207 = icmp eq %struct.TYPE_12__* %202, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %200
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  store %struct.TYPE_12__* %211, %struct.TYPE_12__** %5, align 8
  br label %213

212:                                              ; preds = %200
  br label %123

213:                                              ; preds = %208, %199, %164, %154
  br label %214

214:                                              ; preds = %213, %2
  %215 = load i64, i64* %7, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %327

217:                                              ; preds = %214
  store %struct.vm_map_links* null, %struct.vm_map_links** %8, align 8
  %218 = load i32, i32* @vm_map_holes_zone, align 4
  %219 = call %struct.vm_map_links* @zalloc(i32 %218)
  store %struct.vm_map_links* %219, %struct.vm_map_links** %8, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load %struct.vm_map_links*, %struct.vm_map_links** %221, align 8
  %223 = icmp eq %struct.vm_map_links* %222, null
  br i1 %223, label %239, label %224

224:                                              ; preds = %217
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load %struct.vm_map_links*, %struct.vm_map_links** %227, align 8
  %229 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %228)
  %230 = icmp eq %struct.TYPE_12__* %225, %229
  br i1 %230, label %231, label %282

231:                                              ; preds = %224
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp sgt i64 %234, %237
  br i1 %238, label %239, label %282

239:                                              ; preds = %231, %217
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load %struct.vm_map_links*, %struct.vm_map_links** %241, align 8
  %243 = icmp eq %struct.vm_map_links* %242, null
  br i1 %243, label %244, label %256

244:                                              ; preds = %239
  %245 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  store %struct.vm_map_links* %245, %struct.vm_map_links** %247, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load %struct.vm_map_links*, %struct.vm_map_links** %249, align 8
  %251 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %250)
  %252 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %253 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %252, i32 0, i32 2
  store %struct.TYPE_12__* %251, %struct.TYPE_12__** %253, align 8
  %254 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %255 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %254, i32 0, i32 3
  store %struct.TYPE_12__* %251, %struct.TYPE_12__** %255, align 8
  br label %281

256:                                              ; preds = %239
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load %struct.vm_map_links*, %struct.vm_map_links** %258, align 8
  %260 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %259)
  store %struct.TYPE_12__* %260, %struct.TYPE_12__** %9, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load %struct.vm_map_links*, %struct.vm_map_links** %262, align 8
  %264 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %263, i32 0, i32 3
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %264, align 8
  store %struct.TYPE_12__* %265, %struct.TYPE_12__** %10, align 8
  %266 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  store %struct.vm_map_links* %266, %struct.vm_map_links** %268, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %270 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %271 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %270, i32 0, i32 2
  store %struct.TYPE_12__* %269, %struct.TYPE_12__** %271, align 8
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %273 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %274 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %273, i32 0, i32 3
  store %struct.TYPE_12__* %272, %struct.TYPE_12__** %274, align 8
  %275 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %276 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %275)
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 2
  store %struct.TYPE_12__* %276, %struct.TYPE_12__** %278, align 8
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 3
  store %struct.TYPE_12__* %276, %struct.TYPE_12__** %280, align 8
  br label %281

281:                                              ; preds = %256, %244
  br label %305

282:                                              ; preds = %231, %224
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %284, align 8
  store %struct.TYPE_12__* %285, %struct.TYPE_12__** %9, align 8
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 3
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  store %struct.TYPE_12__* %290, %struct.TYPE_12__** %10, align 8
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %292 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %293 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %292, i32 0, i32 3
  store %struct.TYPE_12__* %291, %struct.TYPE_12__** %293, align 8
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %295 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %296 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %295, i32 0, i32 2
  store %struct.TYPE_12__* %294, %struct.TYPE_12__** %296, align 8
  %297 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %298 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %297)
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 3
  store %struct.TYPE_12__* %298, %struct.TYPE_12__** %300, align 8
  %301 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %302 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %301)
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 2
  store %struct.TYPE_12__* %302, %struct.TYPE_12__** %304, align 8
  br label %305

305:                                              ; preds = %282, %281
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %310 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %309, i32 0, i32 0
  store i64 %308, i64* %310, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %315 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %314, i32 0, i32 1
  store i64 %313, i64* %315, align 8
  %316 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %317 = call %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links* %316)
  store %struct.TYPE_12__* %317, %struct.TYPE_12__** %5, align 8
  %318 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %319 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.vm_map_links*, %struct.vm_map_links** %8, align 8
  %322 = getelementptr inbounds %struct.vm_map_links, %struct.vm_map_links* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = icmp slt i64 %320, %323
  %325 = zext i1 %324 to i32
  %326 = call i32 @assert(i32 %325)
  br label %327

327:                                              ; preds = %305, %214
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %330 = bitcast %struct.TYPE_12__* %329 to %struct.vm_map_links*
  %331 = call i32 @SAVE_HINT_HOLE_WRITE(%struct.TYPE_11__* %328, %struct.vm_map_links* %330)
  ret void
}

declare dso_local %struct.TYPE_12__* @CAST_TO_VM_MAP_ENTRY(%struct.vm_map_links*) #1

declare dso_local i32 @panic(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @vm_map_combine_hole(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.vm_map_links* @zalloc(i32) #1

declare dso_local i32 @SAVE_HINT_HOLE_WRITE(%struct.TYPE_11__*, %struct.vm_map_links*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
