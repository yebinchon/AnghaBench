; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_getAutoVacuum.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_getAutoVacuum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@BTREE_AUTOVACUUM_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@BTREE_AUTOVACUUM_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"incremental\00", align 1
@BTREE_AUTOVACUUM_INCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getAutoVacuum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getAutoVacuum(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @sqlite3StrICmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 0, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @BTREE_AUTOVACUUM_NONE, align 4
  store i32 %9, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @sqlite3StrICmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 0, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @BTREE_AUTOVACUUM_FULL, align 4
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @sqlite3StrICmp(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 0, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @BTREE_AUTOVACUUM_INCR, align 4
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @sqlite3Atoi(i8* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  br label %33

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %20, %14, %8
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local i32 @sqlite3Atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
