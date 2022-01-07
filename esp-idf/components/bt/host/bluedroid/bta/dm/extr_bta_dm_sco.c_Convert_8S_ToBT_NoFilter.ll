; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_sco.c_Convert_8S_ToBT_NoFilter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_sco.c_Convert_8S_ToBT_NoFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Convert_8S_ToBT_NoFilter(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %64, %4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 8000
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32* %31, i32** %10, align 8
  br label %64

32:                                               ; preds = %24
  %33 = load i32*, i32** %10, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %37, 128
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = shl i32 %39, 8
  store i32 %40, i32* %12, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sub nsw i32 %47, 128
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = shl i32 %49, 8
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %32, %29
  br label %20

65:                                               ; preds = %20
  %66 = load i32*, i32** %11, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = ptrtoint i32* %66 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
