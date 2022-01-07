; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_repair_shards.c_LookupShardTransferMode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_repair_shards.c_LookupShardTransferMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@enum_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@TRANSFER_MODE_AUTOMATIC = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"force_logical\00", align 1
@TRANSFER_MODE_FORCE_LOGICAL = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"block_writes\00", align 1
@TRANSFER_MODE_BLOCK_WRITES = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid label for enum: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @LookupShardTransferMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @LookupShardTransferMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8 0, i8* %3, align 1
  %6 = load i32, i32* @enum_out, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @DirectFunctionCall1(i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @DatumGetCString(i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @NAMEDATALEN, align 4
  %13 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i8, i8* @TRANSFER_MODE_AUTOMATIC, align 1
  store i8 %16, i8* %3, align 1
  br label %38

17:                                               ; preds = %1
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @NAMEDATALEN, align 4
  %20 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8, i8* @TRANSFER_MODE_FORCE_LOGICAL, align 1
  store i8 %23, i8* %3, align 1
  br label %37

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @NAMEDATALEN, align 4
  %27 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8, i8* @TRANSFER_MODE_BLOCK_WRITES, align 1
  store i8 %30, i8* %3, align 1
  br label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = call i32 @ereport(i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %29
  br label %37

37:                                               ; preds = %36, %22
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i8, i8* %3, align 1
  ret i8 %39
}

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
