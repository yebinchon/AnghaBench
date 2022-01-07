; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_BasicUISelectInt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_BasicUISelectInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BasicUISelectInt.item_values = internal global [100 x [4 x i8]] zeroinitializer, align 16
@BasicUISelectInt.items = internal global [100 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @BasicUISelectInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BasicUISelectInt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 99
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %18, %3
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %4, align 4
  br label %115

27:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %49, %27
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [100 x [4 x i8]], [100 x [4 x i8]]* @BasicUISelectInt.item_values, i64 0, i64 %35
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %36, i64 0, i64 0
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelectInt.items, i64 0, i64 %39
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100 x [4 x i8]], [100 x [4 x i8]]* @BasicUISelectInt.item_values, i64 0, i64 %42
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %43, i64 0, i64 0
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @snprintf(i8* %44, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 10
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %61

57:                                               ; preds = %52
  store i32 10, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 9
  %60 = sdiv i32 %59, 10
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %57, %55
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 3, %62
  %64 = sub nsw i32 39, %63
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 22, %66
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 3, %70
  %72 = add nsw i32 %69, %71
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @Box(i32 154, i32 148, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %61
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %90, %91
  br label %94

93:                                               ; preds = %85, %61
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ %92, %89 ], [ 0, %93 ]
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @Select(i32 %95, i32 %96, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @BasicUISelectInt.items, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null, i32 %97, i32 %98, i32 %100, i32 %102, i32 2, i32 %103, i32* null, i32* null)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %94
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %108, %109
  br label %113

111:                                              ; preds = %94
  %112 = load i32, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i32 [ %110, %107 ], [ %112, %111 ]
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %25
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @Box(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Select(i32, i32, i8**, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
