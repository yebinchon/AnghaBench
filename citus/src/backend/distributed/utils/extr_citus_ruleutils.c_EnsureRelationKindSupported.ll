; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_EnsureRelationKindSupported.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_EnsureRelationKindSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s is not a regular, foreign or partitioned table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnsureRelationKindSupported(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call signext i8 @get_rel_relkind(i32 %6)
  store i8 %7, i8* %3, align 1
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @RegularTable(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @IsChildTable(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @IsParentTable(i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %30, %17
  %34 = phi i1 [ false, %17 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = call i8* @get_rel_name(i32 %39)
  store i8* %40, i8** %5, align 8
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = call i32 @ereport(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %38, %33
  ret void
}

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i64 @RegularTable(i32) #1

declare dso_local i64 @IsChildTable(i32) #1

declare dso_local i64 @IsParentTable(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
