; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DisplayDownloadInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DisplayDownloadInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UI_DisplayDownloadInfo.dlText = internal global [13 x i8] c"Downloading:\00", align 1
@UI_DisplayDownloadInfo.etaText = internal global [21 x i8] c"Estimated time left:\00", align 16
@UI_DisplayDownloadInfo.xferText = internal global [15 x i8] c"Transfer rate:\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"cl_downloadSize\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cl_downloadCount\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cl_downloadTime\00", align 1
@colorWhite = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s (%d%%)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"estimating\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"(%s of %s copied)\00", align 1
@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"(%s copied)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s/Sec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float, float, float)* @UI_DisplayDownloadInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DisplayDownloadInfo(i8* %0, float %1, float %2, float %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %20 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %9, align 4
  %21 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %10, align 4
  %22 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %22, i32* %11, align 4
  store i32 320, i32* %17, align 4
  %23 = load i32, i32* @colorWhite, align 4
  %24 = call i32 @UI_SetColor(i32 %23)
  %25 = load float, float* %6, align 4
  %26 = fptosi float %25 to i32
  %27 = load float, float* %7, align 4
  %28 = fadd float %27, 1.120000e+02
  %29 = load float, float* %8, align 4
  %30 = load i32, i32* @colorWhite, align 4
  %31 = call i32 @Text_PaintCenter(i32 %26, float %28, float %29, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @UI_DisplayDownloadInfo.dlText, i64 0, i64 0), i32 0)
  %32 = load float, float* %6, align 4
  %33 = fptosi float %32 to i32
  %34 = load float, float* %7, align 4
  %35 = fadd float %34, 1.920000e+02
  %36 = load float, float* %8, align 4
  %37 = load i32, i32* @colorWhite, align 4
  %38 = call i32 @Text_PaintCenter(i32 %33, float %35, float %36, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @UI_DisplayDownloadInfo.etaText, i64 0, i64 0), i32 0)
  %39 = load float, float* %6, align 4
  %40 = fptosi float %39 to i32
  %41 = load float, float* %7, align 4
  %42 = fadd float %41, 2.480000e+02
  %43 = load float, float* %8, align 4
  %44 = load i32, i32* @colorWhite, align 4
  %45 = call i32 @Text_PaintCenter(i32 %40, float %42, float %43, i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @UI_DisplayDownloadInfo.xferText, i64 0, i64 0), i32 0)
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %4
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 100
  %52 = load i32, i32* %9, align 4
  %53 = sdiv i32 %51, %52
  %54 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 %53)
  store i8* %54, i8** %18, align 8
  br label %57

55:                                               ; preds = %4
  %56 = load i8*, i8** %5, align 8
  store i8* %56, i8** %18, align 8
  br label %57

57:                                               ; preds = %55, %48
  %58 = load float, float* %6, align 4
  %59 = fptosi float %58 to i32
  %60 = load float, float* %7, align 4
  %61 = fadd float %60, 1.360000e+02
  %62 = load float, float* %8, align 4
  %63 = load i32, i32* @colorWhite, align 4
  %64 = load i8*, i8** %18, align 8
  %65 = call i32 @Text_PaintCenter(i32 %59, float %61, float %62, i32 %63, i8* %64, i32 0)
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @UI_ReadableSize(i8* %66, i32 64, i32 %67)
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @UI_ReadableSize(i8* %69, i32 64, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 4096
  br i1 %73, label %77, label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %74, %57
  %78 = load i32, i32* %17, align 4
  %79 = load float, float* %7, align 4
  %80 = fadd float %79, 2.160000e+02
  %81 = load float, float* %8, align 4
  %82 = load i32, i32* @colorWhite, align 4
  %83 = call i32 @Text_PaintCenter(i32 %78, float %80, float %81, i32 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %84 = load i32, i32* %17, align 4
  %85 = load float, float* %7, align 4
  %86 = fadd float %85, 1.600000e+02
  %87 = load float, float* %8, align 4
  %88 = load i32, i32* @colorWhite, align 4
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %91 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %89, i8* %90)
  %92 = call i32 @Text_PaintCenter(i32 %84, float %86, float %87, i32 %88, i8* %91, i32 0)
  br label %190

93:                                               ; preds = %74
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sdiv i32 %96, 1000
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sdiv i32 %103, 1000
  %105 = sdiv i32 %100, %104
  store i32 %105, i32* %16, align 4
  br label %107

106:                                              ; preds = %93
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %106, %99
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @UI_ReadableSize(i8* %108, i32 64, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %107
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %16, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %19, align 4
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sdiv i32 %122, 1024
  %124 = load i32, i32* %19, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %9, align 4
  %127 = sdiv i32 %126, 1024
  %128 = sdiv i32 %125, %127
  %129 = sub nsw i32 %121, %128
  %130 = mul nsw i32 %129, 1000
  %131 = call i32 @UI_PrintTime(i8* %120, i32 64, i32 %130)
  %132 = load i32, i32* %17, align 4
  %133 = load float, float* %7, align 4
  %134 = fadd float %133, 2.160000e+02
  %135 = load float, float* %8, align 4
  %136 = load i32, i32* @colorWhite, align 4
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %138 = call i32 @Text_PaintCenter(i32 %132, float %134, float %135, i32 %136, i8* %137, i32 0)
  %139 = load i32, i32* %17, align 4
  %140 = load float, float* %7, align 4
  %141 = fadd float %140, 1.600000e+02
  %142 = load float, float* %8, align 4
  %143 = load i32, i32* @colorWhite, align 4
  %144 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %146 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %144, i8* %145)
  %147 = call i32 @Text_PaintCenter(i32 %139, float %141, float %142, i32 %143, i8* %146, i32 0)
  br label %177

148:                                              ; preds = %113, %107
  %149 = load i32, i32* %17, align 4
  %150 = load float, float* %7, align 4
  %151 = fadd float %150, 2.160000e+02
  %152 = load float, float* %8, align 4
  %153 = load i32, i32* @colorWhite, align 4
  %154 = call i32 @Text_PaintCenter(i32 %149, float %151, float %152, i32 %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %148
  %158 = load i32, i32* %17, align 4
  %159 = load float, float* %7, align 4
  %160 = fadd float %159, 1.600000e+02
  %161 = load float, float* %8, align 4
  %162 = load i32, i32* @colorWhite, align 4
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %164 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %165 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %163, i8* %164)
  %166 = call i32 @Text_PaintCenter(i32 %158, float %160, float %161, i32 %162, i8* %165, i32 0)
  br label %176

167:                                              ; preds = %148
  %168 = load i32, i32* %17, align 4
  %169 = load float, float* %7, align 4
  %170 = fadd float %169, 1.600000e+02
  %171 = load float, float* %8, align 4
  %172 = load i32, i32* @colorWhite, align 4
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %174 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %173)
  %175 = call i32 @Text_PaintCenter(i32 %168, float %170, float %171, i32 %172, i8* %174, i32 0)
  br label %176

176:                                              ; preds = %167, %157
  br label %177

177:                                              ; preds = %176, %116
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = load i32, i32* %17, align 4
  %182 = load float, float* %7, align 4
  %183 = fadd float %182, 2.720000e+02
  %184 = load float, float* %8, align 4
  %185 = load i32, i32* @colorWhite, align 4
  %186 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %187 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %186)
  %188 = call i32 @Text_PaintCenter(i32 %181, float %183, float %184, i32 %185, i8* %187, i32 0)
  br label %189

189:                                              ; preds = %180, %177
  br label %190

190:                                              ; preds = %189, %77
  ret void
}

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @UI_SetColor(i32) #1

declare dso_local i32 @Text_PaintCenter(i32, float, float, i32, i8*, i32) #1

declare dso_local i8* @va(i8*, i8*, ...) #1

declare dso_local i32 @UI_ReadableSize(i8*, i32, i32) #1

declare dso_local i32 @UI_PrintTime(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
