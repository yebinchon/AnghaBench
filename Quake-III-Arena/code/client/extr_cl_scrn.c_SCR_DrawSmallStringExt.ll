; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_DrawSmallStringExt.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_DrawSmallStringExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (float*)* }

@re = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@g_color_table = common dso_local global i32* null, align 8
@SMALLCHAR_WIDTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_DrawSmallStringExt(i32 %0, i32 %1, i8* %2, float* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %17 = load float*, float** %9, align 8
  %18 = call i32 %16(float* %17)
  br label %19

19:                                               ; preds = %51, %48, %5
  %20 = load i8*, i8** %12, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @Q_IsColorString(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = load float*, float** %11, align 8
  %32 = load i32*, i32** @g_color_table, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @ColorIndex(i8 signext %35)
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @Com_Memcpy(float* %31, i32 %38, i32 8)
  %40 = load float*, float** %9, align 8
  %41 = getelementptr inbounds float, float* %40, i64 3
  %42 = load float, float* %41, align 4
  %43 = load float*, float** %11, align 8
  %44 = getelementptr inbounds float, float* %43, i64 3
  store float %42, float* %44, align 4
  %45 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %46 = load float*, float** %11, align 8
  %47 = call i32 %45(float* %46)
  br label %48

48:                                               ; preds = %30, %27
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %12, align 8
  br label %19

51:                                               ; preds = %23
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @SCR_DrawSmallChar(i32 %52, i32 %53, i8 signext %55)
  %57 = load i64, i64* @SMALLCHAR_WIDTH, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  br label %19

64:                                               ; preds = %19
  %65 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @re, i32 0, i32 0), align 8
  %66 = call i32 %65(float* null)
  ret void
}

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @Com_Memcpy(float*, i32, i32) #1

declare dso_local i64 @ColorIndex(i8 signext) #1

declare dso_local i32 @SCR_DrawSmallChar(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
