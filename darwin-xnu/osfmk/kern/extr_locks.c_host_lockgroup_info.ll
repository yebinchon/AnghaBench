; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_host_lockgroup_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_locks.c_host_lockgroup_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@HOST_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_HOST = common dso_local global i64 0, align 8
@lck_grp_lock = common dso_local global i32 0, align 4
@lck_grp_cnt = common dso_local global i32 0, align 4
@ipc_kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_IPC = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@lck_grp_queue = common dso_local global i32 0, align 4
@LOCKGROUP_MAX_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @host_lockgroup_info(i64 %0, %struct.TYPE_13__** %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @HOST_NULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @KERN_INVALID_HOST, align 8
  store i64 %21, i64* %4, align 8
  br label %260

22:                                               ; preds = %3
  %23 = call i32 @lck_mtx_lock(i32* @lck_grp_lock)
  %24 = load i32, i32* @lck_grp_cnt, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 100
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @round_page(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @ipc_kernel_map, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %33 = call i64 @kmem_alloc_pageable(i32 %30, i64* %10, i32 %31, i32 %32)
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %16, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = call i32 @lck_mtx_unlock(i32* @lck_grp_lock)
  %39 = load i64, i64* %16, align 8
  store i64 %39, i64* %4, align 8
  br label %260

40:                                               ; preds = %22
  %41 = load i64, i64* %10, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %8, align 8
  %43 = call i64 @queue_first(i32* @lck_grp_queue)
  %44 = inttoptr i64 %43 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %13, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %227, %40
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @lck_grp_cnt, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %230

50:                                               ; preds = %46
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 24
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 23
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 22
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 21
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 20
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 19
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 18
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 17
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 16
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 15
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 14
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 13
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 12
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 11
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 10
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 9
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @LOCKGROUP_MAX_NAME, align 4
  %220 = call i32 @strncpy(i32 %215, i32 %218, i32 %219)
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %222 = ptrtoint %struct.TYPE_14__* %221 to i32
  %223 = call i64 @queue_next(i32 %222)
  %224 = inttoptr i64 %223 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %224, %struct.TYPE_14__** %13, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 1
  store %struct.TYPE_13__* %226, %struct.TYPE_13__** %9, align 8
  br label %227

227:                                              ; preds = %50
  %228 = load i32, i32* %14, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %14, align 4
  br label %46

230:                                              ; preds = %46
  %231 = load i32, i32* @lck_grp_cnt, align 4
  %232 = load i32*, i32** %7, align 8
  store i32 %231, i32* %232, align 4
  %233 = call i32 @lck_mtx_unlock(i32* @lck_grp_lock)
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %239 = bitcast %struct.TYPE_13__* %238 to i8*
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %11, align 4
  %242 = sub nsw i32 %240, %241
  %243 = call i32 @bzero(i8* %239, i32 %242)
  br label %244

244:                                              ; preds = %237, %230
  %245 = load i32, i32* @ipc_kernel_map, align 4
  %246 = load i64, i64* %10, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @TRUE, align 4
  %250 = call i64 @vm_map_copyin(i32 %245, i32 %247, i32 %248, i32 %249, i64* %15)
  store i64 %250, i64* %16, align 8
  %251 = load i64, i64* %16, align 8
  %252 = load i64, i64* @KERN_SUCCESS, align 8
  %253 = icmp eq i64 %251, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  %256 = load i64, i64* %15, align 8
  %257 = inttoptr i64 %256 to %struct.TYPE_13__*
  %258 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* %257, %struct.TYPE_13__** %258, align 8
  %259 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %259, i64* %4, align 8
  br label %260

260:                                              ; preds = %244, %37, %20
  %261 = load i64, i64* %4, align 8
  ret i64 %261
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @kmem_alloc_pageable(i32, i64*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @queue_next(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @vm_map_copyin(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
