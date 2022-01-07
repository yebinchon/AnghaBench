; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_generate_chroma_smooth_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_generate_chroma_smooth_settings.c"
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
@.str.8 = private unnamed_addr constant [5 x i8] c"tiny\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"wide\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"verywide\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Unrecognized chroma smooth tune (%s).\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"cb-strength\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"cb-size\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"Custom chroma smooth parameters specified; ignoring chroma smooth tune (%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*)* @generate_chroma_smooth_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_chroma_smooth_settings(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %174

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @hb_parse_filter_settings(i8* %19)
  store i32* %20, i32** %4, align 8
  br label %174

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
  br i1 %44, label %162, label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %21
  %46 = load i8*, i8** %6, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %72, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strcasecmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %102, label %72

72:                                               ; preds = %68, %64, %60, %56, %52, %48, %45
  store double 1.200000e+00, double* %9, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strcasecmp(i8* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store double 4.000000e-01, double* %9, align 8
  br label %101

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @strcasecmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store double 8.000000e-01, double* %9, align 8
  br label %100

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strcasecmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store double 1.600000e+00, double* %9, align 8
  br label %99

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strcasecmp(i8* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store double 2.000000e+00, double* %9, align 8
  br label %98

92:                                               ; preds = %87
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @strcasecmp(i8* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store double 2.400000e+00, double* %9, align 8
  br label %97

97:                                               ; preds = %96, %92
  br label %98

98:                                               ; preds = %97, %91
  br label %99

99:                                               ; preds = %98, %86
  br label %100

100:                                              ; preds = %99, %81
  br label %101

101:                                              ; preds = %100, %76
  br label %106

102:                                              ; preds = %68
  %103 = load i32, i32* @stderr, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @fprintf(i32 %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %104)
  store i32* null, i32** %4, align 8
  br label %174

106:                                              ; preds = %101
  %107 = load i8*, i8** %6, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %106
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %109
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strcasecmp(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @strcasecmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119, %115, %109, %106
  store i32 7, i32* %10, align 4
  br label %152

124:                                              ; preds = %119
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @strcasecmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  store i32 3, i32* %10, align 4
  br label %151

129:                                              ; preds = %124
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @strcasecmp(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  store i32 5, i32* %10, align 4
  br label %150

134:                                              ; preds = %129
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  store i32 9, i32* %10, align 4
  br label %149

139:                                              ; preds = %134
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @strcasecmp(i8* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  store i32 11, i32* %10, align 4
  br label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @stderr, align 4
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @fprintf(i32 %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %146)
  store i32* null, i32** %4, align 8
  br label %174

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148, %138
  br label %150

150:                                              ; preds = %149, %133
  br label %151

151:                                              ; preds = %150, %128
  br label %152

152:                                              ; preds = %151, %123
  %153 = call i32* (...) @hb_dict_init()
  store i32* %153, i32** %8, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load double, double* %9, align 8
  %156 = call i32 @hb_value_double(double %155)
  %157 = call i32 @hb_dict_set(i32* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %156)
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @hb_value_int(i32 %159)
  %161 = call i32 @hb_dict_set(i32* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %160)
  br label %172

162:                                              ; preds = %41
  %163 = load i8*, i8** %5, align 8
  %164 = call i32* @hb_parse_filter_settings(i8* %163)
  store i32* %164, i32** %8, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @stderr, align 4
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @fprintf(i32 %168, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %167, %162
  br label %172

172:                                              ; preds = %171, %152
  %173 = load i32*, i32** %8, align 8
  store i32* %173, i32** %4, align 8
  br label %174

174:                                              ; preds = %172, %144, %102, %18, %13
  %175 = load i32*, i32** %4, align 8
  ret i32* %175
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
