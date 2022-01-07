; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusReadIntermediateResultFuncId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusReadIntermediateResultFuncId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MetadataCache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@InvalidOid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"pg_catalog\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"read_intermediate_result\00", align 1
@TEXTOID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CitusReadIntermediateResultFuncId() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca [2 x i64], align 16
  %4 = alloca i32, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MetadataCache, i32 0, i32 0), align 8
  %6 = load i64, i64* @InvalidOid, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = call i32 @makeString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @makeString(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32* @list_make2(i32 %9, i32 %10)
  store i32* %11, i32** %1, align 8
  %12 = call i64 (...) @CitusCopyFormatTypeId()
  store i64 %12, i64* %2, align 8
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %14 = load i64, i64* @TEXTOID, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 1
  %16 = load i64, i64* %2, align 8
  store i64 %16, i64* %15, align 8
  store i32 0, i32* %4, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @LookupFuncName(i32* %17, i32 2, i64* %18, i32 %19)
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MetadataCache, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %8, %0
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MetadataCache, i32 0, i32 0), align 8
  ret i64 %22
}

declare dso_local i32* @list_make2(i32, i32) #1

declare dso_local i32 @makeString(i8*) #1

declare dso_local i64 @CitusCopyFormatTypeId(...) #1

declare dso_local i64 @LookupFuncName(i32*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
