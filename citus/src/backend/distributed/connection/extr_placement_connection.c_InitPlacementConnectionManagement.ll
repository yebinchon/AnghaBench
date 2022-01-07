; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_placement_connection.c_InitPlacementConnectionManagement.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_placement_connection.c_InitPlacementConnectionManagement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i32 }

@tag_hash = common dso_local global i8* null, align 8
@ConnectionContext = common dso_local global i8* null, align 8
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"citus connection cache (placementid)\00", align 1
@ConnectionPlacementHash = common dso_local global i8* null, align 8
@ColocatedPlacementsHashHash = common dso_local global i8* null, align 8
@ColocatedPlacementsHashCompare = common dso_local global i32 0, align 4
@HASH_FUNCTION = common dso_local global i32 0, align 4
@HASH_COMPARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"citus connection cache (colocated placements)\00", align 1
@ColocatedPlacementsHash = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"citus connection cache (shardid)\00", align 1
@ConnectionShardHash = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitPlacementConnectionManagement() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 32)
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 4, i32* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %5, align 4
  %6 = load i8*, i8** @tag_hash, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i8* %6, i8** %7, align 8
  %8 = load i8*, i8** @ConnectionContext, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = load i32, i32* @HASH_ELEM, align 4
  %11 = load i32, i32* @HASH_BLOBS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @HASH_CONTEXT, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i8* @hash_create(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 64, %struct.TYPE_4__* %1, i32 %15)
  store i8* %16, i8** @ConnectionPlacementHash, align 8
  %17 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 32)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %19, align 4
  %20 = load i8*, i8** @ColocatedPlacementsHashHash, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @ColocatedPlacementsHashCompare, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** @ConnectionContext, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @HASH_ELEM, align 4
  %27 = load i32, i32* @HASH_FUNCTION, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @HASH_CONTEXT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HASH_COMPARE, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i8* @hash_create(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 64, %struct.TYPE_4__* %1, i32 %33)
  store i8* %34, i8** @ColocatedPlacementsHash, align 8
  %35 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 32)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %37, align 4
  %38 = load i8*, i8** @tag_hash, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** @ConnectionContext, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* @HASH_ELEM, align 4
  %43 = load i32, i32* @HASH_BLOBS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @HASH_CONTEXT, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i8* @hash_create(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 64, %struct.TYPE_4__* %1, i32 %47)
  store i8* %48, i8** @ConnectionShardHash, align 8
  %49 = call i32 (...) @AllocateRelationAccessHash()
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @hash_create(i8*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @AllocateRelationAccessHash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
