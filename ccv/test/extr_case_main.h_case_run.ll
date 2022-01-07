; ModuleID = '/home/carl/AnghaBench/ccv/test/extr_case_main.h_case_run.c'
source_filename = "/home/carl/AnghaBench/ccv/test/extr_case_main.h_case_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i8*, i32 (i8*, i32*)* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"\1B[0;34m[%d/%d]\1B[0;0m \1B[1;33m[RUN]\1B[0;0m \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"[%d/%d] [RUN] %s ...\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\0D\1B[0;34m[%d/%d]\1B[0;0m \1B[1;32m[PASS]\1B[0;0m \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"    \0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\0D[%d/%d] [PASS] %s    \0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\0A\1B[0;34m[%d/%d]\1B[0;0m \1B[1;32m[SKIP]\1B[0;0m \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"\0A[%d/%d] [SKIP] %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\0A\1B[0;34m[%d/%d]\1B[0;0m \1B[1;31m[FAIL]\1B[0;0m \00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"\0A[%d/%d] [FAIL] %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32, i32, i32*, i32*, i32*)* @case_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @case_run(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %7
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = call i64 @strcmp(i64* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @chdir(i64* %37)
  br label %39

39:                                               ; preds = %34, %28, %21, %7
  store i32 0, i32* %15, align 4
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @fileno(i32 %40)
  %42 = call i64 @isatty(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %11, align 4
  %48 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @case_print_hi(i8* %55, i8* %56)
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  br label %79

67:                                               ; preds = %39
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %70, i8* %73)
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %67, %44
  %80 = load i32, i32* @stdout, align 4
  %81 = call i32 @fflush(i32 %80)
  store i32 0, i32* %16, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 %84(i8* %87, i32* %16)
  %89 = load i32, i32* %16, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %79
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %100, %91
  %96 = load i32, i32* %15, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %15, align 4
  br label %95

103:                                              ; preds = %95
  %104 = load i32, i32* @stdout, align 4
  %105 = call i32 @fileno(i32 %104)
  %106 = call i64 @isatty(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* %11, align 4
  %112 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = call i64 @case_print_hi(i8* %115, i8* %116)
  %118 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %127

119:                                              ; preds = %103
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %121, i32 %122, i8* %125)
  br label %127

127:                                              ; preds = %119, %108
  br label %188

128:                                              ; preds = %79
  %129 = load i32, i32* %16, align 4
  %130 = icmp eq i32 %129, -2
  br i1 %130, label %131, label %159

131:                                              ; preds = %128
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @stdout, align 4
  %136 = call i32 @fileno(i32 %135)
  %137 = call i64 @isatty(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %131
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* %11, align 4
  %143 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = call i64 @case_print_hi(i8* %146, i8* %147)
  %149 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %158

150:                                              ; preds = %131
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %152, i32 %153, i8* %156)
  br label %158

158:                                              ; preds = %150, %139
  br label %187

159:                                              ; preds = %128
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* @stdout, align 4
  %164 = call i32 @fileno(i32 %163)
  %165 = call i64 @isatty(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %159
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  %170 = load i32, i32* %11, align 4
  %171 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = call i64 @case_print_hi(i8* %174, i8* %175)
  %177 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %186

178:                                              ; preds = %159
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %180, i32 %181, i8* %184)
  br label %186

186:                                              ; preds = %178, %167
  br label %187

187:                                              ; preds = %186, %158
  br label %188

188:                                              ; preds = %187, %127
  ret void
}

declare dso_local i64 @strcmp(i64*, i8*) #1

declare dso_local i32 @chdir(i64*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i64 @printf(i8*, ...) #1

declare dso_local i64 @case_print_hi(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
