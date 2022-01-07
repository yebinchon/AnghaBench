; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_vocab_count.c_get_counts.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_vocab_count.c_get_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8*, i64 }

@MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"BUILDING VOCABULARY\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Processed %lld tokens.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<unk>\00", align 1
@.str.3 = private unnamed_addr constant [136 x i8] c"\0AError, <unk> vector found in corpus.\0APlease remove <unk>s from your corpus (e.g. cat text8 | sed -e 's/<unk>/<raw_unk>/g' > text8.new)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\1B[11G%lld tokens.\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\1B[0GProcessed %lld tokens.\0A\00", align 1
@TSIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"Counted %lld unique words.\0A\00", align 1
@max_vocab = common dso_local global i64 0, align 8
@CompareVocab = common dso_local global i32 0, align 4
@CompareVocabTie = common dso_local global i32 0, align 4
@min_count = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"Truncating vocabulary at min count %lld.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Truncating vocabulary at size %lld.\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Using vocabulary of size %lld.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_counts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 12500, i64* %4, align 8
  %13 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = call %struct.TYPE_9__** (...) @inithashtable()
  store %struct.TYPE_9__** %18, %struct.TYPE_9__*** %7, align 8
  %19 = load i32*, i32** @stdin, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @verbose, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %0
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64, i64* %2, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %24, %0
  br label %29

29:                                               ; preds = %61, %39, %28
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @feof(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @get_word(i8* %17, i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %29

40:                                               ; preds = %34
  %41 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %204

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %48 = call i32 @hashinsert(%struct.TYPE_9__** %47, i8* %17)
  %49 = load i64, i64* %2, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %2, align 8
  %51 = srem i64 %50, 100000
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* @verbose, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = load i64, i64* %2, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %46
  br label %29

62:                                               ; preds = %29
  %63 = load i32, i32* @verbose, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = load i64, i64* %2, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i64, i64* %4, align 8
  %71 = mul i64 16, %70
  %72 = trunc i64 %71 to i32
  %73 = call %struct.TYPE_8__* @malloc(i32 %72)
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %9, align 8
  store i64 0, i64* %2, align 8
  br label %74

74:                                               ; preds = %120, %69
  %75 = load i64, i64* %2, align 8
  %76 = load i64, i64* @TSIZE, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %123

78:                                               ; preds = %74
  %79 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %80 = load i64, i64* %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %79, i64 %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %8, align 8
  br label %83

83:                                               ; preds = %115, %78
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = icmp ne %struct.TYPE_9__* %84, null
  br i1 %85, label %86, label %119

86:                                               ; preds = %83
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = load i64, i64* %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i8* %89, i8** %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i64 %96, i64* %100, align 8
  %101 = load i64, i64* %3, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %3, align 8
  %103 = load i64, i64* %3, align 8
  %104 = load i64, i64* %4, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %86
  %107 = load i64, i64* %4, align 8
  %108 = add nsw i64 %107, 2500
  store i64 %108, i64* %4, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %110 = load i64, i64* %4, align 8
  %111 = mul i64 16, %110
  %112 = trunc i64 %111 to i32
  %113 = call i64 @realloc(%struct.TYPE_8__* %109, i32 %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %9, align 8
  br label %115

115:                                              ; preds = %106, %86
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %8, align 8
  br label %83

119:                                              ; preds = %83
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %2, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %2, align 8
  br label %74

123:                                              ; preds = %74
  %124 = load i32, i32* @verbose, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* @stderr, align 4
  %128 = load i64, i64* %3, align 8
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %126, %123
  %131 = load i64, i64* @max_vocab, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i64, i64* @max_vocab, align 8
  %135 = load i64, i64* %3, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %139 = load i64, i64* %3, align 8
  %140 = load i32, i32* @CompareVocab, align 4
  %141 = call i32 @qsort(%struct.TYPE_8__* %138, i64 %139, i32 16, i32 %140)
  br label %144

142:                                              ; preds = %133, %130
  %143 = load i64, i64* %3, align 8
  store i64 %143, i64* @max_vocab, align 8
  br label %144

144:                                              ; preds = %142, %137
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %146 = load i64, i64* @max_vocab, align 8
  %147 = load i32, i32* @CompareVocabTie, align 4
  %148 = call i32 @qsort(%struct.TYPE_8__* %145, i64 %146, i32 16, i32 %147)
  store i64 0, i64* %2, align 8
  br label %149

149:                                              ; preds = %181, %144
  %150 = load i64, i64* %2, align 8
  %151 = load i64, i64* @max_vocab, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %149
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %155 = load i64, i64* %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @min_count, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  %162 = load i32, i32* @verbose, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* @stderr, align 4
  %166 = load i64, i64* @min_count, align 8
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %166)
  br label %168

168:                                              ; preds = %164, %161
  br label %184

169:                                              ; preds = %153
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %171 = load i64, i64* %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %176 = load i64, i64* %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %174, i64 %179)
  br label %181

181:                                              ; preds = %169
  %182 = load i64, i64* %2, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %2, align 8
  br label %149

184:                                              ; preds = %168, %149
  %185 = load i64, i64* %2, align 8
  %186 = load i64, i64* @max_vocab, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %184
  %189 = load i64, i64* @max_vocab, align 8
  %190 = load i64, i64* %3, align 8
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = load i32, i32* @verbose, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32, i32* @stderr, align 4
  %197 = load i64, i64* @max_vocab, align 8
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 %197)
  br label %199

199:                                              ; preds = %195, %192
  br label %200

200:                                              ; preds = %199, %188, %184
  %201 = load i32, i32* @stderr, align 4
  %202 = load i64, i64* %2, align 8
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 %202)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %204

204:                                              ; preds = %200, %43
  %205 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %1, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__** @inithashtable(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32 @get_word(i8*, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @hashinsert(%struct.TYPE_9__**, i8*) #2

declare dso_local %struct.TYPE_8__* @malloc(i32) #2

declare dso_local i64 @realloc(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @qsort(%struct.TYPE_8__*, i64, i32, i32) #2

declare dso_local i32 @printf(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
