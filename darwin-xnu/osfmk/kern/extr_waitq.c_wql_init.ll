; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wql_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wql_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"wql_tsize\00", align 1
@TRUE = common dso_local global i64 0, align 8
@g_lt_max_tbl_size = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@LT_IDX_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"init linktable with max:%d elements (%d bytes)\00", align 1
@g_wqlinktable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"wqslab.wql\00", align 1
@wql_poison = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wql_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wql_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %1, i32 4)
  %4 = load i64, i64* @TRUE, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64, i64* @g_lt_max_tbl_size, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i32 @P2ROUNDUP(i32 %10, i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load i32, i32* %1, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %9
  %23 = phi i1 [ false, %9 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @LT_IDX_MAX, align 4
  %28 = add nsw i32 %27, 1
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @LT_IDX_MAX, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @wqinfo(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @wql_poison, align 4
  %39 = call i32 @ltable_init(i32* @g_wqlinktable, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 4, i32 %38)
  ret void
}

declare dso_local i64 @PE_parse_boot_argn(i8*, i32*, i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @wqinfo(i8*, i32, i32) #1

declare dso_local i32 @ltable_init(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
