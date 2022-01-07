; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_resource_lock.c_LockShardResource.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_resource_lock.c_LockShardResource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_SHARD_ID = common dso_local global i64 0, align 8
@MyDatabaseId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LockShardResource(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @INVALID_SHARD_ID, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @AssertArg(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MyDatabaseId, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @SET_LOCKTAG_SHARD_RESOURCE(i32 %13, i32 %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @LockAcquire(i32* %5, i32 %17, i32 0, i32 0)
  ret void
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @SET_LOCKTAG_SHARD_RESOURCE(i32, i32, i64) #1

declare dso_local i32 @LockAcquire(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
