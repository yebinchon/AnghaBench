; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Field_VariableSizeDraw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Field_VariableSizeDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"drawLen >= MAX_STRING_CHARS\00", align 1
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@key_overstrikeMode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Field_VariableSizeDraw(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x float], align 16
  %21 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* @MAX_STRING_CHARS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @strlen(i64 %31)
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %64

38:                                               ; preds = %6
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %46
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %60, %37
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @MAX_STRING_CHARS, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @ERR_DROP, align 4
  %80 = call i32 @Com_Error(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %74
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @Com_Memcpy(i8* %25, i64 %87, i32 %88)
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %25, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %81
  %97 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 3
  store float 1.000000e+00, float* %97, align 4
  %98 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 2
  store float 1.000000e+00, float* %98, align 8
  %99 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 1
  store float 1.000000e+00, float* %99, align 4
  %100 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  store float 1.000000e+00, float* %100, align 16
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %104 = load i32, i32* @qfalse, align 4
  %105 = call i32 @SCR_DrawSmallStringExt(i32 %101, i32 %102, i8* %25, float* %103, i32 %104)
  br label %110

106:                                              ; preds = %81
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @SCR_DrawBigString(i32 %107, i32 %108, i8* %25, double 1.000000e+00)
  br label %110

110:                                              ; preds = %106, %96
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 1, i32* %21, align 4
  br label %167

114:                                              ; preds = %110
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 1, i32* %21, align 4
  br label %167

120:                                              ; preds = %114
  %121 = load i64, i64* @key_overstrikeMode, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 11, i32* %16, align 4
  br label %125

124:                                              ; preds = %120
  store i32 10, i32* %16, align 4
  br label %125

125:                                              ; preds = %124, %123
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @Q_PrintStrlen(i8* %25)
  %128 = add nsw i32 %127, 1
  %129 = sub nsw i32 %126, %128
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %125
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %19, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* %11, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %134, %143
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @SCR_DrawSmallChar(i32 %144, i32 %145, i32 %146)
  br label %166

148:                                              ; preds = %125
  %149 = load i32, i32* %16, align 4
  %150 = trunc i32 %149 to i8
  %151 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %150, i8* %151, align 16
  %152 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 0, i8* %152, align 1
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i32, i32* %19, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* %11, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %153, %162
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @SCR_DrawBigString(i32 %163, i32 %164, i8* %25, double 1.000000e+00)
  br label %166

166:                                              ; preds = %148, %133
  store i32 0, i32* %21, align 4
  br label %167

167:                                              ; preds = %166, %119, %113
  %168 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %21, align 4
  switch i32 %169, label %171 [
    i32 0, label %170
    i32 1, label %170
  ]

170:                                              ; preds = %167, %167
  ret void

171:                                              ; preds = %167
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @Com_Error(i32, i8*) #2

declare dso_local i32 @Com_Memcpy(i8*, i64, i32) #2

declare dso_local i32 @SCR_DrawSmallStringExt(i32, i32, i8*, float*, i32) #2

declare dso_local i32 @SCR_DrawBigString(i32, i32, i8*, double) #2

declare dso_local i32 @Q_PrintStrlen(i8*) #2

declare dso_local i32 @SCR_DrawSmallChar(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
