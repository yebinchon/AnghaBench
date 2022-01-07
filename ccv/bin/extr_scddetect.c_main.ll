; ModuleID = '/home/carl/AnghaBench/ccv/bin/extr_scddetect.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/extr_scddetect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { double }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@CCV_IO_RGB_COLOR = common dso_local global i32 0, align 4
@CCV_IO_ANY_FILE = common dso_local global i32 0, align 4
@ccv_scd_default_params = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
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
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 3
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 (...) @ccv_enable_default_cache()
  store i32* null, i32** %7, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32* @ccv_scd_classifier_cascade_read(i8* %26)
  store i32* %27, i32** %8, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @CCV_IO_RGB_COLOR, align 4
  %32 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @ccv_read(i8* %30, i32** %7, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %90

37:                                               ; preds = %2
  %38 = call i32 (...) @get_current_time()
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ccv_scd_default_params, i32 0, i32 0), align 4
  %41 = call %struct.TYPE_15__* @ccv_scd_detect_objects(i32* %39, i32** %8, i32 1, i32 %40)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %10, align 8
  %42 = call i32 (...) @get_current_time()
  %43 = load i32, i32* %9, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %77, %37
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @ccv_array_get(%struct.TYPE_15__* %52, i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %11, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63, i32 %67, i32 %71, double %75)
  br label %77

77:                                               ; preds = %51
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %45

80:                                               ; preds = %45
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %87 = call i32 @ccv_array_free(%struct.TYPE_15__* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @ccv_matrix_free(i32* %88)
  br label %203

90:                                               ; preds = %2
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32* @fopen(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %94, i32** %12, align 8
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @chdir(i8* %100)
  br label %102

102:                                              ; preds = %97, %90
  %103 = load i32*, i32** %12, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %202

105:                                              ; preds = %102
  store i64 1024, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i64 @malloc(i64 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %14, align 8
  br label %109

109:                                              ; preds = %192, %105
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @getline(i8** %14, i64* %13, i32* %110)
  store i32 %111, i32* %15, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %197

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %128, %113
  %115 = load i32, i32* %15, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i64 @isspace(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %117, %114
  %127 = phi i1 [ false, %114 ], [ %125, %117 ]
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %15, align 4
  br label %114

131:                                              ; preds = %126
  %132 = load i8*, i8** %14, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  store i8 0, i8* %135, align 1
  store i32* null, i32** %7, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = load i32, i32* @CCV_IO_RGB_COLOR, align 4
  %138 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @ccv_read(i8* %136, i32** %7, i32 %139)
  %141 = load i32*, i32** %7, align 8
  %142 = icmp ne i32* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 bitcast (%struct.TYPE_13__* @ccv_scd_default_params to i8*), i64 4, i1 false)
  %146 = call i32 @ccv_size(i32 24, i32 24)
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call %struct.TYPE_15__* @ccv_scd_detect_objects(i32* %148, i32** %8, i32 1, i32 %150)
  store %struct.TYPE_15__* %151, %struct.TYPE_15__** %17, align 8
  %152 = load i8*, i8** %14, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %152, i32 %155)
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %189, %131
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %192

163:                                              ; preds = %157
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i64 @ccv_array_get(%struct.TYPE_15__* %164, i32 %165)
  %167 = inttoptr i64 %166 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %167, %struct.TYPE_14__** %18, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load double, double* %186, align 8
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %171, i32 %175, i32 %179, i32 %183, double %187)
  br label %189

189:                                              ; preds = %163
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %157

192:                                              ; preds = %157
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %194 = call i32 @ccv_array_free(%struct.TYPE_15__* %193)
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @ccv_matrix_free(i32* %195)
  br label %109

197:                                              ; preds = %109
  %198 = load i8*, i8** %14, align 8
  %199 = call i32 @free(i8* %198)
  %200 = load i32*, i32** %12, align 8
  %201 = call i32 @fclose(i32* %200)
  br label %202

202:                                              ; preds = %197, %102
  br label %203

203:                                              ; preds = %202, %80
  %204 = load i32*, i32** %8, align 8
  %205 = call i32 @ccv_scd_classifier_cascade_free(i32* %204)
  %206 = call i32 (...) @ccv_disable_cache()
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_enable_default_cache(...) #1

declare dso_local i32* @ccv_scd_classifier_cascade_read(i8*) #1

declare dso_local i32 @ccv_read(i8*, i32**, i32) #1

declare dso_local i32 @get_current_time(...) #1

declare dso_local %struct.TYPE_15__* @ccv_scd_detect_objects(i32*, i32**, i32, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_15__*) #1

declare dso_local i32 @ccv_matrix_free(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ccv_size(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ccv_scd_classifier_cascade_free(i32*) #1

declare dso_local i32 @ccv_disable_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
