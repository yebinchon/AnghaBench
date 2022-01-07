; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_generate_nlmeans_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_generate_nlmeans_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ultralight\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"strong\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"grain\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"highmotion\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"animation\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"tape\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"sprite\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Unrecognized nlmeans tune (%s).\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"y-strength\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"y-origin-tune\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"y-patch-size\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"y-range\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"y-frame-count\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"y-prefilter\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"cb-strength\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"cb-origin-tune\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"cb-patch-size\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"cb-range\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"cb-frame-count\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"cb-prefilter\00", align 1
@.str.25 = private unnamed_addr constant [66 x i8] c"Custom nlmeans parameters specified; ignoring nlmeans tune (%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*)* @generate_nlmeans_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_nlmeans_settings(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x double], align 16
  %10 = alloca [2 x double], align 16
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i32], align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %448

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @hb_parse_filter_settings(i8* %23)
  store i32* %24, i32** %4, align 8
  br label %448

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcasecmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %436, label %41

41:                                               ; preds = %37, %33, %29, %25
  %42 = load i8*, i8** %6, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %44, %41
  %49 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.000000e+00, double* %49, align 8
  %50 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 6.000000e+00, double* %50, align 16
  %51 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 1.000000e+00, double* %51, align 8
  %52 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 1.000000e+00, double* %52, align 16
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 7, i32* %53, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 7, i32* %54, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 3, i32* %55, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 3, i32* %56, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 2, i32* %57, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 2, i32* %58, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %60, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %48
  %65 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.500000e+00, double* %65, align 8
  %66 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.500000e+00, double* %66, align 16
  br label %83

67:                                               ; preds = %48
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @strcasecmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.000000e+00, double* %72, align 8
  %73 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 3.000000e+00, double* %73, align 16
  br label %82

74:                                               ; preds = %67
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @strcasecmp(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.000000e+01, double* %79, align 8
  %80 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.000000e+01, double* %80, align 16
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %71
  br label %83

83:                                               ; preds = %82, %64
  br label %374

84:                                               ; preds = %44
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @strcasecmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %130, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 6.000000e+00, double* %89, align 16
  %90 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 8.000000e+00, double* %90, align 8
  %91 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 8.000000e-01, double* %91, align 8
  %92 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 8.000000e-01, double* %92, align 16
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 7, i32* %93, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 7, i32* %94, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 3, i32* %95, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 3, i32* %96, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 2, i32* %97, align 4
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 2, i32* %98, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %100, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @strcasecmp(i8* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %88
  %105 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.500000e+00, double* %105, align 16
  %106 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 2.400000e+00, double* %106, align 8
  %107 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 9.000000e-01, double* %107, align 16
  %108 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 9.000000e-01, double* %108, align 8
  br label %129

109:                                              ; preds = %88
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @strcasecmp(i8* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 3.000000e+00, double* %114, align 16
  %115 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 4.000000e+00, double* %115, align 8
  %116 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 9.000000e-01, double* %116, align 16
  %117 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 9.000000e-01, double* %117, align 8
  br label %128

118:                                              ; preds = %109
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @strcasecmp(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 8.000000e+00, double* %123, align 16
  %124 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.000000e+01, double* %124, align 8
  %125 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 6.000000e-01, double* %125, align 16
  %126 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 6.000000e-01, double* %126, align 8
  br label %127

127:                                              ; preds = %122, %118
  br label %128

128:                                              ; preds = %127, %113
  br label %129

129:                                              ; preds = %128, %104
  br label %373

130:                                              ; preds = %84
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @strcasecmp(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %176, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 0.000000e+00, double* %135, align 16
  %136 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.000000e+00, double* %136, align 8
  %137 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 8.000000e-01, double* %137, align 8
  %138 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 8.000000e-01, double* %138, align 16
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 7, i32* %139, align 4
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 7, i32* %140, align 4
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 3, i32* %141, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 3, i32* %142, align 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 2, i32* %143, align 4
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 2, i32* %144, align 4
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %145, align 4
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %146, align 4
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @strcasecmp(i8* %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %134
  %151 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 0.000000e+00, double* %151, align 16
  %152 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 2.400000e+00, double* %152, align 8
  %153 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 9.000000e-01, double* %153, align 16
  %154 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 9.000000e-01, double* %154, align 8
  br label %175

155:                                              ; preds = %134
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 @strcasecmp(i8* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 0.000000e+00, double* %160, align 16
  %161 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.500000e+00, double* %161, align 8
  %162 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 9.000000e-01, double* %162, align 16
  %163 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 9.000000e-01, double* %163, align 8
  br label %174

164:                                              ; preds = %155
  %165 = load i8*, i8** %5, align 8
  %166 = call i32 @strcasecmp(i8* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 0.000000e+00, double* %169, align 16
  %170 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 8.000000e+00, double* %170, align 8
  %171 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 6.000000e-01, double* %171, align 16
  %172 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 6.000000e-01, double* %172, align 8
  br label %173

173:                                              ; preds = %168, %164
  br label %174

174:                                              ; preds = %173, %159
  br label %175

175:                                              ; preds = %174, %150
  br label %372

176:                                              ; preds = %130
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @strcasecmp(i8* %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %222, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 6.000000e+00, double* %181, align 16
  %182 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.000000e+00, double* %182, align 8
  %183 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 8.000000e-01, double* %183, align 16
  %184 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 0x3FE6666666666666, double* %184, align 8
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 7, i32* %185, align 4
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 7, i32* %186, align 4
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 3, i32* %187, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 5, i32* %188, align 4
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 2, i32* %189, align 4
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 1, i32* %190, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %191, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %192, align 4
  %193 = load i8*, i8** %5, align 8
  %194 = call i32 @strcasecmp(i8* %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %180
  %197 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.500000e+00, double* %197, align 16
  %198 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 2.400000e+00, double* %198, align 8
  %199 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 9.000000e-01, double* %199, align 16
  %200 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 9.000000e-01, double* %200, align 8
  br label %221

201:                                              ; preds = %180
  %202 = load i8*, i8** %5, align 8
  %203 = call i32 @strcasecmp(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 3.000000e+00, double* %206, align 16
  %207 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.250000e+00, double* %207, align 8
  %208 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 9.000000e-01, double* %208, align 16
  %209 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 8.000000e-01, double* %209, align 8
  br label %220

210:                                              ; preds = %201
  %211 = load i8*, i8** %5, align 8
  %212 = call i32 @strcasecmp(i8* %211, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 8.000000e+00, double* %215, align 16
  %216 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.750000e+00, double* %216, align 8
  %217 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 6.000000e-01, double* %217, align 16
  %218 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 5.000000e-01, double* %218, align 8
  br label %219

219:                                              ; preds = %214, %210
  br label %220

220:                                              ; preds = %219, %205
  br label %221

221:                                              ; preds = %220, %196
  br label %371

222:                                              ; preds = %176
  %223 = load i8*, i8** %6, align 8
  %224 = call i32 @strcasecmp(i8* %223, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %266, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.000000e+00, double* %227, align 16
  %228 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 4.000000e+00, double* %228, align 8
  %229 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 1.500000e-01, double* %229, align 8
  %230 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 1.500000e-01, double* %230, align 16
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 5, i32* %231, align 4
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 5, i32* %232, align 4
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 7, i32* %233, align 4
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 7, i32* %234, align 4
  %235 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 4, i32* %235, align 4
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 4, i32* %236, align 4
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %237, align 4
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %238, align 4
  %239 = load i8*, i8** %5, align 8
  %240 = call i32 @strcasecmp(i8* %239, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %226
  %243 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 2.500000e+00, double* %243, align 16
  %244 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 2.000000e+00, double* %244, align 8
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 2, i32* %245, align 4
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 2, i32* %246, align 4
  br label %265

247:                                              ; preds = %226
  %248 = load i8*, i8** %5, align 8
  %249 = call i32 @strcasecmp(i8* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 3.000000e+00, double* %252, align 16
  %253 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 2.250000e+00, double* %253, align 8
  %254 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 3, i32* %254, align 4
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 3, i32* %255, align 4
  br label %264

256:                                              ; preds = %247
  %257 = load i8*, i8** %5, align 8
  %258 = call i32 @strcasecmp(i8* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.000000e+01, double* %261, align 16
  %262 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 8.000000e+00, double* %262, align 8
  br label %263

263:                                              ; preds = %260, %256
  br label %264

264:                                              ; preds = %263, %251
  br label %265

265:                                              ; preds = %264, %242
  br label %370

266:                                              ; preds = %222
  %267 = load i8*, i8** %6, align 8
  %268 = call i32 @strcasecmp(i8* %267, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %316, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 3.000000e+00, double* %271, align 16
  %272 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.000000e+00, double* %272, align 8
  %273 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 8.000000e-01, double* %273, align 16
  %274 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 8.000000e-01, double* %274, align 8
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 3, i32* %275, align 4
  %276 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 5, i32* %276, align 4
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 5, i32* %277, align 4
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 5, i32* %278, align 4
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 2, i32* %279, align 4
  %280 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 2, i32* %280, align 4
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %281, align 4
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %282, align 4
  %283 = load i8*, i8** %5, align 8
  %284 = call i32 @strcasecmp(i8* %283, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %293, label %286

286:                                              ; preds = %270
  %287 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.500000e+00, double* %287, align 16
  %288 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 5.000000e+00, double* %288, align 8
  %289 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 9.000000e-01, double* %289, align 16
  %290 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 9.000000e-01, double* %290, align 8
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 1, i32* %291, align 4
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 1, i32* %292, align 4
  br label %315

293:                                              ; preds = %270
  %294 = load i8*, i8** %5, align 8
  %295 = call i32 @strcasecmp(i8* %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 2.000000e+00, double* %298, align 16
  %299 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.000000e+00, double* %299, align 8
  %300 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 9.000000e-01, double* %300, align 16
  %301 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 9.000000e-01, double* %301, align 8
  br label %314

302:                                              ; preds = %293
  %303 = load i8*, i8** %5, align 8
  %304 = call i32 @strcasecmp(i8* %303, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %313, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 3.500000e+00, double* %307, align 16
  %308 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 8.000000e+00, double* %308, align 8
  %309 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 6.000000e-01, double* %309, align 16
  %310 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 6.000000e-01, double* %310, align 8
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 5, i32* %311, align 4
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 5, i32* %312, align 4
  br label %313

313:                                              ; preds = %306, %302
  br label %314

314:                                              ; preds = %313, %297
  br label %315

315:                                              ; preds = %314, %286
  br label %369

316:                                              ; preds = %266
  %317 = load i8*, i8** %6, align 8
  %318 = call i32 @strcasecmp(i8* %317, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %364, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 3.000000e+00, double* %321, align 16
  %322 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 4.000000e+00, double* %322, align 8
  %323 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  store double 1.500000e-01, double* %323, align 16
  %324 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  store double 5.000000e-01, double* %324, align 8
  %325 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 5, i32* %325, align 4
  %326 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 5, i32* %326, align 4
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 5, i32* %327, align 4
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 9, i32* %328, align 4
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 2, i32* %329, align 4
  %330 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 4, i32* %330, align 4
  %331 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %331, align 4
  %332 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %332, align 4
  %333 = load i8*, i8** %5, align 8
  %334 = call i32 @strcasecmp(i8* %333, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %343, label %336

336:                                              ; preds = %320
  %337 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.500000e+00, double* %337, align 16
  %338 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.000000e+00, double* %338, align 8
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 5, i32* %339, align 4
  %340 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 7, i32* %340, align 4
  %341 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 1, i32* %341, align 4
  %342 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 2, i32* %342, align 4
  br label %363

343:                                              ; preds = %320
  %344 = load i8*, i8** %5, align 8
  %345 = call i32 @strcasecmp(i8* %344, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %352, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 2.000000e+00, double* %348, align 16
  %349 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 4.000000e+00, double* %349, align 8
  %350 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 2, i32* %350, align 4
  %351 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 2, i32* %351, align 4
  br label %362

352:                                              ; preds = %343
  %353 = load i8*, i8** %5, align 8
  %354 = call i32 @strcasecmp(i8* %353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %361, label %356

356:                                              ; preds = %352
  %357 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 3.000000e+00, double* %357, align 16
  %358 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 4.000000e+00, double* %358, align 8
  %359 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 7, i32* %359, align 4
  %360 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 11, i32* %360, align 4
  br label %361

361:                                              ; preds = %356, %352
  br label %362

362:                                              ; preds = %361, %347
  br label %363

363:                                              ; preds = %362, %336
  br label %368

364:                                              ; preds = %316
  %365 = load i32, i32* @stderr, align 4
  %366 = load i8*, i8** %6, align 8
  %367 = call i32 @fprintf(i32 %365, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %366)
  store i32* null, i32** %4, align 8
  br label %448

368:                                              ; preds = %363
  br label %369

369:                                              ; preds = %368, %315
  br label %370

370:                                              ; preds = %369, %265
  br label %371

371:                                              ; preds = %370, %221
  br label %372

372:                                              ; preds = %371, %175
  br label %373

373:                                              ; preds = %372, %129
  br label %374

374:                                              ; preds = %373, %83
  %375 = call i32* (...) @hb_dict_init()
  store i32* %375, i32** %8, align 8
  %376 = load i32*, i32** %8, align 8
  %377 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %378 = load double, double* %377, align 16
  %379 = call i32 @hb_value_double(double %378)
  %380 = call i32 @hb_dict_set(i32* %376, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %379)
  %381 = load i32*, i32** %8, align 8
  %382 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  %383 = load double, double* %382, align 16
  %384 = call i32 @hb_value_double(double %383)
  %385 = call i32 @hb_dict_set(i32* %381, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %384)
  %386 = load i32*, i32** %8, align 8
  %387 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @hb_value_int(i32 %388)
  %390 = call i32 @hb_dict_set(i32* %386, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %389)
  %391 = load i32*, i32** %8, align 8
  %392 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @hb_value_int(i32 %393)
  %395 = call i32 @hb_dict_set(i32* %391, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %394)
  %396 = load i32*, i32** %8, align 8
  %397 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @hb_value_int(i32 %398)
  %400 = call i32 @hb_dict_set(i32* %396, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %399)
  %401 = load i32*, i32** %8, align 8
  %402 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @hb_value_int(i32 %403)
  %405 = call i32 @hb_dict_set(i32* %401, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %404)
  %406 = load i32*, i32** %8, align 8
  %407 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  %408 = load double, double* %407, align 8
  %409 = call i32 @hb_value_double(double %408)
  %410 = call i32 @hb_dict_set(i32* %406, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %409)
  %411 = load i32*, i32** %8, align 8
  %412 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 1
  %413 = load double, double* %412, align 8
  %414 = call i32 @hb_value_double(double %413)
  %415 = call i32 @hb_dict_set(i32* %411, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %414)
  %416 = load i32*, i32** %8, align 8
  %417 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @hb_value_int(i32 %418)
  %420 = call i32 @hb_dict_set(i32* %416, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %419)
  %421 = load i32*, i32** %8, align 8
  %422 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @hb_value_int(i32 %423)
  %425 = call i32 @hb_dict_set(i32* %421, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 %424)
  %426 = load i32*, i32** %8, align 8
  %427 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @hb_value_int(i32 %428)
  %430 = call i32 @hb_dict_set(i32* %426, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %429)
  %431 = load i32*, i32** %8, align 8
  %432 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @hb_value_int(i32 %433)
  %435 = call i32 @hb_dict_set(i32* %431, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %434)
  br label %446

436:                                              ; preds = %37
  %437 = load i8*, i8** %5, align 8
  %438 = call i32* @hb_parse_filter_settings(i8* %437)
  store i32* %438, i32** %8, align 8
  %439 = load i8*, i8** %6, align 8
  %440 = icmp ne i8* %439, null
  br i1 %440, label %441, label %445

441:                                              ; preds = %436
  %442 = load i32, i32* @stderr, align 4
  %443 = load i8*, i8** %6, align 8
  %444 = call i32 @fprintf(i32 %442, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.25, i64 0, i64 0), i8* %443)
  br label %445

445:                                              ; preds = %441, %436
  br label %446

446:                                              ; preds = %445, %374
  %447 = load i32*, i32** %8, align 8
  store i32* %447, i32** %4, align 8
  br label %448

448:                                              ; preds = %446, %364, %22, %17
  %449 = load i32*, i32** %4, align 8
  ret i32* %449
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @hb_parse_filter_settings(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_double(double) #1

declare dso_local i32 @hb_value_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
