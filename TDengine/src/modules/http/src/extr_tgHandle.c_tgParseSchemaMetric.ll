; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgParseSchemaMetric.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgParseSchemaMetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i8**, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i64, i32* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@cJSON_String = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"tbname\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@TSDB_MAX_COLUMNS = common dso_local global i32 0, align 4
@TSDB_METER_NAME_LEN = common dso_local global i32 0, align 4
@tgSchemas = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tgParseSchemaMetric(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %14 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  store i32 1, i32* %4, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = call %struct.TYPE_11__* @cJSON_GetObjectItem(%struct.TYPE_11__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = icmp eq %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %172

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @cJSON_String, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %172

27:                                               ; preds = %20
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %172

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @strlen(i32* %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %172

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i8* @calloc(i32 %44, i32 1)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @strcpy(i8* %48, i32* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = call %struct.TYPE_11__* @cJSON_GetObjectItem(%struct.TYPE_11__* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %7, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = icmp eq %struct.TYPE_11__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %172

58:                                               ; preds = %42
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @cJSON_String, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %172

65:                                               ; preds = %58
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %172

71:                                               ; preds = %65
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @strlen(i32* %74)
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %172

80:                                               ; preds = %71
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i8* @calloc(i32 %82, i32 1)
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @strcpy(i8* %86, i32* %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %92 = call %struct.TYPE_11__* @cJSON_GetObjectItem(%struct.TYPE_11__* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %9, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = icmp eq %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %172

96:                                               ; preds = %80
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = call i32 @cJSON_GetArraySize(%struct.TYPE_11__* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @TSDB_MAX_COLUMNS, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %96
  br label %172

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %171

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = trunc i64 %111 to i32
  %113 = call i8* @calloc(i32 40, i32 %112)
  %114 = bitcast i8* %113 to i8**
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  store i8** %114, i8*** %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %167, %109
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %170

122:                                              ; preds = %118
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call %struct.TYPE_11__* @cJSON_GetArrayItem(%struct.TYPE_11__* %123, i32 %124)
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %12, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %127 = icmp eq %struct.TYPE_11__* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %172

129:                                              ; preds = %122
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %172

135:                                              ; preds = %129
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @strlen(i32* %138)
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @TSDB_METER_NAME_LEN, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %135
  store i32 0, i32* %4, align 4
  br label %172

148:                                              ; preds = %143
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i8* @calloc(i32 %150, i32 1)
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  store i8* %151, i8** %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @strcpy(i8* %162, i32* %165)
  br label %167

167:                                              ; preds = %148
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %118

170:                                              ; preds = %118
  br label %171

171:                                              ; preds = %170, %106
  br label %172

172:                                              ; preds = %171, %147, %134, %128, %105, %95, %79, %70, %64, %57, %41, %32, %26, %19
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tgSchemas, i32 0, i32 1), align 8
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tgSchemas, i32 0, i32 0), align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tgSchemas, i32 0, i32 0), align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %179
  %181 = bitcast %struct.TYPE_12__* %180 to i8*
  %182 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 8 %182, i64 40, i1 false)
  br label %185

183:                                              ; preds = %172
  %184 = call i32 @tgFreeSchema(%struct.TYPE_12__* %3)
  br label %185

185:                                              ; preds = %183, %175
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_11__* @cJSON_GetObjectItem(%struct.TYPE_11__*, i8*) #2

declare dso_local i64 @strlen(i32*) #2

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i32 @strcpy(i8*, i32*) #2

declare dso_local i32 @cJSON_GetArraySize(%struct.TYPE_11__*) #2

declare dso_local %struct.TYPE_11__* @cJSON_GetArrayItem(%struct.TYPE_11__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tgFreeSchema(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
