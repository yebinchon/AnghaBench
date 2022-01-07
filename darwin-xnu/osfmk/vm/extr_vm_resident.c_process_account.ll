; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_process_account.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_process_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, %struct.TYPE_11__*, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i64 }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i64*, i64, i32, i32, i32 }

@vm_allocation_sites_lock = common dso_local global i32 0, align 4
@vm_allocation_tag_highest = common dso_local global i32 0, align 4
@vm_allocation_sites = common dso_local global %struct.TYPE_13__** null, align 8
@.str = private unnamed_addr constant [36 x i8] c"tag mismatch[%d] 0x%qx, iter 0x%qx\0A\00", align 1
@VM_KERN_SITE_WIRED = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FIRST_DYNAMIC = common dso_local global i32 0, align 4
@VM_KERN_SITE_TAG = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_ZONE = common dso_local global i32 0, align 4
@VM_KERN_SITE_HIDE = common dso_local global i32 0, align 4
@VM_TAG_NAME_LEN_MAX = common dso_local global i64 0, align 8
@VM_TAG_NAME_LEN_SHIFT = common dso_local global i64 0, align 8
@VM_KERN_SITE_NAMED = common dso_local global i32 0, align 4
@VM_TAG_KMOD = common dso_local global i32 0, align 4
@VM_KERN_SITE_KMOD = common dso_local global i32 0, align 4
@VM_KERN_SITE_KERNEL = common dso_local global i32 0, align 4
@VM_KERN_SITE_ZONE = common dso_local global i32 0, align 4
@VM_MAX_TAG_ZONES = common dso_local global i32 0, align 4
@vm_allocation_zone_totals = common dso_local global %struct.TYPE_12__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32, i64, i32)* @process_account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @process_account(%struct.TYPE_14__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = call i32 @lck_spin_lock(i32* @vm_allocation_sites_lock)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %99, %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @vm_allocation_tag_highest, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %102

24:                                               ; preds = %20
  %25 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vm_allocation_sites, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %25, i64 %27
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %13, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %99

33:                                               ; preds = %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 8
  store i32 %44, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %33
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store i64 %55, i64* %60, align 8
  br label %98

61:                                               ; preds = %33
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %69, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %78, i64 %81, i64 %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i64 %91, i64* %96, align 8
  br label %97

97:                                               ; preds = %77, %66, %61
  br label %98

98:                                               ; preds = %97, %52
  br label %99

99:                                               ; preds = %98, %32
  %100 = load i32, i32* %10, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %20

102:                                              ; preds = %20
  %103 = load i32, i32* @vm_allocation_tag_highest, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp uge i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %109, %102
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %378, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %381

116:                                              ; preds = %112
  %117 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vm_allocation_sites, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %117, i64 %119
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %13, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %123 = icmp ne %struct.TYPE_13__* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  br label %378

125:                                              ; preds = %116
  %126 = load i32, i32* @VM_KERN_SITE_WIRED, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %126
  store i32 %133, i32* %131, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @VM_KERN_MEMORY_FIRST_DYNAMIC, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %181

137:                                              ; preds = %125
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  store i32 %138, i32* %143, align 8
  %144 = load i32, i32* @VM_KERN_SITE_TAG, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %144
  store i32 %151, i32* %149, align 8
  %152 = load i32, i32* @VM_KERN_MEMORY_ZONE, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %180

155:                                              ; preds = %137
  %156 = load i32, i32* @VM_KERN_SITE_HIDE, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = load i32, i32* %10, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %156
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @VM_KERN_SITE_WIRED, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %167 = load i32, i32* %10, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %165
  store i32 %172, i32* %170, align 8
  %173 = load i64, i64* %7, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %176 = load i32, i32* %10, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 3
  store i32 %174, i32* %179, align 4
  br label %180

180:                                              ; preds = %155, %137
  br label %261

181:                                              ; preds = %125
  %182 = load i64, i64* @VM_TAG_NAME_LEN_MAX, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @VM_TAG_NAME_LEN_SHIFT, align 8
  %187 = lshr i64 %185, %186
  %188 = and i64 %182, %187
  store i64 %188, i64* %9, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %181
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = load i32, i32* %10, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 2
  store i32 0, i32* %195, align 8
  %196 = load i32, i32* @VM_KERN_SITE_NAMED, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %198 = load i32, i32* %10, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %196
  store i32 %203, i32* %201, align 8
  %204 = load i64, i64* %9, align 8
  %205 = icmp ugt i64 %204, 8
  br i1 %205, label %206, label %207

206:                                              ; preds = %190
  store i64 8, i64* %9, align 8
  br label %207

207:                                              ; preds = %206, %190
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %209 = load i32, i32* %10, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 4
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %216 = call i32 @KA_NAME(%struct.TYPE_13__* %215)
  %217 = load i64, i64* %9, align 8
  %218 = call i32 @strncpy(i64* %214, i32 %216, i64 %217)
  br label %260

219:                                              ; preds = %181
  %220 = load i32, i32* @VM_TAG_KMOD, align 4
  %221 = sext i32 %220 to i64
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = and i64 %221, %224
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %219
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %229 = call i32 @OSKextGetKmodIDForSite(%struct.TYPE_13__* %228, i32* null, i32 0)
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %231 = load i32, i32* %10, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 2
  store i32 %229, i32* %234, align 8
  %235 = load i32, i32* @VM_KERN_SITE_KMOD, align 4
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %237 = load i32, i32* %10, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %235
  store i32 %242, i32* %240, align 8
  br label %259

243:                                              ; preds = %219
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %245 = call i32 @VM_KERNEL_UNSLIDE(%struct.TYPE_13__* %244)
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %247 = load i32, i32* %10, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 2
  store i32 %245, i32* %250, align 8
  %251 = load i32, i32* @VM_KERN_SITE_KERNEL, align 4
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %253 = load i32, i32* %10, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %251
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %243, %227
  br label %260

260:                                              ; preds = %259, %207
  br label %261

261:                                              ; preds = %260, %180
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %377

266:                                              ; preds = %261
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %271 = load i32, i32* %10, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  store i64 %269, i64* %274, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %276 = load i32, i32* %10, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %14, align 8
  %281 = load i64, i64* %14, align 8
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %283 = load i32, i32* %10, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  store i64 %281, i64* %286, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %17, align 8
  br label %287

287:                                              ; preds = %367, %266
  %288 = load i64, i64* %17, align 8
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp ult i64 %288, %291
  br i1 %292, label %293, label %370

293:                                              ; preds = %287
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 4
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %295, align 8
  %297 = load i64, i64* %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %18, align 4
  %301 = load i32, i32* %18, align 4
  %302 = load i32, i32* %6, align 4
  %303 = icmp ult i32 %301, %302
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert(i32 %304)
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %307 = load i32, i32* %18, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 4
  %311 = load i64*, i64** %310, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 0
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %293
  br label %367

316:                                              ; preds = %293
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %318 = load i32, i32* %18, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %16, align 8
  %323 = load i64, i64* %16, align 8
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %325 = load i32, i32* %18, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = icmp sgt i64 %323, %329
  br i1 %330, label %331, label %338

331:                                              ; preds = %316
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %333 = load i32, i32* %18, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %16, align 8
  br label %338

338:                                              ; preds = %331, %316
  %339 = load i64, i64* %16, align 8
  %340 = load i64, i64* %14, align 8
  %341 = icmp sgt i64 %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  %343 = load i64, i64* %14, align 8
  store i64 %343, i64* %16, align 8
  br label %344

344:                                              ; preds = %342, %338
  %345 = load i64, i64* %16, align 8
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %347 = load i32, i32* %18, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = sub nsw i64 %351, %345
  store i64 %352, i64* %350, align 8
  %353 = load i64, i64* %16, align 8
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %355 = load i32, i32* %18, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = sub nsw i64 %359, %353
  store i64 %360, i64* %358, align 8
  %361 = load i64, i64* %16, align 8
  %362 = load i64, i64* %14, align 8
  %363 = sub nsw i64 %362, %361
  store i64 %363, i64* %14, align 8
  %364 = load i64, i64* %16, align 8
  %365 = load i64, i64* %15, align 8
  %366 = add nsw i64 %365, %364
  store i64 %366, i64* %15, align 8
  br label %367

367:                                              ; preds = %344, %315
  %368 = load i64, i64* %17, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %17, align 8
  br label %287

370:                                              ; preds = %287
  %371 = load i64, i64* %15, align 8
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %373 = load i32, i32* %10, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 1
  store i64 %371, i64* %376, align 8
  br label %377

377:                                              ; preds = %370, %261
  br label %378

378:                                              ; preds = %377, %124
  %379 = load i32, i32* %10, align 4
  %380 = add i32 %379, 1
  store i32 %380, i32* %10, align 4
  br label %112

381:                                              ; preds = %112
  %382 = call i32 @lck_spin_unlock(i32* @vm_allocation_sites_lock)
  ret i64 0
}

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i32 @printf(i8*, i32, i64, i64) #1

declare dso_local i32 @strncpy(i64*, i32, i64) #1

declare dso_local i32 @KA_NAME(%struct.TYPE_13__*) #1

declare dso_local i32 @OSKextGetKmodIDForSite(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
