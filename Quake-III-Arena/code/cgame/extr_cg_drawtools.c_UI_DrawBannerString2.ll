; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_UI_DrawBannerString2.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_UI_DrawBannerString2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cgs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PROPB_SPACE_WIDTH = common dso_local global i64 0, align 8
@PROPB_GAP_WIDTH = common dso_local global i64 0, align 8
@propMapB = common dso_local global i64** null, align 8
@PROPB_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32*)* @UI_DrawBannerString2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawBannerString2(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @trap_R_SetColor(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 1), align 4
  %25 = add nsw i32 %23, %24
  %26 = sitofp i32 %25 to float
  store float %26, float* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 4
  %29 = mul nsw i32 %27, %28
  %30 = sitofp i32 %29 to float
  store float %30, float* %12, align 4
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %139, %4
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %142

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %39, 127
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %10, align 1
  %42 = load i8, i8* %10, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load i64, i64* @PROPB_SPACE_WIDTH, align 8
  %47 = sitofp i64 %46 to float
  %48 = load i64, i64* @PROPB_GAP_WIDTH, align 8
  %49 = sitofp i64 %48 to float
  %50 = fadd float %47, %49
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 4
  %52 = sitofp i32 %51 to float
  %53 = fmul float %50, %52
  %54 = load float, float* %11, align 4
  %55 = fadd float %54, %53
  store float %55, float* %11, align 4
  br label %139

56:                                               ; preds = %36
  %57 = load i8, i8* %10, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sge i32 %58, 65
  br i1 %59, label %60, label %138

60:                                               ; preds = %56
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sle i32 %62, 90
  br i1 %63, label %64, label %138

64:                                               ; preds = %60
  %65 = load i8, i8* %10, align 1
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 %66, 65
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %10, align 1
  %69 = load i64**, i64*** @propMapB, align 8
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds i64*, i64** %69, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to float
  %77 = fdiv float %76, 2.560000e+02
  store float %77, float* %16, align 4
  %78 = load i64**, i64*** @propMapB, align 8
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds i64*, i64** %78, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = sitofp i64 %84 to float
  %86 = fdiv float %85, 2.560000e+02
  store float %86, float* %15, align 4
  %87 = load i64**, i64*** @propMapB, align 8
  %88 = load i8, i8* %10, align 1
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds i64*, i64** %87, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = sitofp i64 %93 to float
  %95 = fdiv float %94, 2.560000e+02
  store float %95, float* %17, align 4
  %96 = load i64, i64* @PROPB_HEIGHT, align 8
  %97 = sitofp i64 %96 to float
  %98 = fdiv float %97, 2.560000e+02
  store float %98, float* %18, align 4
  %99 = load i64**, i64*** @propMapB, align 8
  %100 = load i8, i8* %10, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i64*, i64** %99, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = sitofp i64 %105 to float
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 4
  %108 = sitofp i32 %107 to float
  %109 = fmul float %106, %108
  store float %109, float* %13, align 4
  %110 = load i64, i64* @PROPB_HEIGHT, align 8
  %111 = sitofp i64 %110 to float
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 4
  %113 = sitofp i32 %112 to float
  %114 = fmul float %111, %113
  store float %114, float* %14, align 4
  %115 = load float, float* %11, align 4
  %116 = load float, float* %12, align 4
  %117 = load float, float* %13, align 4
  %118 = load float, float* %14, align 4
  %119 = load float, float* %16, align 4
  %120 = load float, float* %15, align 4
  %121 = load float, float* %16, align 4
  %122 = load float, float* %17, align 4
  %123 = fadd float %121, %122
  %124 = load float, float* %15, align 4
  %125 = load float, float* %18, align 4
  %126 = fadd float %124, %125
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 2, i32 0), align 4
  %128 = call i32 @trap_R_DrawStretchPic(float %115, float %116, float %117, float %118, float %119, float %120, float %123, float %126, i32 %127)
  %129 = load float, float* %13, align 4
  %130 = load i64, i64* @PROPB_GAP_WIDTH, align 8
  %131 = sitofp i64 %130 to float
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 4
  %133 = sitofp i32 %132 to float
  %134 = fmul float %131, %133
  %135 = fadd float %129, %134
  %136 = load float, float* %11, align 4
  %137 = fadd float %136, %135
  store float %137, float* %11, align 4
  br label %138

138:                                              ; preds = %64, %60, %56
  br label %139

139:                                              ; preds = %138, %45
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %9, align 8
  br label %32

142:                                              ; preds = %32
  %143 = call i32 @trap_R_SetColor(i32* null)
  ret void
}

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i32 @trap_R_DrawStretchPic(float, float, float, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
