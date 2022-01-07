; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_topology.c_cpu_topology_sort.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_topology.c_cpu_topology_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32*, i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, i32, %struct.TYPE_16__** }
%struct.TYPE_14__ = type { i32 }

@machine_info = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@master_cpu = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@topo_dbg = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"cpu_topology_start() %d cpu%s registered\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\09cpu_data[%d]:%p local apic 0x%x\0A\00", align 1
@cpu_data_ptr = common dso_local global i32* null, align 8
@lapicid_cmp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"cpu_topology_start() after sorting:\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"cpu_datap(%d):%p local apic id 0x%x remapped from %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"cpu_topology_start() LLC is L%d\0A\00", align 1
@topoParms = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"cpu_topology_start() creating affinity sets:\0A\00", align 1
@CPU_CACHE_TYPE_UNIF = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"cpu_topology_start() failed aset alloc\00", align 1
@x86_affinities = common dso_local global %struct.TYPE_17__* null, align 8
@x86_affinity_count = common dso_local global i32 0, align 4
@master_processor = common dso_local global i32 0, align 4
@PROCESSOR_SET_NULL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"cpu_topology_start: pset_create\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\09new set %p(%d) pset %p for cache %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"\09processor_init set %p(%d) lcpup %p(%d) cpu %p processor %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_topology_sort(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %5, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @machine_info, i32 0, i32 0), align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @machine_info, i32 0, i32 1), align 4
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @master_cpu, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call i64 (...) @cpu_number()
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call %struct.TYPE_18__* @cpu_datap(i32 0)
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @ml_set_interrupts_enabled(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i64, i64* @topo_dbg, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %1
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp sgt i32 %41, 1
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %60, %39
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = call %struct.TYPE_18__* @cpu_datap(i32 %51)
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %6, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = bitcast %struct.TYPE_18__* %54 to i8*
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %53, i8* %55, i32 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %46

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %1
  %65 = load i32, i32* %2, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32*, i32** @cpu_data_ptr, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = bitcast i32* %69 to i8*
  %71 = load i32, i32* %2, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @lapicid_cmp, align 4
  %74 = call i32 @qsort(i8* %70, i32 %72, i32 8, i32 %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = load i64, i64* @topo_dbg, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %94, %78
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %2, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = call %struct.TYPE_18__* @cpu_datap(i32 %85)
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %7, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = bitcast %struct.TYPE_18__* %88 to i8*
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %87, i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %80

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %75
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %140, %98
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %2, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %143

103:                                              ; preds = %99
  %104 = load i32, i32* %3, align 4
  %105 = call %struct.TYPE_18__* @cpu_datap(i32 %104)
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %8, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ne i64 %108, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %103
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @kprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %113, %struct.TYPE_18__* %114, i32 %117, i32 %121)
  br label %123

123:                                              ; preds = %112, %103
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @lapic_cpu_map(i32 %130, i32 %131)
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @x86_set_logical_topology(i32* %134, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %123
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %99

143:                                              ; preds = %99
  %144 = load i32, i32* %2, align 4
  %145 = call i32 @cpu_shadow_sort(i32 %144)
  %146 = call i32 (...) @x86_validate_topology()
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @ml_set_interrupts_enabled(i32 %147)
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @topoParms, i32 0, i32 0), align 4
  %150 = add nsw i32 %149, 1
  %151 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @topoParms, i32 0, i32 1), align 4
  %153 = call i32 (...) @pmCPUStateInit()
  %154 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %282, %143
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* %2, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %285

159:                                              ; preds = %155
  %160 = load i32, i32* %3, align 4
  %161 = call %struct.TYPE_18__* @cpu_datap(i32 %160)
  store %struct.TYPE_18__* %161, %struct.TYPE_18__** %9, align 8
  %162 = load i32, i32* %3, align 4
  %163 = call %struct.TYPE_15__* @cpu_to_lcpu(i32 %162)
  store %struct.TYPE_15__* %163, %struct.TYPE_15__** %10, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %165, align 8
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @topoParms, i32 0, i32 0), align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %166, i64 %168
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  store %struct.TYPE_16__* %170, %struct.TYPE_16__** %11, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @CPU_CACHE_TYPE_UNIF, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %179 = call %struct.TYPE_17__* @find_cache_affinity(%struct.TYPE_16__* %178)
  store %struct.TYPE_17__* %179, %struct.TYPE_17__** %12, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %181 = icmp eq %struct.TYPE_17__* %180, null
  br i1 %181, label %182, label %233

182:                                              ; preds = %159
  %183 = call i64 @kalloc(i32 32)
  %184 = inttoptr i64 %183 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %184, %struct.TYPE_17__** %12, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %186 = icmp eq %struct.TYPE_17__* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %182
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** @x86_affinities, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 3
  store %struct.TYPE_17__* %190, %struct.TYPE_17__** %192, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %193, %struct.TYPE_17__** @x86_affinities, align 8
  %194 = load i32, i32* @x86_affinity_count, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* @x86_affinity_count, align 4
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 2
  store %struct.TYPE_16__* %198, %struct.TYPE_16__** %200, align 8
  %201 = load i32, i32* %3, align 4
  %202 = load i32, i32* @master_cpu, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %189
  %205 = load i32, i32* @master_processor, align 4
  %206 = call i64 @processor_pset(i32 %205)
  br label %210

207:                                              ; preds = %189
  %208 = call i32 (...) @pset_node_root()
  %209 = call i64 @pset_create(i32 %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = phi i64 [ %206, %204 ], [ %209, %207 ]
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @PROCESSOR_SET_NULL, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %210
  %220 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %210
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_17__* %222, i32 %225, i64 %228, %struct.TYPE_16__* %231)
  br label %233

233:                                              ; preds = %221, %159
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_17__* %234, i32 %237, %struct.TYPE_15__* %238, i32 %241, %struct.TYPE_18__* %242, i32* %245)
  %247 = load i32, i32* %3, align 4
  %248 = load i32, i32* @master_cpu, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %233
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %3, align 4
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @processor_init(i32* %253, i32 %254, i64 %257)
  br label %259

259:                                              ; preds = %250, %233
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp sgt i32 %264, 1
  br i1 %265, label %266, label %281

266:                                              ; preds = %259
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %266
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  store i32* %274, i32** %5, align 8
  br label %275

275:                                              ; preds = %271, %266
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32*, i32** %5, align 8
  %280 = call i32 @processor_set_primary(i32* %278, i32* %279)
  br label %281

281:                                              ; preds = %275, %259
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %3, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %3, align 4
  br label %155

285:                                              ; preds = %155
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local %struct.TYPE_18__* @cpu_datap(i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @TOPO_DBG(i8*, ...) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @lapic_cpu_map(i32, i32) #1

declare dso_local i32 @x86_set_logical_topology(i32*, i32, i32) #1

declare dso_local i32 @cpu_shadow_sort(i32) #1

declare dso_local i32 @x86_validate_topology(...) #1

declare dso_local i32 @pmCPUStateInit(...) #1

declare dso_local %struct.TYPE_15__* @cpu_to_lcpu(i32) #1

declare dso_local %struct.TYPE_17__* @find_cache_affinity(%struct.TYPE_16__*) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @processor_pset(i32) #1

declare dso_local i64 @pset_create(i32) #1

declare dso_local i32 @pset_node_root(...) #1

declare dso_local i32 @processor_init(i32*, i32, i64) #1

declare dso_local i32 @processor_set_primary(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
