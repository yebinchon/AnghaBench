; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update_jetsam_snapshot_entry_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update_jetsam_snapshot_entry_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_10__*, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@proc_list_mlock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot_count = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot = common dso_local global %struct.TYPE_12__* null, align 8
@memorystatus_jetsam_snapshot_max = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"memorystatus: WARNING snapshot buffer is full, count %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"memorystatus_update_jetsam_snapshot_entry_locked: failed to update pid %d, priority %d, count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64, i64)* @memorystatus_update_jetsam_snapshot_entry_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memorystatus_update_jetsam_snapshot_entry_locked(%struct.TYPE_11__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %24 = load i32, i32* @proc_list_mlock, align 4
  %25 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %26 = call i32 @LCK_MTX_ASSERT(i32 %24, i32 %25)
  %27 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %261

30:                                               ; preds = %3
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @memorystatus_jetsam_snapshot, align 8
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %8, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @memorystatus_jetsam_snapshot, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %192, %36
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %195

48:                                               ; preds = %44
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %191

59:                                               ; preds = %48
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i64 %62
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %7, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %59
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68, %59
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i1 [ false, %73 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  br label %195

87:                                               ; preds = %68
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 22
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 21
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 20
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %87
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 19
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @strlcpy(i32 %116, i32 %119, i32 4)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = call i32 @memorystatus_build_state(%struct.TYPE_11__* %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 18
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 17
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 16
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %113, %87
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @memorystatus_get_task_page_counts(i32 %145, i64* %11, i64* %12, i64* %13)
  %147 = load i64, i64* %11, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 15
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 14
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %13, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 13
  store i64 %153, i64* %155, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @memorystatus_get_task_phys_footprint_page_counts(i32 %158, i64* %14, i64* %15, i64* %16, i64* %17, i64* %18, i64* %19, i64* %20, i64* %21)
  %160 = load i64, i64* %14, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 12
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %15, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 11
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 10
  store i64 %166, i64* %168, align 8
  %169 = load i64, i64* %17, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 9
  store i64 %169, i64* %171, align 8
  %172 = load i64, i64* %18, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 8
  store i64 %172, i64* %174, align 8
  %175 = load i64, i64* %19, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 7
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* %20, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 6
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %21, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 5
  store i64 %181, i64* %183, align 8
  store i64 0, i64* %22, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @memorystatus_get_task_memory_region_count(i32 %186, i64* %22)
  %188 = load i64, i64* %22, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 4
  store i64 %188, i64* %190, align 8
  br label %248

191:                                              ; preds = %48
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %10, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %44

195:                                              ; preds = %83, %44
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %197 = icmp eq %struct.TYPE_13__* %196, null
  br i1 %197, label %198, label %247

198:                                              ; preds = %195
  %199 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  %200 = load i32, i32* @memorystatus_jetsam_snapshot_max, align 4
  %201 = icmp ult i32 %199, %200
  br i1 %201, label %202, label %246

202:                                              ; preds = %198
  %203 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %203, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  %210 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  store i32 %210, i32* %23, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %213 = load i32, i32* %23, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i64 %214
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @memorystatus_init_jetsam_snapshot_entry_locked(%struct.TYPE_11__* %211, %struct.TYPE_13__* %215, i32 %218)
  %220 = load i64, i64* @TRUE, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %245

222:                                              ; preds = %202
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %224 = load i32, i32* %23, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i64 %225
  store %struct.TYPE_13__* %226, %struct.TYPE_13__** %7, align 8
  %227 = load i64, i64* %5, align 8
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 3
  store i64 %227, i64* %229, align 8
  %230 = load i64, i64* %6, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 2
  store i64 %230, i64* %232, align 8
  %233 = load i32, i32* %23, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %23, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* %23, align 4
  store i32 %237, i32* @memorystatus_jetsam_snapshot_count, align 4
  %238 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  %239 = load i32, i32* @memorystatus_jetsam_snapshot_max, align 4
  %240 = icmp uge i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %222
  %242 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  %243 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %241, %222
  br label %245

245:                                              ; preds = %244, %202
  br label %246

246:                                              ; preds = %245, %198
  br label %247

247:                                              ; preds = %246, %195
  br label %248

248:                                              ; preds = %247, %142
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %250 = icmp eq %struct.TYPE_13__* %249, null
  br i1 %250, label %251, label %260

251:                                              ; preds = %248
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  %259 = call i32 @MEMORYSTATUS_DEBUG(i32 4, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i64 %254, i64 %257, i32 %258)
  br label %260

260:                                              ; preds = %251, %248
  br label %261

261:                                              ; preds = %260, %29
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @memorystatus_build_state(%struct.TYPE_11__*) #1

declare dso_local i32 @memorystatus_get_task_page_counts(i32, i64*, i64*, i64*) #1

declare dso_local i32 @memorystatus_get_task_phys_footprint_page_counts(i32, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @memorystatus_get_task_memory_region_count(i32, i64*) #1

declare dso_local i64 @memorystatus_init_jetsam_snapshot_entry_locked(%struct.TYPE_11__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
