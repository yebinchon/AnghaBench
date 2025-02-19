; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CreateDistObjectCache.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CreateDistObjectCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@tag_hash = common dso_local global i32 0, align 4
@MetadataCacheMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Distributed Object Cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_FUNCTION = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@DistObjectCacheHash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CreateDistObjectCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateDistObjectCache() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = call i32 @MemSet(%struct.TYPE_4__* %1, i32 0, i32 16)
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 4, i32* %3, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %4, align 4
  %5 = load i32, i32* @tag_hash, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @MetadataCacheMemoryContext, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @HASH_ELEM, align 4
  %10 = load i32, i32* @HASH_FUNCTION, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HASH_CONTEXT, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @hash_create(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 32, %struct.TYPE_4__* %1, i32 %13)
  store i32 %14, i32* @DistObjectCacheHash, align 4
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
