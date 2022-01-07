; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_Text_Width.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_Text_Width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { float, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { float }
%struct.TYPE_13__ = type { float }

@uiInfo = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ui_smallFont = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ui_bigFont = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Text_Width(i8* %0, float %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %12, align 8
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0, i32 0, i32 2), %struct.TYPE_11__** %13, align 8
  %15 = load float, float* %5, align 4
  %16 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_smallFont, i32 0, i32 0), align 4
  %17 = fcmp ole float %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0, i32 0, i32 1), %struct.TYPE_11__** %13, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load float, float* %5, align 4
  %21 = load float, float* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_bigFont, i32 0, i32 0), align 4
  %22 = fcmp oge float %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0, i32 0, i32 0), %struct.TYPE_11__** %13, align 8
  br label %24

24:                                               ; preds = %23, %19
  br label %25

25:                                               ; preds = %24, %18
  %26 = load float, float* %5, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  %30 = fmul float %26, %29
  store float %30, float* %11, align 4
  store float 0.000000e+00, float* %9, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %87

33:                                               ; preds = %25
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %38, %33
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %85, %63, %44
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br label %57

57:                                               ; preds = %53, %48, %45
  %58 = phi i1 [ false, %48 ], [ false, %45 ], [ %56, %53 ]
  br i1 %58, label %59, label %86

59:                                               ; preds = %57
  %60 = load i8*, i8** %12, align 8
  %61 = call i64 @Q_IsColorString(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %12, align 8
  br label %45

66:                                               ; preds = %59
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %73
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %10, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to float
  %79 = load float, float* %9, align 4
  %80 = fadd float %79, %78
  store float %80, float* %9, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %12, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %66
  br label %45

86:                                               ; preds = %57
  br label %87

87:                                               ; preds = %86, %25
  %88 = load float, float* %9, align 4
  %89 = load float, float* %11, align 4
  %90 = fmul float %88, %89
  %91 = fptosi float %90 to i32
  ret i32 %91
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Q_IsColorString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
