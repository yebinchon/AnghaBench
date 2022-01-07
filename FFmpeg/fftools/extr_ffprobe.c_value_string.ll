; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_value_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_value_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, i8*, double, i8* }
%struct.unit_value = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, i64 }

@unit_second_str = common dso_local global i64 0, align 8
@use_value_sexagesimal_format = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%d:%02d:%09.6f\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@use_value_prefix = common dso_local global i64 0, align 8
@unit_byte_str = common dso_local global i64 0, align 8
@use_byte_value_binary_prefix = common dso_local global i64 0, align 8
@si_prefixes = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@show_value_unit = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, %struct.unit_value*)* @value_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @value_string(i8* %0, i32 %1, %struct.unit_value* byval(%struct.unit_value) align 8 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %14 = getelementptr inbounds %struct.unit_value, %struct.unit_value* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @unit_second_str, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.unit_value, %struct.unit_value* %2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  store double %21, double* %6, align 8
  store i32 1, i32* %8, align 4
  br label %27

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.unit_value, %struct.unit_value* %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = sitofp i64 %25 to double
  store double %26, double* %6, align 8
  br label %27

27:                                               ; preds = %22, %18
  %28 = getelementptr inbounds %struct.unit_value, %struct.unit_value* %2, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @unit_second_str, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load i64, i64* @use_value_sexagesimal_format, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load double, double* %6, align 8
  store double %36, double* %9, align 8
  %37 = load double, double* %9, align 8
  %38 = fptosi double %37 to i32
  %39 = sdiv i32 %38, 60
  store i32 %39, i32* %11, align 4
  %40 = load double, double* %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %41, 60
  %43 = sitofp i32 %42 to double
  %44 = fsub double %40, %43
  store double %44, double* %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sdiv i32 %45, 60
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = srem i32 %47, 60
  store i32 %48, i32* %11, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %11, align 4
  %54 = load double, double* %9, align 8
  %55 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %53, double %54)
  br label %163

56:                                               ; preds = %32, %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %57 = load i64, i64* @use_value_prefix, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %115

59:                                               ; preds = %56
  %60 = load double, double* %6, align 8
  %61 = fcmp ogt double %60, 1.000000e+00
  br i1 %61, label %62, label %115

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.unit_value, %struct.unit_value* %2, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @unit_byte_str, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %62
  %68 = load i64, i64* @use_byte_value_binary_prefix, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = load double, double* %6, align 8
  %72 = call i64 @log2(double %71)
  %73 = sdiv i64 %72, 10
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @si_prefixes, align 8
  %76 = call i64 @FF_ARRAY_ELEMS(%struct.TYPE_5__* %75)
  %77 = sub nsw i64 %76, 1
  %78 = call i64 @av_clip(i64 %74, i32 0, i64 %77)
  store i64 %78, i64* %13, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @si_prefixes, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load double, double* %82, align 8
  %84 = load double, double* %6, align 8
  %85 = fdiv double %84, %83
  store double %85, double* %6, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @si_prefixes, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %12, align 8
  br label %112

91:                                               ; preds = %67, %62
  %92 = load double, double* %6, align 8
  %93 = call i64 @log10(double %92)
  %94 = sdiv i64 %93, 3
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @si_prefixes, align 8
  %97 = call i64 @FF_ARRAY_ELEMS(%struct.TYPE_5__* %96)
  %98 = sub nsw i64 %97, 1
  %99 = call i64 @av_clip(i64 %95, i32 0, i64 %98)
  store i64 %99, i64* %13, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @si_prefixes, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load double, double* %103, align 8
  %105 = load double, double* %6, align 8
  %106 = fdiv double %105, %104
  store double %106, double* %6, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @si_prefixes, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %12, align 8
  br label %112

112:                                              ; preds = %91, %70
  %113 = load double, double* %6, align 8
  %114 = fptosi double %113 to i64
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %112, %59, %56
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* @use_value_prefix, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load double, double* %6, align 8
  %123 = load double, double* %6, align 8
  %124 = fptosi double %123 to i64
  %125 = sitofp i64 %124 to double
  %126 = fcmp une double %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121, %115
  %128 = load i8*, i8** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load double, double* %6, align 8
  %131 = fptosi double %130 to i64
  %132 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %128, i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %131)
  br label %138

133:                                              ; preds = %121, %118
  %134 = load i8*, i8** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i64, i64* %7, align 8
  %137 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %134, i32 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %136)
  br label %138

138:                                              ; preds = %133, %127
  %139 = load i8*, i8** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i8*, i8** %12, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %138
  %146 = load i64, i64* @show_value_unit, align 8
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %145, %138
  %149 = phi i1 [ true, %138 ], [ %147, %145 ]
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %152 = load i8*, i8** %12, align 8
  %153 = load i64, i64* @show_value_unit, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.unit_value, %struct.unit_value* %2, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i8*
  br label %160

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %155
  %161 = phi i8* [ %158, %155 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %159 ]
  %162 = call i32 @av_strlcatf(i8* %139, i32 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %151, i8* %152, i8* %161)
  br label %163

163:                                              ; preds = %160, %35
  %164 = load i8*, i8** %4, align 8
  ret i8* %164
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i64 @log2(double) #1

declare dso_local i64 @av_clip(i64, i32, i64) #1

declare dso_local i64 @FF_ARRAY_ELEMS(%struct.TYPE_5__*) #1

declare dso_local i64 @log10(double) #1

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
