; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_GetNextPlacementId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_GetNextPlacementId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i32 0, align 4
@NextPlacementId = common dso_local global i64 0, align 8
@PLACEMENTID_SEQUENCE_NAME = common dso_local global i32 0, align 4
@SECURITY_LOCAL_USERID_CHANGE = common dso_local global i32 0, align 4
@nextval_oid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetNextPlacementId() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  %9 = load i32, i32* @InvalidOid, align 4
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @InvalidOid, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %11 = load i64, i64* @NextPlacementId, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i64, i64* @NextPlacementId, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* @NextPlacementId, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @NextPlacementId, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %1, align 8
  br label %38

18:                                               ; preds = %0
  %19 = load i32, i32* @PLACEMENTID_SEQUENCE_NAME, align 4
  %20 = call i32* @cstring_to_text(i32 %19)
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @ResolveRelationId(i32* %21, i32 0)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ObjectIdGetDatum(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = call i32 @GetUserIdAndSecContext(i32* %5, i32* %6)
  %26 = call i32 (...) @CitusExtensionOwner()
  %27 = load i32, i32* @SECURITY_LOCAL_USERID_CHANGE, align 4
  %28 = call i32 @SetUserIdAndSecContext(i32 %26, i32 %27)
  %29 = load i32, i32* @nextval_oid, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @DirectFunctionCall1(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @SetUserIdAndSecContext(i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @DatumGetInt64(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %1, align 8
  br label %38

38:                                               ; preds = %18, %13
  %39 = load i64, i64* %1, align 8
  ret i64 %39
}

declare dso_local i32* @cstring_to_text(i32) #1

declare dso_local i32 @ResolveRelationId(i32*, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @GetUserIdAndSecContext(i32*, i32*) #1

declare dso_local i32 @SetUserIdAndSecContext(i32, i32) #1

declare dso_local i32 @CitusExtensionOwner(...) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i64 @DatumGetInt64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
