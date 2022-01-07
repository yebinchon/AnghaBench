; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_walHashGet.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_walHashGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@HASHTABLE_NPAGE = common dso_local global i64 0, align 8
@WALINDEX_HDR_SIZE = common dso_local global i32 0, align 4
@HASHTABLE_NPAGE_ONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i64**, i64*)* @walHashGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walHashGet(i32* %0, i32 %1, i32** %2, i64** %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64** %3, i64*** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @walIndexPage(i32* %15, i32 %16, i64** %12)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @SQLITE_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br label %24

24:                                               ; preds = %21, %5
  %25 = phi i1 [ true, %5 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %24
  %32 = load i64*, i64** %12, align 8
  %33 = load i64, i64* @HASHTABLE_NPAGE, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = bitcast i64* %34 to i32*
  store i32* %35, i32** %14, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i64*, i64** %12, align 8
  %40 = load i32, i32* @WALINDEX_HDR_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64* %43, i64** %12, align 8
  store i64 0, i64* %13, align 8
  br label %52

44:                                               ; preds = %31
  %45 = load i64, i64* @HASHTABLE_NPAGE_ONE, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @HASHTABLE_NPAGE, align 8
  %50 = mul i64 %48, %49
  %51 = add i64 %45, %50
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %44, %38
  %53 = load i64*, i64** %12, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 -1
  %55 = load i64**, i64*** %9, align 8
  store i64* %54, i64** %55, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32**, i32*** %8, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64*, i64** %10, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %24
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @walIndexPage(i32*, i32, i64**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
