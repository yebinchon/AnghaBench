; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_DrawBannerString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_DrawBannerString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROPB_SPACE_WIDTH = common dso_local global i64 0, align 8
@propMapB = common dso_local global i64** null, align 8
@PROPB_GAP_WIDTH = common dso_local global i64 0, align 8
@UI_FORMATMASK = common dso_local global i32 0, align 4
@UI_DROPSHADOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawBannerString(i32 %0, i32 %1, i8* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %54, %5
  %17 = load i8*, i8** %11, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i64, i64* @PROPB_SPACE_WIDTH, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %13, align 4
  br label %54

32:                                               ; preds = %20
  %33 = load i32, i32* %12, align 4
  %34 = icmp sge i32 %33, 65
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = icmp sle i32 %36, 90
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i64**, i64*** @propMapB, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %40, 65
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64*, i64** %39, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PROPB_GAP_WIDTH, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %38, %35, %32
  br label %54

54:                                               ; preds = %53, %26
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  br label %16

57:                                               ; preds = %16
  %58 = load i64, i64* @PROPB_GAP_WIDTH, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @UI_FORMATMASK, align 4
  %65 = and i32 %63, %64
  switch i32 %65, label %76 [
    i32 130, label %66
    i32 128, label %71
    i32 129, label %75
  ]

66:                                               ; preds = %57
  %67 = load i32, i32* %13, align 4
  %68 = sdiv i32 %67, 2
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %77

71:                                               ; preds = %57
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %77

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %57, %75
  br label %77

77:                                               ; preds = %76, %71, %66
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @UI_DROPSHADOW, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %77
  %83 = load i64*, i64** %14, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  store i64 0, i64* %84, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  store i64 0, i64* %86, align 8
  %87 = load i64*, i64** %14, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  store i64 0, i64* %88, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %14, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 3
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 2
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 2
  %98 = load i8*, i8** %8, align 8
  %99 = load i64*, i64** %14, align 8
  %100 = call i32 @UI_DrawBannerString2(i32 %95, i32 %97, i8* %98, i64* %99)
  br label %101

101:                                              ; preds = %82, %77
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = load i64*, i64** %10, align 8
  %106 = call i32 @UI_DrawBannerString2(i32 %102, i32 %103, i8* %104, i64* %105)
  ret void
}

declare dso_local i32 @UI_DrawBannerString2(i32, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
