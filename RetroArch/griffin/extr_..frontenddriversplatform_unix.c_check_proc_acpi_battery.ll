; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..frontenddriversplatform_unix.c_check_proc_acpi_battery.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..frontenddriversplatform_unix.c_check_proc_acpi_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_acpi_battery_path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"charging state\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"remaining capacity\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"design capacity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32*)* @check_proc_acpi_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_proc_acpi_battery(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %28 = load i8*, i8** @proc_acpi_battery_path, align 8
  store i8* %28, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %29, align 16
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @snprintf(i8* %30, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %35 = call i32 @filestream_exists(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %5
  br label %192

38:                                               ; preds = %5
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %40 = call i32 @filestream_read_file(i8* %39, i8** %15, i32* %13)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %192

43:                                               ; preds = %38
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @snprintf(i8* %44, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %49 = call i32 @filestream_read_file(i8* %48, i8** %16, i32* %13)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %192

52:                                               ; preds = %43
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8* %54, i8** %14, align 8
  br label %55

55:                                               ; preds = %105, %52
  %56 = call i64 @make_proc_acpi_key_val(i8** %14, i8** %17, i8** %18)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %55
  %59 = load i8*, i8** %17, align 8
  %60 = call i64 @string_is_equal(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i8*, i8** %18, align 8
  %64 = call i64 @string_is_equal(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32*, i32** %7, align 8
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %62
  br label %105

69:                                               ; preds = %58
  %70 = load i8*, i8** %17, align 8
  %71 = call i64 @string_is_equal(i8* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i8*, i8** %18, align 8
  %75 = call i64 @string_is_equal(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* %19, align 4
  br label %85

78:                                               ; preds = %73
  %79 = load i8*, i8** %18, align 8
  %80 = call i32 @djb2_calculate(i8* %79)
  store i32 %80, i32* %25, align 4
  %81 = load i32, i32* %25, align 4
  switch i32 %81, label %83 [
    i32 128, label %82
  ]

82:                                               ; preds = %78
  store i32 1, i32* %19, align 4
  br label %84

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %82
  br label %85

85:                                               ; preds = %84, %77
  br label %104

86:                                               ; preds = %69
  %87 = load i8*, i8** %17, align 8
  %88 = call i64 @string_is_equal(i8* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  store i8* null, i8** %26, align 8
  %91 = load i8*, i8** %26, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i8*, i8** %26, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 32
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i8*, i8** %18, align 8
  %100 = call i64 @strtol(i8* %99, i8** %26, i32 10)
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %22, align 4
  br label %102

102:                                              ; preds = %98, %93, %90
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %85
  br label %105

105:                                              ; preds = %104, %68
  br label %55

106:                                              ; preds = %55
  %107 = load i8*, i8** %16, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  store i8* %108, i8** %14, align 8
  br label %109

109:                                              ; preds = %129, %106
  %110 = call i64 @make_proc_acpi_key_val(i8** %14, i8** %17, i8** %18)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %109
  store i8* null, i8** %27, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = call i64 @string_is_equal(i8* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i8*, i8** %27, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i8*, i8** %27, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i8*, i8** %18, align 8
  %126 = call i64 @strtol(i8* %125, i8** %27, i32 10)
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %21, align 4
  br label %128

128:                                              ; preds = %124, %119, %116
  br label %129

129:                                              ; preds = %128, %112
  br label %109

130:                                              ; preds = %109
  %131 = load i32, i32* %21, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %130
  %134 = load i32, i32* %22, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i32, i32* %22, align 4
  %138 = sitofp i32 %137 to float
  %139 = load i32, i32* %21, align 4
  %140 = sitofp i32 %139 to float
  %141 = fdiv float %138, %140
  %142 = fmul float %141, 1.000000e+02
  %143 = fptosi float %142 to i32
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %24, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  store i32 0, i32* %24, align 4
  br label %147

147:                                              ; preds = %146, %136
  %148 = load i32, i32* %24, align 4
  %149 = icmp sgt i32 %148, 100
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 100, i32* %24, align 4
  br label %151

151:                                              ; preds = %150, %147
  br label %152

152:                                              ; preds = %151, %133, %130
  %153 = load i32, i32* %23, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %152
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %155
  %160 = load i32, i32* %24, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 1, i32* %20, align 4
  br label %167

167:                                              ; preds = %166, %162, %159
  %168 = load i32, i32* %24, align 4
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %168, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 1, i32* %20, align 4
  br label %173

173:                                              ; preds = %172, %167
  br label %181

174:                                              ; preds = %155, %152
  %175 = load i32, i32* %23, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %175, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i32 1, i32* %20, align 4
  br label %180

180:                                              ; preds = %179, %174
  br label %181

181:                                              ; preds = %180, %173
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i32, i32* %23, align 4
  %186 = load i32*, i32** %9, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* %24, align 4
  %188 = load i32*, i32** %10, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* %19, align 4
  %190 = load i32*, i32** %8, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %184, %181
  br label %192

192:                                              ; preds = %191, %51, %42, %37
  %193 = load i8*, i8** %16, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i8*, i8** %16, align 8
  %197 = call i32 @free(i8* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i8*, i8** %15, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i8*, i8** %15, align 8
  %203 = call i32 @free(i8* %202)
  br label %204

204:                                              ; preds = %201, %198
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @filestream_exists(i8*) #1

declare dso_local i32 @filestream_read_file(i8*, i8**, i32*) #1

declare dso_local i64 @make_proc_acpi_key_val(i8**, i8**, i8**) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @djb2_calculate(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
