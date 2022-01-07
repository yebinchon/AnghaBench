; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_easysrc.c_dumpeasysrc.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_easysrc.c_dumpeasysrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.curl_slist* }
%struct.curl_slist = type { i8*, %struct.curl_slist* }
%struct.TYPE_6__ = type { %struct.curl_slist* }
%struct.TYPE_7__ = type { %struct.curl_slist* }
%struct.TYPE_8__ = type { %struct.curl_slist* }
%struct.GlobalConfig = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@FOPEN_WRITETEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to open %s to write libcurl code!\0A\00", align 1
@srchead = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@easysrc_decl = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@easysrc_data = common dso_local global %struct.TYPE_6__* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@easysrc_code = common dso_local global %struct.TYPE_7__* null, align 8
@easysrc_clean = common dso_local global %struct.TYPE_8__* null, align 8
@srcend = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dumpeasysrc(%struct.GlobalConfig* %0) #0 {
  %2 = alloca %struct.GlobalConfig*, align 8
  %3 = alloca %struct.curl_slist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %2, align 8
  %9 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %10 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @FOPEN_WRITETEXT, align 4
  %19 = call i32* @fopen(i8* %17, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %6, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32*, i32** @stdout, align 8
  store i32* %22, i32** %5, align 8
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @warnf(%struct.GlobalConfig* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %166

30:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i8**, i8*** @srchead, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %31

45:                                               ; preds = %31
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @easysrc_decl, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @easysrc_decl, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.curl_slist*, %struct.curl_slist** %50, align 8
  store %struct.curl_slist* %51, %struct.curl_slist** %3, align 8
  br label %52

52:                                               ; preds = %61, %48
  %53 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %54 = icmp ne %struct.curl_slist* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %58 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %55
  %62 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %63 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %62, i32 0, i32 1
  %64 = load %struct.curl_slist*, %struct.curl_slist** %63, align 8
  store %struct.curl_slist* %64, %struct.curl_slist** %3, align 8
  br label %52

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @easysrc_data, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @easysrc_data, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.curl_slist*, %struct.curl_slist** %73, align 8
  store %struct.curl_slist* %74, %struct.curl_slist** %3, align 8
  br label %75

75:                                               ; preds = %84, %69
  %76 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %77 = icmp ne %struct.curl_slist* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %81 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %78
  %85 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %86 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %85, i32 0, i32 1
  %87 = load %struct.curl_slist*, %struct.curl_slist** %86, align 8
  store %struct.curl_slist* %87, %struct.curl_slist** %3, align 8
  br label %75

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** @easysrc_code, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %123

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @easysrc_code, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.curl_slist*, %struct.curl_slist** %96, align 8
  store %struct.curl_slist* %97, %struct.curl_slist** %3, align 8
  br label %98

98:                                               ; preds = %118, %94
  %99 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %100 = icmp ne %struct.curl_slist* %99, null
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %103 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %111 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %112)
  br label %117

114:                                              ; preds = %101
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %108
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %120 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %119, i32 0, i32 1
  %121 = load %struct.curl_slist*, %struct.curl_slist** %120, align 8
  store %struct.curl_slist* %121, %struct.curl_slist** %3, align 8
  br label %98

122:                                              ; preds = %98
  br label %123

123:                                              ; preds = %122, %89
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @easysrc_clean, align 8
  %125 = icmp ne %struct.TYPE_8__* %124, null
  br i1 %125, label %126, label %144

126:                                              ; preds = %123
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @easysrc_clean, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.curl_slist*, %struct.curl_slist** %128, align 8
  store %struct.curl_slist* %129, %struct.curl_slist** %3, align 8
  br label %130

130:                                              ; preds = %139, %126
  %131 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %132 = icmp ne %struct.curl_slist* %131, null
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %136 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %133
  %140 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %141 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %140, i32 0, i32 1
  %142 = load %struct.curl_slist*, %struct.curl_slist** %141, align 8
  store %struct.curl_slist* %142, %struct.curl_slist** %3, align 8
  br label %130

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %123
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %156, %144
  %146 = load i8**, i8*** @srcend, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %8, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i32*, i32** %5, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %145

159:                                              ; preds = %145
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @fclose(i32* %163)
  br label %165

165:                                              ; preds = %162, %159
  br label %166

166:                                              ; preds = %165, %26
  %167 = call i32 (...) @easysrc_free()
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @warnf(%struct.GlobalConfig*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @easysrc_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
