; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_mallocWithAlarm.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_mallocWithAlarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32)*, i8* (i32)* }

@mem0 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SQLITE_STATUS_MALLOC_SIZE = common dso_local global i32 0, align 4
@SQLITE_STATUS_MEMORY_USED = common dso_local global i32 0, align 4
@SQLITE_STATUS_MALLOC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @mallocWithAlarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mallocWithAlarm(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 3), align 8
  %9 = call i32 @sqlite3_mutex_held(i32 %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 %11(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @SQLITE_STATUS_MALLOC_SIZE, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @sqlite3StatusSet(i32 %14, i32 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %21 = call i32 @sqlite3StatusValue(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 1), align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 2), align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @sqlite3MallocAlarm(i32 %28)
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 2), align 4
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 1), align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i8* %33(i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @sqlite3MallocSize(i8* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @sqlite3StatusAdd(i32 %41, i32 %42)
  %44 = load i32, i32* @SQLITE_STATUS_MALLOC_COUNT, align 4
  %45 = call i32 @sqlite3StatusAdd(i32 %44, i32 1)
  br label %46

46:                                               ; preds = %38, %32
  %47 = load i8*, i8** %6, align 8
  %48 = load i8**, i8*** %4, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3StatusSet(i32, i32) #1

declare dso_local i32 @sqlite3StatusValue(i32) #1

declare dso_local i32 @sqlite3MallocAlarm(i32) #1

declare dso_local i32 @sqlite3MallocSize(i8*) #1

declare dso_local i32 @sqlite3StatusAdd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
