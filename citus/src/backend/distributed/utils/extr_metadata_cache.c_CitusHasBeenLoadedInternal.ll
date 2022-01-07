; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusHasBeenLoadedInternal.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CitusHasBeenLoadedInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@IsBinaryUpgrade = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"citus\00", align 1
@creating_extension = common dso_local global i64 0, align 8
@CurrentExtensionObject = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CitusHasBeenLoadedInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CitusHasBeenLoadedInternal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @InvalidOid, align 8
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* @IsBinaryUpgrade, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %22

7:                                                ; preds = %0
  %8 = call i64 @get_extension_oid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @InvalidOid, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %22

13:                                               ; preds = %7
  %14 = load i64, i64* @creating_extension, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i64, i64* @CurrentExtensionObject, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %22

21:                                               ; preds = %16, %13
  store i32 1, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %20, %12, %6
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i64 @get_extension_oid(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
