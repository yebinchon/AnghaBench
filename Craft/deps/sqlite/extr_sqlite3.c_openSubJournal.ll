; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_openSubJournal.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_openSubJournal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_MEMORY = common dso_local global i64 0, align 8
@SQLITE_OPEN_SUBJOURNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @openSubJournal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openSubJournal(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @SQLITE_OK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @isOpen(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGER_JOURNALMODE_MEMORY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %10
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sqlite3MemJournalOpen(i32 %24)
  br label %33

26:                                               ; preds = %16
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SQLITE_OPEN_SUBJOURNAL, align 4
  %32 = call i32 @pagerOpentemp(%struct.TYPE_4__* %27, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %21
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @isOpen(i32) #1

declare dso_local i32 @sqlite3MemJournalOpen(i32) #1

declare dso_local i32 @pagerOpentemp(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
