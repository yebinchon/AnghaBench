; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_serialize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid separator(s) found.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@AV_OPT_TYPE_CONST = common dso_local global i64 0, align 8
@AV_OPT_SERIALIZE_OPT_FLAGS_EXACT = common dso_local global i32 0, align 4
@AV_OPT_SERIALIZE_SKIP_DEFAULTS = common dso_local global i32 0, align 4
@AV_ESCAPE_MODE_BACKSLASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_opt_serialize(i8* %0, i32 %1, i32 %2, i8** %3, i8 signext %4, i8 signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [3 x i8], align 1
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i8 %4, i8* %12, align 1
  store i8 %5, i8* %13, align 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  store i32 0, i32* %18, align 4
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %19, i64 0, i64 0
  %21 = load i8, i8* %13, align 1
  store i8 %21, i8* %20, align 1
  %22 = getelementptr inbounds i8, i8* %20, i64 1
  %23 = load i8, i8* %12, align 1
  store i8 %23, i8* %22, align 1
  %24 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 0, i8* %24, align 1
  %25 = load i8, i8* %13, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %6
  %29 = load i8, i8* %12, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = load i8, i8* %13, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* %12, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load i8, i8* %13, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 92
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i8, i8* %12, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %52

46:                                               ; preds = %42, %38, %32, %28, %6
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 @av_log(i8* %47, i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %7, align 4
  br label %146

52:                                               ; preds = %42
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8**, i8*** %11, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %7, align 4
  br label %146

61:                                               ; preds = %55
  %62 = load i8**, i8*** %11, align 8
  store i8* null, i8** %62, align 8
  %63 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %64 = call i32 @av_bprint_init(i32* %16, i32 64, i32 %63)
  br label %65

65:                                               ; preds = %142, %109, %97, %88, %76, %61
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %68 = call %struct.TYPE_5__* @av_opt_next(i8* %66, %struct.TYPE_5__* %67)
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %14, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  br i1 %69, label %70, label %143

70:                                               ; preds = %65
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AV_OPT_TYPE_CONST, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %65

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @AV_OPT_SERIALIZE_OPT_FLAGS_EXACT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %65

89:                                               ; preds = %82, %77
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %65

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @AV_OPT_SERIALIZE_SKIP_DEFAULTS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %107 = call i64 @av_opt_is_set_to_default(i8* %105, %struct.TYPE_5__* %106)
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %65

110:                                              ; preds = %104, %99
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @av_opt_get(i8* %111, i32* %114, i32 0, i32** %15)
  store i32 %115, i32* %17, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = call i32 @av_bprint_finalize(i32* %16, i8** null)
  %119 = load i32, i32* %17, align 4
  store i32 %119, i32* %7, align 4
  br label %146

120:                                              ; preds = %110
  %121 = load i32*, i32** %15, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %142

123:                                              ; preds = %120
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %18, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 @av_bprint_append_data(i32* %16, i8* %13, i32 1)
  br label %129

129:                                              ; preds = %127, %123
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds [3 x i8], [3 x i8]* %19, i64 0, i64 0
  %134 = load i32, i32* @AV_ESCAPE_MODE_BACKSLASH, align 4
  %135 = call i32 @av_bprint_escape(i32* %16, i32* %132, i8* %133, i32 %134, i32 0)
  %136 = call i32 @av_bprint_append_data(i32* %16, i8* %12, i32 1)
  %137 = load i32*, i32** %15, align 8
  %138 = getelementptr inbounds [3 x i8], [3 x i8]* %19, i64 0, i64 0
  %139 = load i32, i32* @AV_ESCAPE_MODE_BACKSLASH, align 4
  %140 = call i32 @av_bprint_escape(i32* %16, i32* %137, i8* %138, i32 %139, i32 0)
  %141 = call i32 @av_freep(i32** %15)
  br label %142

142:                                              ; preds = %129, %120
  br label %65

143:                                              ; preds = %65
  %144 = load i8**, i8*** %11, align 8
  %145 = call i32 @av_bprint_finalize(i32* %16, i8** %144)
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %143, %117, %58, %46
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @av_opt_next(i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @av_opt_is_set_to_default(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @av_opt_get(i8*, i32*, i32, i32**) #1

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #1

declare dso_local i32 @av_bprint_append_data(i32*, i8*, i32) #1

declare dso_local i32 @av_bprint_escape(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
