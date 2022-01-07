; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_cooccur.c_merge_files.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_cooccur.c_merge_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@stdout = common dso_local global i32* null, align 8
@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Merging cooccurrence files: processed 0 lines.\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s_%04d.bin\00", align 1
@file_head = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to open file %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\1B[39G%lld lines.\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"\1B[0GMerging cooccurrence files: processed %lld lines.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_files(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca [200 x i8], align 16
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = call i8* @malloc(i32 %16)
  %18 = bitcast i8* %17 to i32**
  store i32** %18, i32*** %11, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @malloc(i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %7, align 8
  %25 = load i32*, i32** @stdout, align 8
  store i32* %25, i32** %12, align 8
  %26 = load i32, i32* @verbose, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %1
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %72, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  %37 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %38 = load i8*, i8** @file_head, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39)
  %41 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %42 = call i32* @fopen(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32**, i32*** %11, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* %42, i32** %46, align 8
  %47 = load i32**, i32*** %11, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = load i32, i32* @stderr, align 4
  %55 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  store i32 1, i32* %2, align 4
  br label %193

57:                                               ; preds = %36
  %58 = load i32**, i32*** %11, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @fread(%struct.TYPE_9__* %8, i32 4, i32 1, i32* %62)
  %64 = load i32, i32* %4, align 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @insert(%struct.TYPE_9__* %66, i32 %70, i32 %68)
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %32

75:                                               ; preds = %32
  %76 = load i32, i32* %3, align 4
  store i32 %76, i32* %5, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 0
  %79 = bitcast %struct.TYPE_9__* %9 to i8*
  %80 = bitcast %struct.TYPE_9__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 4, i1 false)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %4, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @delete(%struct.TYPE_9__* %85, i32 %86)
  %88 = load i32**, i32*** %11, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @fread(%struct.TYPE_9__* %8, i32 4, i32 1, i32* %92)
  %94 = load i32**, i32*** %11, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @feof(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %75
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %5, align 4
  br label %112

104:                                              ; preds = %75
  %105 = load i32, i32* %4, align 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = load i32, i32* %5, align 4
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @insert(%struct.TYPE_9__* %107, i32 %110, i32 %108)
  br label %112

112:                                              ; preds = %104, %101
  br label %113

113:                                              ; preds = %168, %112
  %114 = load i32, i32* %5, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %169

116:                                              ; preds = %113
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 0
  %119 = load i32*, i32** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @merge_write(i32 %121, %struct.TYPE_9__* %9, i32* %119)
  %123 = load i64, i64* %6, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = srem i64 %125, 100000
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %116
  %129 = load i32, i32* @verbose, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* @stderr, align 4
  %133 = load i64, i64* %6, align 8
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %116
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %4, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @delete(%struct.TYPE_9__* %141, i32 %142)
  %144 = load i32**, i32*** %11, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @fread(%struct.TYPE_9__* %8, i32 4, i32 1, i32* %148)
  %150 = load i32**, i32*** %11, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = call i64 @feof(i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %136
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %5, align 4
  br label %168

160:                                              ; preds = %136
  %161 = load i32, i32* %4, align 4
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %161, i32* %162, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = load i32, i32* %5, align 4
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @insert(%struct.TYPE_9__* %163, i32 %166, i32 %164)
  br label %168

168:                                              ; preds = %160, %157
  br label %113

169:                                              ; preds = %113
  %170 = load i32*, i32** %12, align 8
  %171 = call i32 @fwrite(%struct.TYPE_9__* %9, i32 4, i32 1, i32* %170)
  %172 = load i32, i32* @stderr, align 4
  %173 = load i64, i64* %6, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %6, align 8
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 %174)
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %187, %169
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %3, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %182 = load i8*, i8** @file_head, align 8
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @sprintf(i8* %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %182, i32 %183)
  %185 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %186 = call i32 @remove(i8* %185)
  br label %187

187:                                              ; preds = %180
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %176

190:                                              ; preds = %176
  %191 = load i32, i32* @stderr, align 4
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %190, %53
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @insert(%struct.TYPE_9__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @delete(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i64 @merge_write(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @fwrite(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
