; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_FreeDynList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_FreeDynList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_dyn_value_list = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeDynList() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = load i32*, i32** @g_dyn_value_list, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %24

6:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %18, %6
  %8 = load i64, i64* %1, align 8
  %9 = load i32*, i32** @g_dyn_value_list, align 8
  %10 = call i64 @LIST_NUM(i32* %9)
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32*, i32** @g_dyn_value_list, align 8
  %14 = load i64, i64* %1, align 8
  %15 = call i32* @LIST_DATA(i32* %13, i64 %14)
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @Free(i32* %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %1, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %1, align 8
  br label %7

21:                                               ; preds = %7
  %22 = load i32*, i32** @g_dyn_value_list, align 8
  %23 = call i32 @ReleaseList(i32* %22)
  store i32* null, i32** @g_dyn_value_list, align 8
  br label %24

24:                                               ; preds = %21, %5
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
