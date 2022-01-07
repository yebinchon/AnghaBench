; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_GetNextNodeId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_GetNextNodeId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NODEID_SEQUENCE_NAME = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@SECURITY_LOCAL_USERID_CHANGE = common dso_local global i32 0, align 4
@nextval_oid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetNextNodeId() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @NODEID_SEQUENCE_NAME, align 4
  %9 = call i32* @cstring_to_text(i32 %8)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @ResolveRelationId(i32* %10, i32 0)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @InvalidOid, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %15 = call i32 @GetUserIdAndSecContext(i32* %4, i32* %5)
  %16 = call i32 (...) @CitusExtensionOwner()
  %17 = load i32, i32* @SECURITY_LOCAL_USERID_CHANGE, align 4
  %18 = call i32 @SetUserIdAndSecContext(i32 %16, i32 %17)
  %19 = load i32, i32* @nextval_oid, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @DirectFunctionCall1(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @SetUserIdAndSecContext(i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DatumGetUInt32(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32* @cstring_to_text(i32) #1

declare dso_local i32 @ResolveRelationId(i32*, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @GetUserIdAndSecContext(i32*, i32*) #1

declare dso_local i32 @SetUserIdAndSecContext(i32, i32) #1

declare dso_local i32 @CitusExtensionOwner(...) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @DatumGetUInt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
