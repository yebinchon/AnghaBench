; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.zone_cache* }
%struct.zone_cache = type { i64, %struct.zcc_magazine**, i32, %struct.TYPE_6__* }
%struct.zcc_magazine = type { i32 }
%struct.TYPE_6__ = type { %struct.zcc_magazine*, %struct.zcc_magazine* }

@depot_element_count = common dso_local global i32 0, align 4
@MAX_CPUS = common dso_local global i32 0, align 4
@magazine_zone = common dso_local global i32 0, align 4
@magazine_element_count = common dso_local global i32 0, align 4
@zcache_locks_grp = common dso_local global i32 0, align 4
@LCK_ATTR_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcache_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.zone_cache*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load i32, i32* @depot_element_count, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = add i64 32, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @kalloc(i32 %11)
  %13 = inttoptr i64 %12 to %struct.zone_cache*
  store %struct.zone_cache* %13, %struct.zone_cache** %5, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %82, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MAX_CPUS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %85

18:                                               ; preds = %14
  %19 = load i32, i32* @magazine_zone, align 4
  %20 = call i64 @zalloc(i32 %19)
  %21 = inttoptr i64 %20 to %struct.zcc_magazine*
  %22 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %23 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store %struct.zcc_magazine* %21, %struct.zcc_magazine** %28, align 8
  %29 = load i32, i32* @magazine_zone, align 4
  %30 = call i64 @zalloc(i32 %29)
  %31 = inttoptr i64 %30 to %struct.zcc_magazine*
  %32 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %33 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.zcc_magazine* %31, %struct.zcc_magazine** %38, align 8
  %39 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %40 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.zcc_magazine*, %struct.zcc_magazine** %45, align 8
  %47 = icmp ne %struct.zcc_magazine* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %18
  %49 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %50 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.zcc_magazine*, %struct.zcc_magazine** %55, align 8
  %57 = icmp ne %struct.zcc_magazine* %56, null
  br label %58

58:                                               ; preds = %48, %18
  %59 = phi i1 [ false, %18 ], [ %57, %48 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %63 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.zcc_magazine*, %struct.zcc_magazine** %68, align 8
  %70 = load i32, i32* @magazine_element_count, align 4
  %71 = call i32 @zcache_mag_init(%struct.zcc_magazine* %69, i32 %70)
  %72 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %73 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %72, i32 0, i32 3
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.zcc_magazine*, %struct.zcc_magazine** %78, align 8
  %80 = load i32, i32* @magazine_element_count, align 4
  %81 = call i32 @zcache_mag_init(%struct.zcc_magazine* %79, i32 %80)
  br label %82

82:                                               ; preds = %58
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %14

85:                                               ; preds = %14
  %86 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %87 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %86, i32 0, i32 2
  %88 = load i32, i32* @LCK_ATTR_NULL, align 4
  %89 = call i32 @lck_mtx_init(i32* %87, i32* @zcache_locks_grp, i32 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %123, %85
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @depot_element_count, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %126

94:                                               ; preds = %90
  %95 = load i32, i32* @magazine_zone, align 4
  %96 = call i64 @zalloc(i32 %95)
  %97 = inttoptr i64 %96 to %struct.zcc_magazine*
  %98 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %99 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %98, i32 0, i32 1
  %100 = load %struct.zcc_magazine**, %struct.zcc_magazine*** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.zcc_magazine*, %struct.zcc_magazine** %100, i64 %102
  store %struct.zcc_magazine* %97, %struct.zcc_magazine** %103, align 8
  %104 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %105 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %104, i32 0, i32 1
  %106 = load %struct.zcc_magazine**, %struct.zcc_magazine*** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.zcc_magazine*, %struct.zcc_magazine** %106, i64 %108
  %110 = load %struct.zcc_magazine*, %struct.zcc_magazine** %109, align 8
  %111 = icmp ne %struct.zcc_magazine* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %115 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %114, i32 0, i32 1
  %116 = load %struct.zcc_magazine**, %struct.zcc_magazine*** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.zcc_magazine*, %struct.zcc_magazine** %116, i64 %118
  %120 = load %struct.zcc_magazine*, %struct.zcc_magazine** %119, align 8
  %121 = load i32, i32* @magazine_element_count, align 4
  %122 = call i32 @zcache_mag_init(%struct.zcc_magazine* %120, i32 %121)
  br label %123

123:                                              ; preds = %94
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %90

126:                                              ; preds = %90
  %127 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %128 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %130 = call i32 @lock_zone(%struct.TYPE_7__* %129)
  %131 = load %struct.zone_cache*, %struct.zone_cache** %5, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store %struct.zone_cache* %131, %struct.zone_cache** %133, align 8
  %134 = load i32, i32* @TRUE, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = call i32 @unlock_zone(%struct.TYPE_7__* %137)
  ret void
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zcache_mag_init(%struct.zcc_magazine*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32*, i32) #1

declare dso_local i32 @lock_zone(%struct.TYPE_7__*) #1

declare dso_local i32 @unlock_zone(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
