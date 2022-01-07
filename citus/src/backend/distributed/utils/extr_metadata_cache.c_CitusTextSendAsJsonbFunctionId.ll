; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusTextSendAsJsonbFunctionId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusTextSendAsJsonbFunctionId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MetadataCache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@InvalidOid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"pg_catalog\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"citus_text_send_as_jsonb\00", align 1
@TEXTOID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CitusTextSendAsJsonbFunctionId() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [1 x i64], align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MetadataCache, i32 0, i32 0), align 8
  %4 = load i64, i64* @InvalidOid, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = call i32 @makeString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @makeString(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32* @list_make2(i32 %7, i32 %8)
  store i32* %9, i32** %1, align 8
  %10 = getelementptr inbounds [1 x i64], [1 x i64]* %2, i64 0, i64 0
  %11 = load i64, i64* @TEXTOID, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = getelementptr inbounds [1 x i64], [1 x i64]* %2, i64 0, i64 0
  %14 = call i64 @LookupFuncName(i32* %12, i32 1, i64* %13, i32 0)
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MetadataCache, i32 0, i32 0), align 8
  br label %15

15:                                               ; preds = %6, %0
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MetadataCache, i32 0, i32 0), align 8
  ret i64 %16
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
