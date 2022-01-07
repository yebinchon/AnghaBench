; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_functions.c_lut_fcn_mapper.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_functions.c_lut_fcn_mapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@normal_lut_w_insert = common dso_local global i32 0, align 4
@normal_lut_wo_insert = common dso_local global i32 0, align 4
@bucket_lookup = common dso_local global i32 0, align 4
@bucket_lookup_insert = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lut_fcn_mapper(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 128, label %5
    i32 129, label %9
    i32 131, label %13
    i32 130, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @normal_lut_w_insert, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %2, align 8
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @normal_lut_wo_insert, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @bucket_lookup, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %2, align 8
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @bucket_lookup_insert, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %2, align 8
  br label %22

21:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %22

22:                                               ; preds = %21, %17, %13, %9, %5
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
