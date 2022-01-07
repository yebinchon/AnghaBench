; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_get_cookies.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_get_cookies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.tm = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unable to parse '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"expires\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s; %s=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8**, i8*, i8*)* @get_cookies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cookies(%struct.TYPE_7__* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.tm, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32 @av_dict_free(i32** %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %197

28:                                               ; preds = %4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @av_strdup(i32 %31)
  store i8* %32, i8** %12, align 8
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %197

38:                                               ; preds = %28
  %39 = load i8**, i8*** %7, align 8
  store i8* null, i8** %39, align 8
  br label %40

40:                                               ; preds = %191, %38
  %41 = load i8*, i8** %13, align 8
  %42 = call i8* @av_strtok(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %42, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %193

50:                                               ; preds = %48
  store i32* null, i32** %14, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i64 @parse_cookie(%struct.TYPE_7__* %51, i8* %52, i32** %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = load i32, i32* @AV_LOG_WARNING, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @av_log(%struct.TYPE_7__* %58, i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 @parse_set_cookie(i8* %63, i32** %14)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %191

67:                                               ; preds = %62
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %70 = call %struct.TYPE_8__* @av_dict_get(i32* %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %69)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %15, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %67
  br label %191

79:                                               ; preds = %73
  %80 = load i32*, i32** %14, align 8
  %81 = call %struct.TYPE_8__* @av_dict_get(i32* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %16, align 8
  %82 = icmp ne %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = bitcast %struct.tm* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %89, i8 0, i64 4, i1 false)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @parse_set_cookie_expiry_time(i8* %92, %struct.tm* %17)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = call i32 @av_timegm(%struct.tm* %17)
  %97 = call i32 (...) @av_gettime()
  %98 = sdiv i32 %97, 1000000
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %191

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %83, %79
  %104 = load i32*, i32** %14, align 8
  %105 = call %struct.TYPE_8__* @av_dict_get(i32* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %16, align 8
  %106 = icmp ne %struct.TYPE_8__* %105, null
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = sub nsw i32 %114, %118
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %191

123:                                              ; preds = %112
  %124 = load i8*, i8** %9, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @av_strcasecmp(i8* %127, i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %191

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %107, %103
  %136 = load i32*, i32** %14, align 8
  %137 = call %struct.TYPE_8__* @av_dict_get(i32* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %16, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %139 = icmp ne %struct.TYPE_8__* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @strlen(i8* %147)
  %149 = call i64 @av_strncasecmp(i8* %141, i8* %144, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140, %135
  br label %191

152:                                              ; preds = %140
  %153 = load i8**, i8*** %7, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %167, label %156

156:                                              ; preds = %152
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i8* (i8*, i8*, i8*, ...) @av_asprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %161, i8* %164)
  %166 = load i8**, i8*** %7, align 8
  store i8* %165, i8** %166, align 8
  br label %183

167:                                              ; preds = %152
  %168 = load i8**, i8*** %7, align 8
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %19, align 8
  %170 = load i8*, i8** %19, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to i8*
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* (i8*, i8*, i8*, ...) @av_asprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %170, i8* %175, i8* %178)
  %180 = load i8**, i8*** %7, align 8
  store i8* %179, i8** %180, align 8
  %181 = load i8*, i8** %19, align 8
  %182 = call i32 @av_free(i8* %181)
  br label %183

183:                                              ; preds = %167, %156
  %184 = load i8**, i8*** %7, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = call i32 @AVERROR(i32 %188)
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %187, %183
  br label %191

191:                                              ; preds = %190, %151, %133, %122, %100, %78, %66
  %192 = call i32 @av_dict_free(i32** %14)
  br label %40

193:                                              ; preds = %48
  %194 = load i8*, i8** %12, align 8
  %195 = call i32 @av_free(i8* %194)
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %193, %35, %27
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i8* @av_strdup(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i64 @parse_cookie(%struct.TYPE_7__*, i8*, i32**) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i8*) #1

declare dso_local i64 @parse_set_cookie(i8*, i32**) #1

declare dso_local %struct.TYPE_8__* @av_dict_get(i32*, i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @parse_set_cookie_expiry_time(i8*, %struct.tm*) #1

declare dso_local i32 @av_timegm(%struct.tm*) #1

declare dso_local i32 @av_gettime(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @av_strcasecmp(i8*, i8*) #1

declare dso_local i64 @av_strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @av_asprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
