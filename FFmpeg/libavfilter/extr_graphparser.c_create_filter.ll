; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_create_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_create_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"Parsed_%s_%d\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No such filter: '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Error creating filter '%s'\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Error initializing filter '%s'\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" with args '%s'\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_4__*, i32, i8*, i8*, i8*)* @create_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_filter(i32** %0, %struct.TYPE_4__* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [30 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 0
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @av_strlcpy(i8* %21, i8* %22, i32 30)
  store i32 0, i32* %20, align 4
  br label %24

24:                                               ; preds = %53, %6
  %25 = load i32, i32* %20, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load i32, i32* %20, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %20, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %11, align 8
  store i8* %50, i8** %16, align 8
  %51 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 0
  store i8* %51, i8** %17, align 8
  br label %56

52:                                               ; preds = %37, %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %20, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %20, align 4
  br label %24

56:                                               ; preds = %46, %24
  %57 = load i8*, i8** %16, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 0
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @snprintf(i8* %60, i32 30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %62)
  %64 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 0
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %11, align 8
  store i8* %65, i8** %17, align 8
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i8*, i8** %17, align 8
  %68 = call i32* @avfilter_get_by_name(i8* %67)
  store i32* %68, i32** %14, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %72, i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %7, align 4
  br label %162

78:                                               ; preds = %66
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = call i32* @avfilter_graph_alloc_filter(%struct.TYPE_4__* %79, i32* %80, i8* %81)
  %83 = load i32**, i32*** %8, align 8
  store i32* %82, i32** %83, align 8
  %84 = load i32**, i32*** %8, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %78
  %88 = load i8*, i8** %13, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %88, i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = call i32 @AVERROR(i32 %92)
  store i32 %93, i32* %7, align 4
  br label %162

94:                                               ; preds = %78
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %131, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %12, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @strstr(i8* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %131, label %105

105:                                              ; preds = %101, %98
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %131

110:                                              ; preds = %105
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i8*, i8** %12, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @av_asprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %114, i8* %117)
  store i8* %118, i8** %18, align 8
  %119 = load i8*, i8** %18, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = call i32 @AVERROR(i32 %122)
  store i32 %123, i32* %7, align 4
  br label %162

124:                                              ; preds = %113
  %125 = load i8*, i8** %18, align 8
  store i8* %125, i8** %12, align 8
  br label %130

126:                                              ; preds = %110
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %12, align 8
  br label %130

130:                                              ; preds = %126, %124
  br label %131

131:                                              ; preds = %130, %105, %101, %94
  %132 = load i32**, i32*** %8, align 8
  %133 = load i32*, i32** %132, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 @avfilter_init_str(i32* %133, i8* %134)
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %19, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %131
  %139 = load i8*, i8** %13, align 8
  %140 = load i32, i32* @AV_LOG_ERROR, align 4
  %141 = load i8*, i8** %17, align 8
  %142 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %139, i32 %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %141)
  %143 = load i8*, i8** %12, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load i8*, i8** %13, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %146, i32 %147, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %145, %138
  %151 = load i8*, i8** %13, align 8
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %151, i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %154 = load i32**, i32*** %8, align 8
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @avfilter_free(i32* %155)
  %157 = load i32**, i32*** %8, align 8
  store i32* null, i32** %157, align 8
  br label %158

158:                                              ; preds = %150, %131
  %159 = load i8*, i8** %18, align 8
  %160 = call i32 @av_free(i8* %159)
  %161 = load i32, i32* %19, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %158, %121, %87, %71
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32* @avfilter_get_by_name(i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @avfilter_graph_alloc_filter(%struct.TYPE_4__*, i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i8* @av_asprintf(i8*, i8*, i8*) #1

declare dso_local i32 @avfilter_init_str(i32*, i8*) #1

declare dso_local i32 @avfilter_free(i32*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
