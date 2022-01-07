; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_nodefuncs.c_ModifyRangeTblExtraData.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_nodefuncs.c_ModifyRangeTblExtraData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ModifyRangeTblExtraData(i32* %0, i32 %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %16

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %15, %14
  %17 = phi i8** [ %8, %14 ], [ null, %15 ]
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i8** [ %9, %20 ], [ null, %21 ]
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** @NIL, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi i32** [ %10, %27 ], [ null, %28 ]
  %31 = call i32 @ExtractRangeTblExtraData(i32* %11, i32* null, i8** %17, i8** %23, i32** %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @SetRangeTblExtraData(i32* %32, i32 %33, i8* %34, i8* %35, i32* %36)
  ret void
}

declare dso_local i32 @ExtractRangeTblExtraData(i32*, i32*, i8**, i8**, i32**) #1

declare dso_local i32 @SetRangeTblExtraData(i32*, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
