; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_CreateDlightImage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_CreateDlightImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DLIGHT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"*dlight\00", align 1
@qfalse = common dso_local global i32 0, align 4
@GL_CLAMP = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @R_CreateDlightImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_CreateDlightImage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = load i32, i32* @DLIGHT_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* @DLIGHT_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = mul nuw i64 %9, %11
  %14 = alloca [4 x i32], i64 %13, align 16
  store i64 %9, i64* %4, align 8
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %105, %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @DLIGHT_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %108

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %101, %19
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @DLIGHT_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %104

24:                                               ; preds = %20
  %25 = load i32, i32* @DLIGHT_SIZE, align 4
  %26 = sdiv i32 %25, 2
  %27 = sitofp i32 %26 to float
  %28 = fsub float %27, 5.000000e-01
  %29 = load i32, i32* %1, align 4
  %30 = sitofp i32 %29 to float
  %31 = fsub float %28, %30
  %32 = load i32, i32* @DLIGHT_SIZE, align 4
  %33 = sdiv i32 %32, 2
  %34 = sitofp i32 %33 to float
  %35 = fsub float %34, 5.000000e-01
  %36 = load i32, i32* %1, align 4
  %37 = sitofp i32 %36 to float
  %38 = fsub float %35, %37
  %39 = fmul float %31, %38
  %40 = load i32, i32* @DLIGHT_SIZE, align 4
  %41 = sdiv i32 %40, 2
  %42 = sitofp i32 %41 to float
  %43 = fsub float %42, 5.000000e-01
  %44 = load i32, i32* %2, align 4
  %45 = sitofp i32 %44 to float
  %46 = fsub float %43, %45
  %47 = load i32, i32* @DLIGHT_SIZE, align 4
  %48 = sdiv i32 %47, 2
  %49 = sitofp i32 %48 to float
  %50 = fsub float %49, 5.000000e-01
  %51 = load i32, i32* %2, align 4
  %52 = sitofp i32 %51 to float
  %53 = fsub float %50, %52
  %54 = fmul float %46, %53
  %55 = fadd float %39, %54
  store float %55, float* %7, align 4
  %56 = load float, float* %7, align 4
  %57 = fdiv float 4.000000e+03, %56
  %58 = fptosi float %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %59, 255
  br i1 %60, label %61, label %62

61:                                               ; preds = %24
  store i32 255, i32* %6, align 4
  br label %67

62:                                               ; preds = %24
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 75
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, %11
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 %71
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i64 %74
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i64 0, i64 2
  store i32 %68, i32* %76, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %78, %11
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 %79
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %80, i64 %82
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %83, i64 0, i64 1
  store i32 %68, i32* %84, align 4
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, %11
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 %87
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %88, i64 %90
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %91, i64 0, i64 0
  store i32 %68, i32* %92, align 16
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %94, %11
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 %95
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %96, i64 %98
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %99, i64 0, i64 3
  store i32 255, i32* %100, align 4
  br label %101

101:                                              ; preds = %67
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %20

104:                                              ; preds = %20
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  br label %15

108:                                              ; preds = %15
  %109 = bitcast [4 x i32]* %14 to i32*
  %110 = load i32, i32* @DLIGHT_SIZE, align 4
  %111 = load i32, i32* @DLIGHT_SIZE, align 4
  %112 = load i32, i32* @qfalse, align 4
  %113 = load i32, i32* @qfalse, align 4
  %114 = load i32, i32* @GL_CLAMP, align 4
  %115 = call i32 @R_CreateImage(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 0), align 4
  %116 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %116)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @R_CreateImage(i8*, i32*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
