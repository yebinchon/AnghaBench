; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_PointToAngle.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_PointToAngle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@viewx = common dso_local global i64 0, align 8
@viewy = common dso_local global i64 0, align 8
@tantoangle = common dso_local global i32* null, align 8
@ANG90 = common dso_local global i32 0, align 4
@ANG270 = common dso_local global i32 0, align 4
@ANG180 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_PointToAngle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @viewx, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = sub nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @viewy, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %125

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32*, i32** @tantoangle, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @SlopeDiv(i32 %34, i32 %35)
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %125

39:                                               ; preds = %28
  %40 = load i32, i32* @ANG90, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32*, i32** @tantoangle, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @SlopeDiv(i32 %43, i32 %44)
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %41, %47
  store i32 %48, i32* %3, align 4
  br label %125

49:                                               ; preds = %25
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32*, i32** @tantoangle, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @SlopeDiv(i32 %57, i32 %58)
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %125

63:                                               ; preds = %49
  %64 = load i32, i32* @ANG270, align 4
  %65 = load i32*, i32** @tantoangle, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @SlopeDiv(i32 %66, i32 %67)
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %64, %70
  store i32 %71, i32* %3, align 4
  br label %125

72:                                               ; preds = %22
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* @ANG180, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32*, i32** @tantoangle, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @SlopeDiv(i32 %85, i32 %86)
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %83, %89
  store i32 %90, i32* %3, align 4
  br label %125

91:                                               ; preds = %77
  %92 = load i32, i32* @ANG90, align 4
  %93 = load i32*, i32** @tantoangle, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @SlopeDiv(i32 %94, i32 %95)
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %92, %98
  store i32 %99, i32* %3, align 4
  br label %125

100:                                              ; preds = %72
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i32, i32* @ANG180, align 4
  %108 = load i32*, i32** @tantoangle, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @SlopeDiv(i32 %109, i32 %110)
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %107, %113
  store i32 %114, i32* %3, align 4
  br label %125

115:                                              ; preds = %100
  %116 = load i32, i32* @ANG270, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32*, i32** @tantoangle, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i64 @SlopeDiv(i32 %119, i32 %120)
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %117, %123
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %115, %106, %91, %81, %63, %55, %39, %32, %21
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @SlopeDiv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
