; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_jetsam_snapshot_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_jetsam_snapshot_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memorystatus_jetsam_snapshot_copy_count = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot_copy = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [101 x i8] c"memorystatus_get_jetsam_snapshot_copy: returned inputsize (%ld), snapshot_size(%ld), listcount(%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i64)* @memorystatus_get_jetsam_snapshot_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_get_jetsam_snapshot_copy(i32** %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* @memorystatus_jetsam_snapshot_copy_count, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @memorystatus_jetsam_snapshot_copy_count, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = add i64 4, %16
  %18 = load i64*, i64** %6, align 8
  store i64 %17, i64* %18, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i64*, i64** %6, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %25
  %33 = load i32*, i32** @memorystatus_jetsam_snapshot_copy, align 8
  %34 = load i32**, i32*** %5, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @memorystatus_jetsam_snapshot_copy_count, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 @MEMORYSTATUS_DEBUG(i32 7, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %37, i64 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %30, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
