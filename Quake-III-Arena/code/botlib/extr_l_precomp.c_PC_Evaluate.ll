; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_Evaluate.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_Evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, double, %struct.TYPE_14__* }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no value after #if/#elif\00", align 1
@TT_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"can't evaluate %s, not defined\00", align 1
@TT_NUMBER = common dso_local global i64 0, align 8
@TT_PUNCTUATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"can't evaluate %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_Evaluate(%struct.TYPE_15__* %0, i64* %1, double* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64* %1, i64** %7, align 8
  store double* %2, double** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i64*, i64** %7, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %20, %4
  %23 = load double*, double** %8, align 8
  %24 = icmp ne double* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load double*, double** %8, align 8
  store double 0.000000e+00, double* %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = call i64 @PC_ReadLine(%struct.TYPE_15__* %28, %struct.TYPE_14__* %10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = call i32 (%struct.TYPE_15__*, i8*, ...) @SourceError(%struct.TYPE_15__* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %5, align 4
  br label %165

35:                                               ; preds = %27
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  br label %36

36:                                               ; preds = %136, %35
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TT_NAME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %104

41:                                               ; preds = %36
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %16, align 4
  %46 = call %struct.TYPE_14__* @PC_CopyToken(%struct.TYPE_14__* %10)
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %13, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %54, align 8
  br label %57

55:                                               ; preds = %44
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %11, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %12, align 8
  br label %103

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = call i32 @strcmp(double %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @qtrue, align 4
  store i32 %65, i32* %16, align 4
  %66 = call %struct.TYPE_14__* @PC_CopyToken(%struct.TYPE_14__* %10)
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %13, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %70 = icmp ne %struct.TYPE_14__* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %74, align 8
  br label %77

75:                                               ; preds = %64
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %11, align 8
  br label %77

77:                                               ; preds = %75, %71
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %12, align 8
  br label %102

79:                                               ; preds = %59
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = call i32* @PC_FindDefine(i32 %82, double %84)
  store i32* %85, i32** %15, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %79
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %91 = load double, double* %90, align 8
  %92 = call i32 (%struct.TYPE_15__*, i8*, ...) @SourceError(%struct.TYPE_15__* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), double %91)
  %93 = load i32, i32* @qfalse, align 4
  store i32 %93, i32* %5, align 4
  br label %165

94:                                               ; preds = %79
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @PC_ExpandDefineIntoSource(%struct.TYPE_15__* %95, %struct.TYPE_14__* %10, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @qfalse, align 4
  store i32 %100, i32* %5, align 4
  br label %165

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %77
  br label %103

103:                                              ; preds = %102, %57
  br label %135

104:                                              ; preds = %36
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TT_NUMBER, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TT_PUNCTUATION, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %109, %104
  %115 = call %struct.TYPE_14__* @PC_CopyToken(%struct.TYPE_14__* %10)
  store %struct.TYPE_14__* %115, %struct.TYPE_14__** %13, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %117, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %123, align 8
  br label %126

124:                                              ; preds = %114
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %11, align 8
  br label %126

126:                                              ; preds = %124, %120
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %12, align 8
  br label %134

128:                                              ; preds = %109
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %131 = load double, double* %130, align 8
  %132 = call i32 (%struct.TYPE_15__*, i8*, ...) @SourceError(%struct.TYPE_15__* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), double %131)
  %133 = load i32, i32* @qfalse, align 4
  store i32 %133, i32* %5, align 4
  br label %165

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %103
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %138 = call i64 @PC_ReadLine(%struct.TYPE_15__* %137, %struct.TYPE_14__* %10)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %36, label %140

140:                                              ; preds = %136
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %143 = load i64*, i64** %7, align 8
  %144 = load double*, double** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @PC_EvaluateTokens(%struct.TYPE_15__* %141, %struct.TYPE_14__* %142, i64* %143, double* %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %140
  %149 = load i32, i32* @qfalse, align 4
  store i32 %149, i32* %5, align 4
  br label %165

150:                                              ; preds = %140
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %13, align 8
  br label %152

152:                                              ; preds = %161, %150
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %154 = icmp ne %struct.TYPE_14__* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  store %struct.TYPE_14__* %158, %struct.TYPE_14__** %14, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %160 = call i32 @PC_FreeToken(%struct.TYPE_14__* %159)
  br label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %162, %struct.TYPE_14__** %13, align 8
  br label %152

163:                                              ; preds = %152
  %164 = load i32, i32* @qtrue, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %163, %148, %128, %99, %88, %31
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i64 @PC_ReadLine(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @SourceError(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @PC_CopyToken(%struct.TYPE_14__*) #1

declare dso_local i32 @strcmp(double, i8*) #1

declare dso_local i32* @PC_FindDefine(i32, double) #1

declare dso_local i32 @PC_ExpandDefineIntoSource(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @PC_EvaluateTokens(%struct.TYPE_15__*, %struct.TYPE_14__*, i64*, double*, i32) #1

declare dso_local i32 @PC_FreeToken(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
