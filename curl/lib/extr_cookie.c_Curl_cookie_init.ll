; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_cookie_init.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_cookie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.CookieInfo = type { i32, i8*, i32 }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@FOPEN_READTEXT = common dso_local global i32 0, align 4
@MAX_COOKIE_LINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Set-Cookie:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.CookieInfo* @Curl_cookie_init(%struct.Curl_easy* %0, i8* %1, %struct.CookieInfo* %2, i32 %3) #0 {
  %5 = alloca %struct.CookieInfo*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.CookieInfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.CookieInfo*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.CookieInfo* %2, %struct.CookieInfo** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %16 = load i8*, i8** @TRUE, align 8
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %18 = load %struct.CookieInfo*, %struct.CookieInfo** %8, align 8
  %19 = icmp eq %struct.CookieInfo* null, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  %21 = call %struct.CookieInfo* @calloc(i32 1, i32 24)
  store %struct.CookieInfo* %21, %struct.CookieInfo** %10, align 8
  %22 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  %23 = icmp ne %struct.CookieInfo* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store %struct.CookieInfo* null, %struct.CookieInfo** %5, align 8
  br label %175

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  br label %31

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %30 ]
  %33 = call i32 @strdup(i8* %32)
  %34 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  %35 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  %37 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %157

41:                                               ; preds = %31
  br label %44

42:                                               ; preds = %4
  %43 = load %struct.CookieInfo*, %struct.CookieInfo** %8, align 8
  store %struct.CookieInfo* %43, %struct.CookieInfo** %10, align 8
  br label %44

44:                                               ; preds = %42, %41
  %45 = load i8*, i8** @FALSE, align 8
  %46 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  %47 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** @stdin, align 8
  store i32* %55, i32** %11, align 8
  %56 = load i8*, i8** @FALSE, align 8
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %12, align 4
  br label %77

58:                                               ; preds = %50, %44
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32* null, i32** %11, align 8
  br label %76

66:                                               ; preds = %61, %58
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* @FOPEN_READTEXT, align 4
  %72 = call i32* @fopen(i8* %70, i32 %71)
  br label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32* [ %72, %69 ], [ null, %73 ]
  store i32* %75, i32** %11, align 8
  br label %76

76:                                               ; preds = %74, %65
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  %80 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %144

83:                                               ; preds = %77
  %84 = load i32, i32* @MAX_COOKIE_LINE, align 4
  %85 = call i8* @malloc(i32 %84)
  store i8* %85, i8** %13, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %157

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %125, %89
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* @MAX_COOKIE_LINE, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = call i64 @Curl_get_line(i8* %91, i32 %92, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %133

96:                                               ; preds = %90
  %97 = load i8*, i8** %13, align 8
  %98 = call i64 @checkprefix(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 11
  store i8* %102, i8** %14, align 8
  %103 = load i8*, i8** @TRUE, align 8
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %15, align 4
  br label %109

105:                                              ; preds = %96
  %106 = load i8*, i8** %13, align 8
  store i8* %106, i8** %14, align 8
  %107 = load i8*, i8** @FALSE, align 8
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %122, %109
  %111 = load i8*, i8** %14, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i8*, i8** %14, align 8
  %117 = load i8, i8* %116, align 1
  %118 = call i64 @ISBLANK(i8 signext %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %115, %110
  %121 = phi i1 [ false, %110 ], [ %119, %115 ]
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load i8*, i8** %14, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %14, align 8
  br label %110

125:                                              ; preds = %120
  %126 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %127 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load i8*, i8** @TRUE, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** @TRUE, align 8
  %132 = call i32 @Curl_cookie_add(%struct.Curl_easy* %126, %struct.CookieInfo* %127, i32 %128, i8* %129, i8* %130, i32* null, i32* null, i8* %131)
  br label %90

133:                                              ; preds = %90
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  %137 = call i32 @remove_expired(%struct.CookieInfo* %136)
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @fclose(i32* %141)
  br label %143

143:                                              ; preds = %140, %133
  br label %144

144:                                              ; preds = %143, %77
  %145 = load i8*, i8** @TRUE, align 8
  %146 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  %147 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %149 = icmp ne %struct.Curl_easy* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load i8*, i8** @TRUE, align 8
  %152 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %153 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i8* %151, i8** %154, align 8
  br label %155

155:                                              ; preds = %150, %144
  %156 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  store %struct.CookieInfo* %156, %struct.CookieInfo** %5, align 8
  br label %175

157:                                              ; preds = %88, %40
  %158 = load i8*, i8** %13, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load %struct.CookieInfo*, %struct.CookieInfo** %8, align 8
  %161 = icmp ne %struct.CookieInfo* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load %struct.CookieInfo*, %struct.CookieInfo** %10, align 8
  %164 = call i32 @Curl_cookie_cleanup(%struct.CookieInfo* %163)
  br label %165

165:                                              ; preds = %162, %157
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32*, i32** %11, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32*, i32** %11, align 8
  %173 = call i32 @fclose(i32* %172)
  br label %174

174:                                              ; preds = %171, %168, %165
  store %struct.CookieInfo* null, %struct.CookieInfo** %5, align 8
  br label %175

175:                                              ; preds = %174, %155, %24
  %176 = load %struct.CookieInfo*, %struct.CookieInfo** %5, align 8
  ret %struct.CookieInfo* %176
}

declare dso_local %struct.CookieInfo* @calloc(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @Curl_get_line(i8*, i32, i32*) #1

declare dso_local i64 @checkprefix(i8*, i8*) #1

declare dso_local i64 @ISBLANK(i8 signext) #1

declare dso_local i32 @Curl_cookie_add(%struct.Curl_easy*, %struct.CookieInfo*, i32, i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @remove_expired(%struct.CookieInfo*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @Curl_cookie_cleanup(%struct.CookieInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
