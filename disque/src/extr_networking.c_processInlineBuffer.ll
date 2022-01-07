; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_processInlineBuffer.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_processInlineBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8**, i64 }

@PROTO_INLINE_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Protocol error: too big inline request\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Protocol error: unbalanced quotes in request\00", align 1
@OBJ_STRING = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processInlineBuffer(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 10)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @sdslen(i8* %19)
  %21 = load i64, i64* @PROTO_INLINE_MAX_SIZE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = call i32 @addReplyError(%struct.TYPE_5__* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = call i32 @setProtocolError(%struct.TYPE_5__* %26, i32 0)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load i32, i32* @C_ERR, align 4
  store i32 %29, i32* %2, align 4
  br label %145

30:                                               ; preds = %1
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %45, %39, %33, %30
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %49 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  store i64 %55, i64* %9, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i8* @sdsnewlen(i8* %58, i64 %59)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i8** @sdssplitargs(i8* %61, i32* %5)
  store i8** %62, i8*** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @sdsfree(i8* %63)
  %65 = load i8**, i8*** %7, align 8
  %66 = icmp eq i8** %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %48
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = call i32 @addReplyError(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = call i32 @setProtocolError(%struct.TYPE_5__* %70, i32 0)
  %72 = load i32, i32* @C_ERR, align 4
  store i32 %72, i32* %2, align 4
  br label %145

73:                                               ; preds = %48
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 2
  %79 = call i32 @sdsrange(i8* %76, i64 %78, i32 -1)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i8**, i8*** %86, align 8
  %88 = call i32 @zfree(i8** %87)
  br label %89

89:                                               ; preds = %84, %73
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 8, %91
  %93 = trunc i64 %92 to i32
  %94 = call i8** @zmalloc(i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i8** %94, i8*** %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %138, %89
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %141

103:                                              ; preds = %99
  %104 = load i8**, i8*** %7, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @sdslen(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %103
  %112 = load i32, i32* @OBJ_STRING, align 4
  %113 = load i8**, i8*** %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @createObject(i32 %112, i8* %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i8**, i8*** %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  store i8* %118, i8** %125, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %127, align 8
  br label %137

130:                                              ; preds = %103
  %131 = load i8**, i8*** %7, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @sdsfree(i8* %135)
  br label %137

137:                                              ; preds = %130, %111
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %99

141:                                              ; preds = %99
  %142 = load i8**, i8*** %7, align 8
  %143 = call i32 @zfree(i8** %142)
  %144 = load i32, i32* @C_OK, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %141, %67, %28
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @setProtocolError(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @sdsnewlen(i8*, i64) #1

declare dso_local i8** @sdssplitargs(i8*, i32*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @sdsrange(i8*, i64, i32) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i8** @zmalloc(i32) #1

declare dso_local i8* @createObject(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
