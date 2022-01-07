; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_resource_lock.c_LockModeTextToLockMode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_resource_lock.c_LockModeTextToLockMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LockModeToStringType = type { i32, i32 }

@lock_mode_to_string_map_count = common dso_local global i32 0, align 4
@lockmode_to_string_map = common dso_local global %struct.LockModeToStringType* null, align 8
@NAMEDATALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_LOCK_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown lock mode: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LockModeTextToLockMode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.LockModeToStringType*, align 8
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @lock_mode_to_string_map_count, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.LockModeToStringType*, %struct.LockModeToStringType** @lockmode_to_string_map, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.LockModeToStringType, %struct.LockModeToStringType* %11, i64 %13
  store %struct.LockModeToStringType* %14, %struct.LockModeToStringType** %5, align 8
  %15 = load %struct.LockModeToStringType*, %struct.LockModeToStringType** %5, align 8
  %16 = getelementptr inbounds %struct.LockModeToStringType, %struct.LockModeToStringType* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* @NAMEDATALEN, align 4
  %20 = call i64 @pg_strncasecmp(i32 %17, i8* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = load %struct.LockModeToStringType*, %struct.LockModeToStringType** %5, align 8
  %24 = getelementptr inbounds %struct.LockModeToStringType, %struct.LockModeToStringType* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %22, %6
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i32 @ereport(i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %33, %30
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @pg_strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
