; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_generate_unsharp_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_generate_unsharp_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ultralight\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"strong\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"stronger\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"verystrong\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ultrafine\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fine\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"coarse\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"verycoarse\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Unrecognized unsharp tune (%s).\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"y-strength\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"y-size\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"cb-strength\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"cb-size\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"Custom unsharp parameters specified; ignoring unsharp tune (%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*)* @generate_unsharp_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_unsharp_settings(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x double], align 16
  %10 = alloca [2 x i32], align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %379

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @hb_parse_filter_settings(i8* %19)
  store i32* %20, i32** %4, align 8
  br label %379

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcasecmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %367, label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %21
  %46 = load i8*, i8** %6, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %96, label %52

52:                                               ; preds = %48, %45
  %53 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 2.500000e-01, double* %53, align 8
  %54 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 2.500000e-01, double* %54, align 16
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 7, i32* %55, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 7, i32* %56, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strcasecmp(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 5.000000e-02, double* %61, align 8
  %62 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.000000e-02, double* %62, align 16
  br label %95

63:                                               ; preds = %52
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @strcasecmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.500000e-01, double* %68, align 8
  %69 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.500000e-01, double* %69, align 16
  br label %94

70:                                               ; preds = %63
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strcasecmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 5.000000e-01, double* %75, align 8
  %76 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.000000e-01, double* %76, align 16
  br label %93

77:                                               ; preds = %70
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @strcasecmp(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 8.000000e-01, double* %82, align 8
  %83 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 8.000000e-01, double* %83, align 16
  br label %92

84:                                               ; preds = %77
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @strcasecmp(i8* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.200000e+00, double* %89, align 8
  %90 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.200000e+00, double* %90, align 16
  br label %91

91:                                               ; preds = %88, %84
  br label %92

92:                                               ; preds = %91, %81
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94, %60
  br label %345

96:                                               ; preds = %48
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @strcasecmp(i8* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %144, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 4.000000e-01, double* %101, align 16
  %102 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 2.500000e-01, double* %102, align 8
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 3, i32* %103, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 3, i32* %104, align 4
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @strcasecmp(i8* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.500000e-01, double* %109, align 16
  %110 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.000000e-01, double* %110, align 8
  br label %143

111:                                              ; preds = %100
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @strcasecmp(i8* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 2.500000e-01, double* %116, align 16
  %117 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.500000e-01, double* %117, align 8
  br label %142

118:                                              ; preds = %111
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @strcasecmp(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 8.000000e-01, double* %123, align 16
  %124 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 5.000000e-01, double* %124, align 8
  br label %141

125:                                              ; preds = %118
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @strcasecmp(i8* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.200000e+00, double* %130, align 16
  %131 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 7.500000e-01, double* %131, align 8
  br label %140

132:                                              ; preds = %125
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 @strcasecmp(i8* %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.500000e+00, double* %137, align 16
  %138 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 9.000000e-01, double* %138, align 8
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139, %129
  br label %141

141:                                              ; preds = %140, %122
  br label %142

142:                                              ; preds = %141, %115
  br label %143

143:                                              ; preds = %142, %108
  br label %344

144:                                              ; preds = %96
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @strcasecmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %192, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 2.750000e-01, double* %149, align 16
  %150 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.650000e-01, double* %150, align 8
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 7, i32* %151, align 4
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 5, i32* %152, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 @strcasecmp(i8* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %148
  %157 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.500000e-02, double* %157, align 16
  %158 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.300000e-02, double* %158, align 8
  br label %191

159:                                              ; preds = %148
  %160 = load i8*, i8** %5, align 8
  %161 = call i32 @strcasecmp(i8* %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.650000e-01, double* %164, align 16
  %165 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.000000e-01, double* %165, align 8
  br label %190

166:                                              ; preds = %159
  %167 = load i8*, i8** %5, align 8
  %168 = call i32 @strcasecmp(i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.500000e-01, double* %171, align 16
  %172 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.300000e-01, double* %172, align 8
  br label %189

173:                                              ; preds = %166
  %174 = load i8*, i8** %5, align 8
  %175 = call i32 @strcasecmp(i8* %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 9.000000e-01, double* %178, align 16
  %179 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.000000e-01, double* %179, align 8
  br label %188

180:                                              ; preds = %173
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 @strcasecmp(i8* %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.350000e+00, double* %185, align 16
  %186 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 9.000000e-01, double* %186, align 8
  br label %187

187:                                              ; preds = %184, %180
  br label %188

188:                                              ; preds = %187, %177
  br label %189

189:                                              ; preds = %188, %170
  br label %190

190:                                              ; preds = %189, %163
  br label %191

191:                                              ; preds = %190, %156
  br label %343

192:                                              ; preds = %144
  %193 = load i8*, i8** %6, align 8
  %194 = call i32 @strcasecmp(i8* %193, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %240, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 2.750000e-01, double* %197, align 16
  %198 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.650000e-01, double* %198, align 8
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 9, i32* %199, align 4
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 7, i32* %200, align 4
  %201 = load i8*, i8** %5, align 8
  %202 = call i32 @strcasecmp(i8* %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %196
  %205 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.500000e-02, double* %205, align 16
  %206 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.300000e-02, double* %206, align 8
  br label %239

207:                                              ; preds = %196
  %208 = load i8*, i8** %5, align 8
  %209 = call i32 @strcasecmp(i8* %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.650000e-01, double* %212, align 16
  %213 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.000000e-01, double* %213, align 8
  br label %238

214:                                              ; preds = %207
  %215 = load i8*, i8** %5, align 8
  %216 = call i32 @strcasecmp(i8* %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.500000e-01, double* %219, align 16
  %220 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.300000e-01, double* %220, align 8
  br label %237

221:                                              ; preds = %214
  %222 = load i8*, i8** %5, align 8
  %223 = call i32 @strcasecmp(i8* %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 9.000000e-01, double* %226, align 16
  %227 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.000000e-01, double* %227, align 8
  br label %236

228:                                              ; preds = %221
  %229 = load i8*, i8** %5, align 8
  %230 = call i32 @strcasecmp(i8* %229, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.350000e+00, double* %233, align 16
  %234 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 9.000000e-01, double* %234, align 8
  br label %235

235:                                              ; preds = %232, %228
  br label %236

236:                                              ; preds = %235, %225
  br label %237

237:                                              ; preds = %236, %218
  br label %238

238:                                              ; preds = %237, %211
  br label %239

239:                                              ; preds = %238, %204
  br label %342

240:                                              ; preds = %192
  %241 = load i8*, i8** %6, align 8
  %242 = call i32 @strcasecmp(i8* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %288, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 2.750000e-01, double* %245, align 16
  %246 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.650000e-01, double* %246, align 8
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 11, i32* %247, align 4
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 7, i32* %248, align 4
  %249 = load i8*, i8** %5, align 8
  %250 = call i32 @strcasecmp(i8* %249, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %244
  %253 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.500000e-02, double* %253, align 16
  %254 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.300000e-02, double* %254, align 8
  br label %287

255:                                              ; preds = %244
  %256 = load i8*, i8** %5, align 8
  %257 = call i32 @strcasecmp(i8* %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.650000e-01, double* %260, align 16
  %261 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.000000e-01, double* %261, align 8
  br label %286

262:                                              ; preds = %255
  %263 = load i8*, i8** %5, align 8
  %264 = call i32 @strcasecmp(i8* %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.500000e-01, double* %267, align 16
  %268 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.300000e-01, double* %268, align 8
  br label %285

269:                                              ; preds = %262
  %270 = load i8*, i8** %5, align 8
  %271 = call i32 @strcasecmp(i8* %270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 9.000000e-01, double* %274, align 16
  %275 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.000000e-01, double* %275, align 8
  br label %284

276:                                              ; preds = %269
  %277 = load i8*, i8** %5, align 8
  %278 = call i32 @strcasecmp(i8* %277, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.350000e+00, double* %281, align 16
  %282 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 9.000000e-01, double* %282, align 8
  br label %283

283:                                              ; preds = %280, %276
  br label %284

284:                                              ; preds = %283, %273
  br label %285

285:                                              ; preds = %284, %266
  br label %286

286:                                              ; preds = %285, %259
  br label %287

287:                                              ; preds = %286, %252
  br label %341

288:                                              ; preds = %240
  %289 = load i8*, i8** %6, align 8
  %290 = call i32 @strcasecmp(i8* %289, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %336, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 2.750000e-01, double* %293, align 16
  %294 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.650000e-01, double* %294, align 8
  %295 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 13, i32* %295, align 4
  %296 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 9, i32* %296, align 4
  %297 = load i8*, i8** %5, align 8
  %298 = call i32 @strcasecmp(i8* %297, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %292
  %301 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.500000e-02, double* %301, align 16
  %302 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.300000e-02, double* %302, align 8
  br label %335

303:                                              ; preds = %292
  %304 = load i8*, i8** %5, align 8
  %305 = call i32 @strcasecmp(i8* %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.650000e-01, double* %308, align 16
  %309 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 1.000000e-01, double* %309, align 8
  br label %334

310:                                              ; preds = %303
  %311 = load i8*, i8** %5, align 8
  %312 = call i32 @strcasecmp(i8* %311, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 5.500000e-01, double* %315, align 16
  %316 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 3.300000e-01, double* %316, align 8
  br label %333

317:                                              ; preds = %310
  %318 = load i8*, i8** %5, align 8
  %319 = call i32 @strcasecmp(i8* %318, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %317
  %322 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 9.000000e-01, double* %322, align 16
  %323 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 6.000000e-01, double* %323, align 8
  br label %332

324:                                              ; preds = %317
  %325 = load i8*, i8** %5, align 8
  %326 = call i32 @strcasecmp(i8* %325, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 1.350000e+00, double* %329, align 16
  %330 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 9.000000e-01, double* %330, align 8
  br label %331

331:                                              ; preds = %328, %324
  br label %332

332:                                              ; preds = %331, %321
  br label %333

333:                                              ; preds = %332, %314
  br label %334

334:                                              ; preds = %333, %307
  br label %335

335:                                              ; preds = %334, %300
  br label %340

336:                                              ; preds = %288
  %337 = load i32, i32* @stderr, align 4
  %338 = load i8*, i8** %6, align 8
  %339 = call i32 @fprintf(i32 %337, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %338)
  store i32* null, i32** %4, align 8
  br label %379

340:                                              ; preds = %335
  br label %341

341:                                              ; preds = %340, %287
  br label %342

342:                                              ; preds = %341, %239
  br label %343

343:                                              ; preds = %342, %191
  br label %344

344:                                              ; preds = %343, %143
  br label %345

345:                                              ; preds = %344, %95
  %346 = call i32* (...) @hb_dict_init()
  store i32* %346, i32** %8, align 8
  %347 = load i32*, i32** %8, align 8
  %348 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %349 = load double, double* %348, align 16
  %350 = call i32 @hb_value_double(double %349)
  %351 = call i32 @hb_dict_set(i32* %347, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %350)
  %352 = load i32*, i32** %8, align 8
  %353 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @hb_value_int(i32 %354)
  %356 = call i32 @hb_dict_set(i32* %352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %355)
  %357 = load i32*, i32** %8, align 8
  %358 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  %359 = load double, double* %358, align 8
  %360 = call i32 @hb_value_double(double %359)
  %361 = call i32 @hb_dict_set(i32* %357, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %360)
  %362 = load i32*, i32** %8, align 8
  %363 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @hb_value_int(i32 %364)
  %366 = call i32 @hb_dict_set(i32* %362, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %365)
  br label %377

367:                                              ; preds = %41
  %368 = load i8*, i8** %5, align 8
  %369 = call i32* @hb_parse_filter_settings(i8* %368)
  store i32* %369, i32** %8, align 8
  %370 = load i8*, i8** %6, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %376

372:                                              ; preds = %367
  %373 = load i32, i32* @stderr, align 4
  %374 = load i8*, i8** %6, align 8
  %375 = call i32 @fprintf(i32 %373, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i64 0, i64 0), i8* %374)
  br label %376

376:                                              ; preds = %372, %367
  br label %377

377:                                              ; preds = %376, %345
  %378 = load i32*, i32** %8, align 8
  store i32* %378, i32** %4, align 8
  br label %379

379:                                              ; preds = %377, %336, %18, %13
  %380 = load i32*, i32** %4, align 8
  ret i32* %380
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
