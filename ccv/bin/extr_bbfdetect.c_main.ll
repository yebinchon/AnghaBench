; ModuleID = '/home/carl/AnghaBench/ccv/bin/extr_bbfdetect.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/extr_bbfdetect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { double }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@CCV_IO_GRAY = common dso_local global i32 0, align 4
@CCV_IO_ANY_FILE = common dso_local global i32 0, align 4
@ccv_bbf_default_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"total : %d in time %dms\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 3
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i32 (...) @ccv_enable_default_cache()
  store i32* null, i32** %7, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32* @ccv_bbf_read_classifier_cascade(i8* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @CCV_IO_GRAY, align 4
  %31 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @ccv_read(i8* %29, i32** %7, i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %89

36:                                               ; preds = %2
  %37 = call i32 (...) @get_current_time()
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @ccv_bbf_default_params, align 4
  %40 = call %struct.TYPE_11__* @ccv_bbf_detect_objects(i32* %38, i32** %8, i32 1, i32 %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %10, align 8
  %41 = call i32 (...) @get_current_time()
  %42 = load i32, i32* %9, align 4
  %43 = sub i32 %41, %42
  store i32 %43, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %76, %36
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @ccv_array_get(%struct.TYPE_11__* %51, i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %11, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load double, double* %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62, i32 %66, i32 %70, double %74)
  br label %76

76:                                               ; preds = %50
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %44

79:                                               ; preds = %44
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = call i32 @ccv_array_free(%struct.TYPE_11__* %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @ccv_matrix_free(i32* %87)
  br label %198

89:                                               ; preds = %2
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32* @fopen(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %93, i32** %12, align 8
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 3
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @chdir(i8* %99)
  br label %101

101:                                              ; preds = %96, %89
  %102 = load i32*, i32** %12, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %197

104:                                              ; preds = %101
  store i64 1024, i64* %13, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i64 @malloc(i64 %105)
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %14, align 8
  br label %108

108:                                              ; preds = %187, %104
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @getline(i8** %14, i64* %13, i32* %109)
  store i32 %110, i32* %15, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %192

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %127, %112
  %114 = load i32, i32* %15, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i8*, i8** %14, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = call i64 @isspace(i8 signext %122)
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %116, %113
  %126 = phi i1 [ false, %113 ], [ %124, %116 ]
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %15, align 4
  br label %113

130:                                              ; preds = %125
  %131 = load i8*, i8** %14, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 0, i8* %134, align 1
  store i32* null, i32** %7, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i32, i32* @CCV_IO_GRAY, align 4
  %137 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @ccv_read(i8* %135, i32** %7, i32 %138)
  %140 = load i32*, i32** %7, align 8
  %141 = icmp ne i32* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* @ccv_bbf_default_params, align 4
  %146 = call %struct.TYPE_11__* @ccv_bbf_detect_objects(i32* %144, i32** %8, i32 1, i32 %145)
  store %struct.TYPE_11__* %146, %struct.TYPE_11__** %16, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %147, i32 %150)
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %184, %130
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %187

158:                                              ; preds = %152
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i64 @ccv_array_get(%struct.TYPE_11__* %159, i32 %160)
  %162 = inttoptr i64 %161 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %162, %struct.TYPE_10__** %17, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load double, double* %181, align 8
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %166, i32 %170, i32 %174, i32 %178, double %182)
  br label %184

184:                                              ; preds = %158
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %152

187:                                              ; preds = %152
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %189 = call i32 @ccv_array_free(%struct.TYPE_11__* %188)
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @ccv_matrix_free(i32* %190)
  br label %108

192:                                              ; preds = %108
  %193 = load i8*, i8** %14, align 8
  %194 = call i32 @free(i8* %193)
  %195 = load i32*, i32** %12, align 8
  %196 = call i32 @fclose(i32* %195)
  br label %197

197:                                              ; preds = %192, %101
  br label %198

198:                                              ; preds = %197, %79
  %199 = load i32*, i32** %8, align 8
  %200 = call i32 @ccv_bbf_classifier_cascade_free(i32* %199)
  %201 = call i32 (...) @ccv_disable_cache()
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_enable_default_cache(...) #1

declare dso_local i32* @ccv_bbf_read_classifier_cascade(i8*) #1

declare dso_local i32 @ccv_read(i8*, i32**, i32) #1

declare dso_local i32 @get_current_time(...) #1

declare dso_local %struct.TYPE_11__* @ccv_bbf_detect_objects(i32*, i32**, i32, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_11__*) #1

declare dso_local i32 @ccv_matrix_free(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ccv_bbf_classifier_cascade_free(i32*) #1

declare dso_local i32 @ccv_disable_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
