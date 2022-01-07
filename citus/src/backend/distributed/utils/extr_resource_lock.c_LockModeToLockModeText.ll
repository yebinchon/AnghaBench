; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_resource_lock.c_LockModeToLockModeText.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_resource_lock.c_LockModeToLockModeText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LockModeToStringType = type { i64, i8* }

@lock_mode_to_string_map_count = common dso_local global i32 0, align 4
@lockmode_to_string_map = common dso_local global %struct.LockModeToStringType* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_LOCK_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown lock mode enum: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @LockModeToLockModeText(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.LockModeToStringType*, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @lock_mode_to_string_map_count, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.LockModeToStringType*, %struct.LockModeToStringType** @lockmode_to_string_map, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.LockModeToStringType, %struct.LockModeToStringType* %11, i64 %13
  store %struct.LockModeToStringType* %14, %struct.LockModeToStringType** %5, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load %struct.LockModeToStringType*, %struct.LockModeToStringType** %5, align 8
  %17 = getelementptr inbounds %struct.LockModeToStringType, %struct.LockModeToStringType* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load %struct.LockModeToStringType*, %struct.LockModeToStringType** %5, align 8
  %22 = getelementptr inbounds %struct.LockModeToStringType, %struct.LockModeToStringType* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %3, align 8
  br label %28

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %6

28:                                               ; preds = %20, %6
  %29 = load i8*, i8** %3, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load i64, i64* %2, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 @ereport(i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
