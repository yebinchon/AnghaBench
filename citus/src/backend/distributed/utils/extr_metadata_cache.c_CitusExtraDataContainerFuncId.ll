; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusExtraDataContainerFuncId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusExtraDataContainerFuncId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@INTERNALOID = common dso_local global i64 0, align 8
@MetadataCache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@InvalidOid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"pg_catalog\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"citus_extradata_container\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CitusExtraDataContainerFuncId() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [1 x i64], align 8
  %3 = load i32*, i32** @NIL, align 8
  store i32* %3, i32** %1, align 8
  %4 = getelementptr inbounds [1 x i64], [1 x i64]* %2, i64 0, i64 0
  %5 = load i64, i64* @INTERNALOID, align 8
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MetadataCache, i32 0, i32 0), align 8
  %7 = load i64, i64* @InvalidOid, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = call i32 @makeString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @makeString(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32* @list_make2(i32 %10, i32 %11)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = getelementptr inbounds [1 x i64], [1 x i64]* %2, i64 0, i64 0
  %15 = call i64 @LookupFuncName(i32* %13, i32 1, i64* %14, i32 0)
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MetadataCache, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %9, %0
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MetadataCache, i32 0, i32 0), align 8
  ret i64 %17
}

declare dso_local i32* @list_make2(i32, i32) #1

declare dso_local i32 @makeString(i8*) #1

declare dso_local i64 @LookupFuncName(i32*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
