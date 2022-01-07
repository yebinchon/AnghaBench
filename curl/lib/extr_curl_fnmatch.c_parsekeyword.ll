; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_fnmatch.c_parsekeyword.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_fnmatch.c_parsekeyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SETCHARSET_FAIL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@CURLFNM_DIGIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@CURLFNM_ALNUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@CURLFNM_ALPHA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@CURLFNM_XDIGIT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@CURLFNM_PRINT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@CURLFNM_GRAPH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@CURLFNM_SPACE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@CURLFNM_BLANK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@CURLFNM_UPPER = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@CURLFNM_LOWER = common dso_local global i64 0, align 8
@SETCHARSET_OK = common dso_local global i32 0, align 4
@KEYLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @parsekeyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsekeyword(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 128, i32* %6, align 4
  %12 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 10, i1 false)
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %58, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %10, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %11, align 1
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 10
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @SETCHARSET_FAIL, align 4
  store i32 %27, i32* %3, align 4
  br label %156

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %57 [
    i32 128, label %30
    i32 129, label %48
  ]

30:                                               ; preds = %28
  %31 = load i8, i8* %11, align 1
  %32 = call i32 @ISLOWER(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i8, i8* %11, align 1
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %37
  store i8 %35, i8* %38, align 1
  br label %47

39:                                               ; preds = %30
  %40 = load i8, i8* %11, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 58
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 129, i32* %6, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @SETCHARSET_FAIL, align 4
  store i32 %45, i32* %3, align 4
  br label %156

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %34
  br label %57

48:                                               ; preds = %28
  %49 = load i8, i8* %11, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 93
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %8, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @SETCHARSET_FAIL, align 4
  store i32 %55, i32* %3, align 4
  br label %156

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %28, %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %16

61:                                               ; preds = %16
  %62 = load i8*, i8** %10, align 8
  %63 = load i8**, i8*** %4, align 8
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* @CURLFNM_DIGIT, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 1, i8* %70, align 1
  br label %154

71:                                               ; preds = %61
  %72 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* @CURLFNM_ALNUM, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 1, i8* %78, align 1
  br label %153

79:                                               ; preds = %71
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* @CURLFNM_ALPHA, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 1, i8* %86, align 1
  br label %152

87:                                               ; preds = %79
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* @CURLFNM_XDIGIT, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8 1, i8* %94, align 1
  br label %151

95:                                               ; preds = %87
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8*, i8** %5, align 8
  %101 = load i64, i64* @CURLFNM_PRINT, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8 1, i8* %102, align 1
  br label %150

103:                                              ; preds = %95
  %104 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** %5, align 8
  %109 = load i64, i64* @CURLFNM_GRAPH, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 1, i8* %110, align 1
  br label %149

111:                                              ; preds = %103
  %112 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i8*, i8** %5, align 8
  %117 = load i64, i64* @CURLFNM_SPACE, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8 1, i8* %118, align 1
  br label %148

119:                                              ; preds = %111
  %120 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* @CURLFNM_BLANK, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8 1, i8* %126, align 1
  br label %147

127:                                              ; preds = %119
  %128 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i8*, i8** %5, align 8
  %133 = load i64, i64* @CURLFNM_UPPER, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8 1, i8* %134, align 1
  br label %146

135:                                              ; preds = %127
  %136 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i8*, i8** %5, align 8
  %141 = load i64, i64* @CURLFNM_LOWER, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8 1, i8* %142, align 1
  br label %145

143:                                              ; preds = %135
  %144 = load i32, i32* @SETCHARSET_FAIL, align 4
  store i32 %144, i32* %3, align 4
  br label %156

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %131
  br label %147

147:                                              ; preds = %146, %123
  br label %148

148:                                              ; preds = %147, %115
  br label %149

149:                                              ; preds = %148, %107
  br label %150

150:                                              ; preds = %149, %99
  br label %151

151:                                              ; preds = %150, %91
  br label %152

152:                                              ; preds = %151, %83
  br label %153

153:                                              ; preds = %152, %75
  br label %154

154:                                              ; preds = %153, %67
  %155 = load i32, i32* @SETCHARSET_OK, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %143, %54, %44, %26
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ISLOWER(i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
