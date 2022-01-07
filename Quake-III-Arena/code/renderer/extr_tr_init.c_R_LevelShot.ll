; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_R_LevelShot.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_R_LevelShot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i32* (i32)*, i32 (i32, i8*, i8*)*, i32 (i32*)*, i32 (i8*, i32*, i32)* }
%struct.TYPE_8__ = type { i32, i32, i64 }

@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"levelshots/%s.tga\00", align 1
@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@glConfig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Wrote %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LevelShot() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = load i32, i32* @MAX_OSPATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %1, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 0), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 1), align 4
  %27 = mul nsw i32 %25, %26
  %28 = mul nsw i32 %27, 3
  %29 = call i32* %24(i32 %28)
  store i32* %29, i32** %4, align 8
  %30 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %31 = call i32* %30(i32 49170)
  store i32* %31, i32** %3, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @Com_Memset(i32* %32, i32 0, i32 18)
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 2, i32* %35, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 12
  store i32 128, i32* %37, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 14
  store i32 128, i32* %39, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  store i32 24, i32* %41, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 0), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 1), align 4
  %44 = load i32, i32* @GL_RGB, align 4
  %45 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @qglReadPixels(i32 0, i32 0, i32 %42, i32 %43, i32 %44, i32 %45, i32* %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 0), align 8
  %49 = sitofp i32 %48 to float
  %50 = fdiv float %49, 5.120000e+02
  store float %50, float* %12, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 1), align 4
  %52 = sitofp i32 %51 to float
  %53 = fdiv float %52, 3.840000e+02
  store float %53, float* %13, align 4
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %141, %0
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 128
  br i1 %56, label %57, label %144

57:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %137, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 128
  br i1 %60, label %61, label %140

61:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %112, %61
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %115

65:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %108, %65
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %111

69:                                               ; preds = %66
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 0), align 8
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 3
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %73, %74
  %76 = sitofp i32 %75 to float
  %77 = load float, float* %13, align 4
  %78 = fmul float %76, %77
  %79 = fptosi float %78 to i32
  %80 = mul nsw i32 %71, %79
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %81, 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %82, %83
  %85 = sitofp i32 %84 to float
  %86 = load float, float* %12, align 4
  %87 = fmul float %85, %86
  %88 = fptosi float %87 to i32
  %89 = add nsw i32 %80, %88
  %90 = mul nsw i32 3, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %70, i64 %91
  store i32* %92, i32** %5, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %69
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %66

111:                                              ; preds = %66
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %62

115:                                              ; preds = %62
  %116 = load i32*, i32** %3, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 18
  %118 = load i32, i32* %8, align 4
  %119 = mul nsw i32 %118, 128
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %119, %120
  %122 = mul nsw i32 3, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %117, i64 %123
  store i32* %124, i32** %6, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sdiv i32 %125, 12
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %10, align 4
  %130 = sdiv i32 %129, 12
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %9, align 4
  %134 = sdiv i32 %133, 12
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %115
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %58

140:                                              ; preds = %58
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %54

144:                                              ; preds = %54
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 2), align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 18
  %153 = call i32 @R_GammaCorrect(i32* %152, i32 49152)
  br label %154

154:                                              ; preds = %150, %147, %144
  %155 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 3), align 8
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 %155(i8* %19, i32* %156, i32 49170)
  %158 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 2), align 8
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 %158(i32* %159)
  %161 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 2), align 8
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 %161(i32* %162)
  %164 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 1), align 8
  %165 = load i32, i32* @PRINT_ALL, align 4
  %166 = call i32 %164(i32 %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %167 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %167)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @Com_Memset(i32*, i32, i32) #2

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @R_GammaCorrect(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
