; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_FlushDistTableCache.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_FlushDistTableCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DistTableCacheHash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FlushDistTableCache() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %3 = load i32, i32* @DistTableCacheHash, align 4
  %4 = call i32 @hash_seq_init(i32* %2, i32 %3)
  br label %5

5:                                                ; preds = %9, %0
  %6 = call i64 @hash_seq_search(i32* %2)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @ResetDistTableCacheEntry(i32* %10)
  br label %5

12:                                               ; preds = %5
  %13 = load i32, i32* @DistTableCacheHash, align 4
  %14 = call i32 @hash_destroy(i32 %13)
  %15 = call i32 (...) @CreateDistTableCache()
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @ResetDistTableCacheEntry(i32*) #1

declare dso_local i32 @hash_destroy(i32) #1

declare dso_local i32 @CreateDistTableCache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
