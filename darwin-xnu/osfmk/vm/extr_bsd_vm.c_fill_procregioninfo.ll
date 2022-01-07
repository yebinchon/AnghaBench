; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_fill_procregioninfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_fill_procregioninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.proc_regioninfo_internal = type { i32, i32, i64, i64, i8*, i8*, i32, i64, i8*, i64, i8*, i8*, i64, i8*, i32, i32, i32, i32, i8*, i8*, i64 }
%struct.TYPE_21__ = type { i64, i64, i64, i8*, i64, i32, i32, i32, i8*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32, i64, i64, i8*, i8*, i64, i8*, i64, i8*, i8* }
%struct.TYPE_19__ = type { i32, i64, i8* }

@VM_MAP_NULL = common dso_local global i64 0, align 8
@task_ledgers = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@VM_PROT_DEFAULT = common dso_local global i8* null, align 8
@VM_INHERIT_NONE = common dso_local global i32 0, align 4
@VM_BEHAVIOR_DEFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SM_PRIVATE = common dso_local global i8* null, align 8
@PROC_REGION_SUBMAP = common dso_local global i32 0, align 4
@PROC_REGION_SHARED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_REGION_EXTENDED_INFO_COUNT = common dso_local global i32 0, align 4
@SM_SHARED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_procregioninfo(%struct.TYPE_22__* %0, i8* %1, %struct.proc_regioninfo_internal* %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.proc_regioninfo_internal*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.proc_regioninfo_internal* %2, %struct.proc_regioninfo_internal** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = call i32 @task_lock(%struct.TYPE_22__* %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @VM_MAP_NULL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = call i32 @task_unlock(%struct.TYPE_22__* %33)
  store i32 0, i32* %6, align 4
  br label %361

35:                                               ; preds = %5
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @vm_map_reference(i64 %36)
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %39 = call i32 @task_unlock(%struct.TYPE_22__* %38)
  %40 = call i64 (...) @task_self_region_footprint()
  store i64 %40, i64* %19, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @vm_map_lock_read(i64 %41)
  %43 = load i64, i64* %13, align 8
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @vm_map_lookup_entry(i64 %44, i64 %45, %struct.TYPE_21__** %14)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %172, label %48

48:                                               ; preds = %35
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %15, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call %struct.TYPE_21__* @vm_map_to_entry(i64 %52)
  %54 = icmp eq %struct.TYPE_21__* %51, %53
  br i1 %54, label %55, label %171

55:                                               ; preds = %48
  %56 = load i64, i64* %19, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %166

58:                                               ; preds = %55
  %59 = load i64, i64* %13, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %166

64:                                               ; preds = %58
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 0), align 4
  %69 = call i32 @ledger_get_balance(i32 %67, i32 %68, i32* %20)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 1), align 4
  %74 = call i32 @ledger_get_balance(i32 %72, i32 %73, i32* %21)
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %64
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @vm_map_unlock_read(i64 %80)
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @vm_map_deallocate(i64 %82)
  store i32 0, i32* %6, align 4
  br label %361

84:                                               ; preds = %64
  %85 = load i64, i64* %13, align 8
  %86 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %87 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %86, i32 0, i32 20
  store i64 %85, i64* %87, align 8
  %88 = load i8*, i8** @VM_PROT_DEFAULT, align 8
  %89 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %90 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %89, i32 0, i32 19
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @VM_PROT_DEFAULT, align 8
  %92 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %93 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %92, i32 0, i32 18
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @VM_INHERIT_NONE, align 4
  %95 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %96 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %95, i32 0, i32 17
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @VM_BEHAVIOR_DEFAULT, align 4
  %98 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %99 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %98, i32 0, i32 16
  store i32 %97, i32* %99, align 8
  %100 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %101 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %100, i32 0, i32 15
  store i32 0, i32* %101, align 4
  %102 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %103 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = sdiv i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %110 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %109, i32 0, i32 13
  store i8* %108, i8** %110, align 8
  %111 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %112 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %111, i32 0, i32 12
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = sdiv i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %119 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %118, i32 0, i32 11
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* @PAGE_SIZE, align 4
  %122 = sdiv i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %126 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %125, i32 0, i32 10
  store i8* %124, i8** %126, align 8
  %127 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %128 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %130 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %129, i32 0, i32 9
  store i64 0, i64* %130, align 8
  %131 = load i8*, i8** @SM_PRIVATE, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %134 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = sdiv i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %141 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %140, i32 0, i32 8
  store i8* %139, i8** %141, align 8
  %142 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %143 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %142, i32 0, i32 7
  store i64 0, i64* %143, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @task_ledgers, i32 0, i32 0), align 4
  %146 = call i32 @INFO_MAKE_FAKE_OBJECT_ID(i64 %144, i32 %145)
  %147 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %148 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  %149 = load i64, i64* %13, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %152 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %151, i32 0, i32 5
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %159 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  %160 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %161 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %160, i32 0, i32 3
  store i64 0, i64* %161, align 8
  %162 = load i64, i64* %12, align 8
  %163 = call i32 @vm_map_unlock_read(i64 %162)
  %164 = load i64, i64* %12, align 8
  %165 = call i32 @vm_map_deallocate(i64 %164)
  store i32 1, i32* %6, align 4
  br label %361

166:                                              ; preds = %58, %55
  %167 = load i64, i64* %12, align 8
  %168 = call i32 @vm_map_unlock_read(i64 %167)
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @vm_map_deallocate(i64 %169)
  store i32 0, i32* %6, align 4
  br label %361

171:                                              ; preds = %48
  br label %174

172:                                              ; preds = %35
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %173, %struct.TYPE_21__** %15, align 8
  br label %174

174:                                              ; preds = %172, %171
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %16, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %179 = call i64 @VME_OFFSET(%struct.TYPE_21__* %178)
  %180 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %181 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %180, i32 0, i32 20
  store i64 %179, i64* %181, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %186 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %185, i32 0, i32 19
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 8
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %191 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %190, i32 0, i32 18
  store i8* %189, i8** %191, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %196 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %195, i32 0, i32 17
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %201 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %200, i32 0, i32 16
  store i32 %199, i32* %201, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %206 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %205, i32 0, i32 15
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %208 = call i8* @VME_ALIAS(%struct.TYPE_21__* %207)
  %209 = ptrtoint i8* %208 to i32
  %210 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %211 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %174
  %217 = load i32, i32* @PROC_REGION_SUBMAP, align 4
  %218 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %219 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %218, i32 0, i32 14
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  br label %234

222:                                              ; preds = %174
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load i32, i32* @PROC_REGION_SHARED, align 4
  %229 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %230 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %229, i32 0, i32 14
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %222
  br label %234

234:                                              ; preds = %233, %216
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 9
  store i8* %237, i8** %238, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %240 = call i8* @VME_ALIAS(%struct.TYPE_21__* %239)
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 8
  store i8* %240, i8** %241, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 6
  store i8* null, i8** %242, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 4
  store i8* null, i8** %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 5
  store i64 0, i64* %244, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 3
  store i8* null, i8** %245, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 7
  store i64 0, i64* %246, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  store i64 0, i64* %247, align 8
  %248 = load i64, i64* %12, align 8
  %249 = load i64, i64* %16, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %252 = call i64 @VME_OFFSET(%struct.TYPE_21__* %251)
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %16, align 8
  %257 = sub nsw i64 %255, %256
  %258 = load i32, i32* @TRUE, align 4
  %259 = load i32, i32* @VM_REGION_EXTENDED_INFO_COUNT, align 4
  %260 = call i32 @vm_map_region_walk(i64 %248, i64 %249, %struct.TYPE_21__* %250, i64 %252, i64 %257, %struct.TYPE_20__* %17, i32 %258, i32 %259)
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 7
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %277

264:                                              ; preds = %234
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @SM_SHARED, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load i8*, i8** @SM_PRIVATE, align 8
  %275 = ptrtoint i8* %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  store i64 %275, i64* %276, align 8
  br label %277

277:                                              ; preds = %273, %268, %264, %234
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  store i8* null, i8** %278, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  store i64 0, i64* %279, align 8
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %281 = call i32 @vm_map_region_top_walk(%struct.TYPE_21__* %280, %struct.TYPE_19__* %18)
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 6
  %283 = load i8*, i8** %282, align 8
  %284 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %285 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %284, i32 0, i32 13
  store i8* %283, i8** %285, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 5
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %289 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %288, i32 0, i32 12
  store i64 %287, i64* %289, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 4
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %293 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %292, i32 0, i32 11
  store i8* %291, i8** %293, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 3
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %297 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %296, i32 0, i32 10
  store i8* %295, i8** %297, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %301 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 4
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %305 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %304, i32 0, i32 9
  store i64 %303, i64* %305, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %309 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %308, i32 0, i32 2
  store i64 %307, i64* %309, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %311 = load i8*, i8** %310, align 8
  %312 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %313 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %312, i32 0, i32 8
  store i8* %311, i8** %313, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %317 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %316, i32 0, i32 7
  store i64 %315, i64* %317, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %321 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %320, i32 0, i32 6
  store i32 %319, i32* %321, align 8
  %322 = load i64, i64* %16, align 8
  %323 = inttoptr i64 %322 to i8*
  %324 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %325 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %324, i32 0, i32 5
  store i8* %323, i8** %325, align 8
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* %16, align 8
  %330 = sub nsw i64 %328, %329
  %331 = inttoptr i64 %330 to i8*
  %332 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %333 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %332, i32 0, i32 4
  store i8* %331, i8** %333, align 8
  %334 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %335 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %334, i32 0, i32 3
  store i64 0, i64* %335, align 8
  %336 = load i64*, i64** %10, align 8
  %337 = icmp ne i64* %336, null
  br i1 %337, label %338, label %356

338:                                              ; preds = %277
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %338
  %344 = load i64*, i64** %10, align 8
  store i64 0, i64* %344, align 8
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %346 = load i64*, i64** %10, align 8
  %347 = load i8**, i8*** %11, align 8
  %348 = call i64 @fill_vnodeinfoforaddr(%struct.TYPE_21__* %345, i64* %346, i8** %347)
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %343
  %351 = load i64, i64* %12, align 8
  %352 = call i32 @vm_map_unlock_read(i64 %351)
  %353 = load i64, i64* %12, align 8
  %354 = call i32 @vm_map_deallocate(i64 %353)
  store i32 1, i32* %6, align 4
  br label %361

355:                                              ; preds = %343
  br label %356

356:                                              ; preds = %355, %338, %277
  %357 = load i64, i64* %12, align 8
  %358 = call i32 @vm_map_unlock_read(i64 %357)
  %359 = load i64, i64* %12, align 8
  %360 = call i32 @vm_map_deallocate(i64 %359)
  store i32 1, i32* %6, align 4
  br label %361

361:                                              ; preds = %356, %350, %166, %84, %79, %32
  %362 = load i32, i32* %6, align 4
  ret i32 %362
}

declare dso_local i32 @task_lock(%struct.TYPE_22__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_map_reference(i64) #1

declare dso_local i64 @task_self_region_footprint(...) #1

declare dso_local i32 @vm_map_lock_read(i64) #1

declare dso_local i32 @vm_map_lookup_entry(i64, i64, %struct.TYPE_21__**) #1

declare dso_local %struct.TYPE_21__* @vm_map_to_entry(i64) #1

declare dso_local i32 @ledger_get_balance(i32, i32, i32*) #1

declare dso_local i32 @vm_map_unlock_read(i64) #1

declare dso_local i32 @vm_map_deallocate(i64) #1

declare dso_local i32 @INFO_MAKE_FAKE_OBJECT_ID(i64, i32) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_21__*) #1

declare dso_local i8* @VME_ALIAS(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_map_region_walk(i64, i64, %struct.TYPE_21__*, i64, i64, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @vm_map_region_top_walk(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i64 @fill_vnodeinfoforaddr(%struct.TYPE_21__*, i64*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
