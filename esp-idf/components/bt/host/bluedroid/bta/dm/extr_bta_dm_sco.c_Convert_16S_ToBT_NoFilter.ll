; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_sco.c_Convert_16S_ToBT_NoFilter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_sco.c_Convert_16S_ToBT_NoFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Convert_16S_ToBT_NoFilter(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %50, %4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %24, 8000
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32* %30, i32** %10, align 8
  br label %50

31:                                               ; preds = %23
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 1
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %31, %28
  br label %19

51:                                               ; preds = %19
  %52 = load i32*, i32** %11, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = ptrtoint i32* %52 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
