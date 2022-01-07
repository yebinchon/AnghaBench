; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_RB_TakeScreenshot.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_RB_TakeScreenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* (i32)*, i32 (i32*)*, i32 (i8*, i32*, i32)* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@glConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_TakeScreenshot(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 0), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 4
  %18 = mul nsw i32 %16, %17
  %19 = mul nsw i32 %18, 3
  %20 = add nsw i32 %19, 18
  %21 = call i32* %15(i32 %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @Com_Memset(i32* %22, i32 0, i32 18)
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 2, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 255
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 8
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 13
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 255
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 14
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 8
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 15
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 16
  store i32 24, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @GL_RGB, align 4
  %49 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 18
  %52 = call i32 @qglReadPixels(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = mul nsw i32 %55, 3
  %57 = add nsw i32 18, %56
  store i32 %57, i32* %13, align 4
  store i32 18, i32* %12, align 4
  br label %58

58:                                               ; preds = %84, %5
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %62
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 3
  store i32 %86, i32* %12, align 4
  br label %58

87:                                               ; preds = %58
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0), align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 2), align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 18
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 0), align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 4
  %98 = mul nsw i32 %96, %97
  %99 = mul nsw i32 %98, 3
  %100 = call i32 @R_GammaCorrect(i32* %95, i32 %99)
  br label %101

101:                                              ; preds = %93, %90, %87
  %102 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 2), align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 %102(i8* %103, i32* %104, i32 %105)
  %107 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 1), align 8
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 %107(i32* %108)
  ret void
}

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @R_GammaCorrect(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
