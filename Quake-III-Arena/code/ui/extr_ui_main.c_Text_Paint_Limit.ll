; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_Text_Paint_Limit.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_Text_Paint_Limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { float, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { float, float, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { float }
%struct.TYPE_13__ = type { float }

@uiInfo = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ui_smallFont = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ui_bigFont = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@g_color_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float, float, float, i32*, i8*, float, i32)* @Text_Paint_Limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Text_Paint_Limit(float* %0, float %1, float %2, float %3, i32* %4, i8* %5, float %6, i32 %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca float, align 4
  store float* %0, float** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %167

28:                                               ; preds = %8
  %29 = load i8*, i8** %14, align 8
  store i8* %29, i8** %21, align 8
  %30 = load float*, float** %9, align 8
  %31 = load float, float* %30, align 4
  store float %31, float* %22, align 4
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0, i32 0, i32 2), %struct.TYPE_11__** %24, align 8
  %32 = load float, float* %12, align 4
  %33 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_smallFont, i32 0, i32 0), align 4
  %34 = fcmp ole float %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0, i32 0, i32 1), %struct.TYPE_11__** %24, align 8
  br label %42

36:                                               ; preds = %28
  %37 = load float, float* %12, align 4
  %38 = load float, float* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_bigFont, i32 0, i32 0), align 4
  %39 = fcmp ogt float %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0, i32 0, i32 0), %struct.TYPE_11__** %24, align 8
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %35
  %43 = load float, float* %12, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 8
  %47 = fmul float %43, %46
  store float %47, float* %23, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @trap_R_SetColor(i32* %48)
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %58, %54, %42
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %164, %87, %60
  %62 = load i8*, i8** %21, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i8*, i8** %21, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %70, %71
  br label %73

73:                                               ; preds = %69, %64, %61
  %74 = phi i1 [ false, %64 ], [ false, %61 ], [ %72, %69 ]
  br i1 %74, label %75, label %165

75:                                               ; preds = %73
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load i8*, i8** %21, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %82
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %20, align 8
  %84 = load i8*, i8** %21, align 8
  %85 = call i64 @Q_IsColorString(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %75
  %88 = load i32*, i32** %19, align 8
  %89 = load i32*, i32** @g_color_table, align 8
  %90 = load i8*, i8** %21, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @ColorIndex(i8 signext %92)
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @memcpy(i32* %88, i32 %95, i32 8)
  %97 = load i32*, i32** %13, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %19, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %19, align 8
  %103 = call i32 @trap_R_SetColor(i32* %102)
  %104 = load i8*, i8** %21, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %21, align 8
  br label %61

106:                                              ; preds = %75
  %107 = load float, float* %23, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load float, float* %109, align 4
  %111 = fmul float %107, %110
  store float %111, float* %25, align 4
  %112 = load i8*, i8** %21, align 8
  %113 = load float, float* %23, align 4
  %114 = call float @Text_Width(i8* %112, float %113, i32 1)
  %115 = load float, float* %10, align 4
  %116 = fadd float %114, %115
  %117 = load float, float* %22, align 4
  %118 = fcmp ogt float %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load float*, float** %9, align 8
  store float 0.000000e+00, float* %120, align 4
  br label %165

121:                                              ; preds = %106
  %122 = load float, float* %10, align 4
  %123 = load float, float* %11, align 4
  %124 = load float, float* %25, align 4
  %125 = fsub float %123, %124
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = load float, float* %23, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @Text_PaintChar(float %122, float %125, i32 %128, i32 %131, float %132, i32 %135, i32 %138, i32 %141, i32 %144, i32 %147)
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load float, float* %150, align 4
  %152 = load float, float* %23, align 4
  %153 = fmul float %151, %152
  %154 = load float, float* %15, align 4
  %155 = fadd float %153, %154
  %156 = load float, float* %10, align 4
  %157 = fadd float %156, %155
  store float %157, float* %10, align 4
  %158 = load float, float* %10, align 4
  %159 = load float*, float** %9, align 8
  store float %158, float* %159, align 4
  %160 = load i32, i32* %18, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %18, align 4
  %162 = load i8*, i8** %21, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %21, align 8
  br label %164

164:                                              ; preds = %121
  br label %61

165:                                              ; preds = %119, %73
  %166 = call i32 @trap_R_SetColor(i32* null)
  br label %167

167:                                              ; preds = %165, %8
  ret void
}

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @ColorIndex(i8 signext) #1

declare dso_local float @Text_Width(i8*, float, i32) #1

declare dso_local i32 @Text_PaintChar(float, float, i32, i32, float, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
