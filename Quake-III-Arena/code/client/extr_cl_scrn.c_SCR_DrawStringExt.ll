; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_DrawStringExt.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_DrawStringExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (float*)* }

@re = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@g_color_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_DrawStringExt(i32 %0, i32 %1, float %2, i8* %3, float* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i8*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float %2, float* %9, align 4
  store i8* %3, i8** %10, align 8
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load float*, float** %13, align 8
  %17 = getelementptr inbounds float, float* %16, i64 2
  store float 0.000000e+00, float* %17, align 4
  %18 = load float*, float** %13, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  store float 0.000000e+00, float* %19, align 4
  %20 = load float*, float** %13, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  store float 0.000000e+00, float* %21, align 4
  %22 = load float*, float** %11, align 8
  %23 = getelementptr inbounds float, float* %22, i64 3
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %13, align 8
  %26 = getelementptr inbounds float, float* %25, i64 3
  store float %24, float* %26, align 4
  %27 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %28 = load float*, float** %13, align 8
  %29 = call i32 %27(float* %28)
  %30 = load i8*, i8** %10, align 8
  store i8* %30, i8** %14, align 8
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %43, %40, %6
  %33 = load i8*, i8** %14, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i8*, i8** %14, align 8
  %38 = call i64 @Q_IsColorString(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %14, align 8
  br label %32

43:                                               ; preds = %36
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 2
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 2
  %48 = load float, float* %9, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @SCR_DrawChar(i32 %45, i32 %47, float %48, i8 signext %50)
  %52 = load float, float* %9, align 4
  %53 = load i32, i32* %15, align 4
  %54 = sitofp i32 %53 to float
  %55 = fadd float %54, %52
  %56 = fptosi float %55 to i32
  store i32 %56, i32* %15, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %14, align 8
  br label %32

59:                                               ; preds = %32
  %60 = load i8*, i8** %10, align 8
  store i8* %60, i8** %14, align 8
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %15, align 4
  %62 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %63 = load float*, float** %11, align 8
  %64 = call i32 %62(float* %63)
  br label %65

65:                                               ; preds = %97, %94, %59
  %66 = load i8*, i8** %14, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %111

69:                                               ; preds = %65
  %70 = load i8*, i8** %14, align 8
  %71 = call i64 @Q_IsColorString(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %73
  %77 = load float*, float** %13, align 8
  %78 = load i32*, i32** @g_color_table, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @ColorIndex(i8 signext %81)
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @Com_Memcpy(float* %77, i32 %84, i32 8)
  %86 = load float*, float** %11, align 8
  %87 = getelementptr inbounds float, float* %86, i64 3
  %88 = load float, float* %87, align 4
  %89 = load float*, float** %13, align 8
  %90 = getelementptr inbounds float, float* %89, i64 3
  store float %88, float* %90, align 4
  %91 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %92 = load float*, float** %13, align 8
  %93 = call i32 %91(float* %92)
  br label %94

94:                                               ; preds = %76, %73
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  store i8* %96, i8** %14, align 8
  br label %65

97:                                               ; preds = %69
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load float, float* %9, align 4
  %101 = load i8*, i8** %14, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i32 @SCR_DrawChar(i32 %98, i32 %99, float %100, i8 signext %102)
  %104 = load float, float* %9, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sitofp i32 %105 to float
  %107 = fadd float %106, %104
  %108 = fptosi float %107 to i32
  store i32 %108, i32* %15, align 4
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %14, align 8
  br label %65

111:                                              ; preds = %65
  %112 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %113 = call i32 %112(float* null)
  ret void
}

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @SCR_DrawChar(i32, i32, float, i8 signext) #1

declare dso_local i32 @Com_Memcpy(float*, i32, i32) #1

declare dso_local i64 @ColorIndex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
