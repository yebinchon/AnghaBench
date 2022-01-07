; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdemo/extr_taosdemo.c_generateData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdemo/extr_taosdemo.c_generateData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"(%ld\00", align 1
@MAX_NUM_DATATYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tinyint\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"smallint\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"bigint\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c", %ld\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c", %10.4f\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c", %20.8f\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generateData(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @MAX_DATA_SIZE, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %11, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %42, %5
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @MAX_NUM_DATATYPE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8**, i8*** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %28

45:                                               ; preds = %40, %28
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %216, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %219

50:                                               ; preds = %46
  %51 = load i8**, i8*** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = srem i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %51, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 (...) @rand()
  %63 = srem i32 %62, 128
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** %11, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %11, align 8
  br label %215

68:                                               ; preds = %50
  %69 = load i8**, i8*** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = srem i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %69, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcasecmp(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 (...) @rand()
  %81 = srem i32 %80, 32767
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i8*, i8** %11, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %11, align 8
  br label %214

86:                                               ; preds = %68
  %87 = load i8**, i8*** %7, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = srem i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %87, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcasecmp(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 (...) @rand()
  %99 = srem i32 %98, 10
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** %11, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %11, align 8
  br label %213

104:                                              ; preds = %86
  %105 = load i8**, i8*** %7, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %12, align 4
  %108 = srem i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %105, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strcasecmp(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %104
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 (...) @rand()
  %117 = sext i32 %116 to i64
  %118 = srem i64 %117, 2147483648
  %119 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %118)
  %120 = load i8*, i8** %11, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %11, align 8
  br label %212

123:                                              ; preds = %104
  %124 = load i8**, i8*** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = srem i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %124, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @strcasecmp(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %123
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 (...) @rand()
  %136 = sdiv i32 %135, 1000
  %137 = sitofp i32 %136 to float
  %138 = fpext float %137 to double
  %139 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), double %138)
  %140 = load i8*, i8** %11, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %11, align 8
  br label %211

143:                                              ; preds = %123
  %144 = load i8**, i8*** %7, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = srem i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %144, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strcasecmp(i8* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %143
  %154 = call i32 (...) @rand()
  %155 = sdiv i32 %154, 1000000
  %156 = sitofp i32 %155 to double
  store double %156, double* %14, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load double, double* %14, align 8
  %159 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), double %158)
  %160 = load i8*, i8** %11, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %11, align 8
  br label %210

163:                                              ; preds = %143
  %164 = load i8**, i8*** %7, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %12, align 4
  %167 = srem i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %164, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @strcasecmp(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %163
  %174 = call i32 (...) @rand()
  %175 = and i32 %174, 1
  store i32 %175, i32* %15, align 4
  %176 = load i8*, i8** %11, align 8
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %180)
  %182 = load i8*, i8** %11, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %11, align 8
  br label %209

185:                                              ; preds = %163
  %186 = load i8**, i8*** %7, align 8
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %12, align 4
  %189 = srem i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %186, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @strcasecmp(i8* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %185
  %196 = load i32, i32* %10, align 4
  %197 = zext i32 %196 to i64
  %198 = call i8* @llvm.stacksave()
  store i8* %198, i8** %16, align 8
  %199 = alloca i8, i64 %197, align 16
  store i64 %197, i64* %17, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @rand_string(i8* %199, i32 %200)
  %202 = load i8*, i8** %11, align 8
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %199)
  %204 = load i8*, i8** %11, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %11, align 8
  %207 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %207)
  br label %208

208:                                              ; preds = %195, %185
  br label %209

209:                                              ; preds = %208, %173
  br label %210

210:                                              ; preds = %209, %153
  br label %211

211:                                              ; preds = %210, %133
  br label %212

212:                                              ; preds = %211, %114
  br label %213

213:                                              ; preds = %212, %96
  br label %214

214:                                              ; preds = %213, %78
  br label %215

215:                                              ; preds = %214, %60
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  br label %46

219:                                              ; preds = %46
  %220 = load i8*, i8** %11, align 8
  %221 = call i32 (i8*, i8*, ...) @sprintf(i8* %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %222 = load i8*, i8** %11, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %11, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @rand(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rand_string(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
