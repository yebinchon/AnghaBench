; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_rowSetEntrySort.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_rowSetEntrySort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { %struct.RowSetEntry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RowSetEntry* (%struct.RowSetEntry*)* @rowSetEntrySort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RowSetEntry* @rowSetEntrySort(%struct.RowSetEntry* %0) #0 {
  %2 = alloca %struct.RowSetEntry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.RowSetEntry*, align 8
  %5 = alloca [40 x %struct.RowSetEntry*], align 16
  store %struct.RowSetEntry* %0, %struct.RowSetEntry** %2, align 8
  %6 = getelementptr inbounds [40 x %struct.RowSetEntry*], [40 x %struct.RowSetEntry*]* %5, i64 0, i64 0
  %7 = call i32 @memset(%struct.RowSetEntry** %6, i32 0, i32 320)
  br label %8

8:                                                ; preds = %36, %1
  %9 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  %10 = icmp ne %struct.RowSetEntry* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %8
  %12 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  %13 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %12, i32 0, i32 0
  %14 = load %struct.RowSetEntry*, %struct.RowSetEntry** %13, align 8
  store %struct.RowSetEntry* %14, %struct.RowSetEntry** %4, align 8
  %15 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  %16 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %15, i32 0, i32 0
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %16, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %33, %11
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [40 x %struct.RowSetEntry*], [40 x %struct.RowSetEntry*]* %5, i64 0, i64 %19
  %21 = load %struct.RowSetEntry*, %struct.RowSetEntry** %20, align 8
  %22 = icmp ne %struct.RowSetEntry* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [40 x %struct.RowSetEntry*], [40 x %struct.RowSetEntry*]* %5, i64 0, i64 %25
  %27 = load %struct.RowSetEntry*, %struct.RowSetEntry** %26, align 8
  %28 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  %29 = call %struct.RowSetEntry* @rowSetEntryMerge(%struct.RowSetEntry* %27, %struct.RowSetEntry* %28)
  store %struct.RowSetEntry* %29, %struct.RowSetEntry** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [40 x %struct.RowSetEntry*], [40 x %struct.RowSetEntry*]* %5, i64 0, i64 %31
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %32, align 8
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [40 x %struct.RowSetEntry*], [40 x %struct.RowSetEntry*]* %5, i64 0, i64 %39
  store %struct.RowSetEntry* %37, %struct.RowSetEntry** %40, align 8
  %41 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  store %struct.RowSetEntry* %41, %struct.RowSetEntry** %2, align 8
  br label %8

42:                                               ; preds = %8
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %2, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %54, %42
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp ult i64 %45, 40
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [40 x %struct.RowSetEntry*], [40 x %struct.RowSetEntry*]* %5, i64 0, i64 %50
  %52 = load %struct.RowSetEntry*, %struct.RowSetEntry** %51, align 8
  %53 = call %struct.RowSetEntry* @rowSetEntryMerge(%struct.RowSetEntry* %48, %struct.RowSetEntry* %52)
  store %struct.RowSetEntry* %53, %struct.RowSetEntry** %2, align 8
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %43

57:                                               ; preds = %43
  %58 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  ret %struct.RowSetEntry* %58
}

declare dso_local i32 @memset(%struct.RowSetEntry**, i32, i32) #1

declare dso_local %struct.RowSetEntry* @rowSetEntryMerge(%struct.RowSetEntry*, %struct.RowSetEntry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
