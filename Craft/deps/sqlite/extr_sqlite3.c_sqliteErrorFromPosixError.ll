; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqliteErrorFromPosixError.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqliteErrorFromPosixError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_IOERR_LOCK = common dso_local global i32 0, align 4
@SQLITE_IOERR_UNLOCK = common dso_local global i32 0, align 4
@SQLITE_IOERR_RDLOCK = common dso_local global i32 0, align 4
@SQLITE_IOERR_CHECKRESERVEDLOCK = common dso_local global i32 0, align 4
@SQLITE_PERM = common dso_local global i32 0, align 4
@SQLITE_IOERR_BLOCKED = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sqliteErrorFromPosixError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqliteErrorFromPosixError(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %31 [
    i32 145, label %7
    i32 128, label %7
    i32 143, label %7
    i32 141, label %7
    i32 136, label %7
    i32 146, label %9
    i32 130, label %28
    i32 131, label %30
    i32 133, label %30
    i32 139, label %30
    i32 144, label %30
    i32 140, label %30
    i32 134, label %30
    i32 138, label %30
    i32 132, label %30
    i32 137, label %30
    i32 129, label %30
    i32 135, label %30
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  %8 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %8, i32* %3, align 4
  br label %33

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SQLITE_IOERR_LOCK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SQLITE_IOERR_UNLOCK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SQLITE_IOERR_RDLOCK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SQLITE_IOERR_CHECKRESERVEDLOCK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17, %13, %9
  %26 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %2, %27
  %29 = load i32, i32* @SQLITE_PERM, align 4
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %31

31:                                               ; preds = %2, %30
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %28, %25, %7
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
