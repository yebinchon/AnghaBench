; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_urlapi.c_hostname_check.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_urlapi.c_hostname_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_URL = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"0123456789abcdefABCDEF:.\00", align 1
@CURLUE_MALFORMED_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@CURLUE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@CURLUE_NO_HOST = common dso_local global i32 0, align 4
@CURLUE_OK = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_URL*, i8*)* @hostname_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostname_check(%struct.Curl_URL* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_URL*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.Curl_URL* %0, %struct.Curl_URL** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 91
  br i1 %18, label %19, label %135

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %20, 5
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %23, i32* %3, align 4
  br label %153

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %27, 2
  store i64 %28, i64* %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 93
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %36, i32* %3, align 4
  br label %153

37:                                               ; preds = %24
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @strspn(i8* %38, i8* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %134

44:                                               ; preds = %37
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %7, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %131

52:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 93
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %74, i8** %11, align 8
  br label %75

75:                                               ; preds = %72, %66, %60, %52
  br label %76

76:                                               ; preds = %91, %75
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i8*, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 93
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 15
  br label %89

89:                                               ; preds = %86, %81, %76
  %90 = phi i1 [ false, %81 ], [ false, %76 ], [ %88, %86 ]
  br i1 %90, label %91, label %99

91:                                               ; preds = %89
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %11, align 8
  %94 = load i8, i8* %92, align 1
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %97
  store i8 %94, i8* %98, align 1
  br label %76

99:                                               ; preds = %89
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i8*, i8** %11, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 93, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102, %99
  %108 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %108, i32* %3, align 4
  br label %153

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %111
  store i8 0, i8* %112, align 1
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %114 = call i32 @strdup(i8* %113)
  %115 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %116 = getelementptr inbounds %struct.Curl_URL, %struct.Curl_URL* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %118 = getelementptr inbounds %struct.Curl_URL, %struct.Curl_URL* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %109
  %122 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %122, i32* %3, align 4
  br label %153

123:                                              ; preds = %109
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8 93, i8* %126, align 1
  %127 = load i8*, i8** %5, align 8
  %128 = load i64, i64* %6, align 8
  %129 = add i64 %128, 1
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 0, i8* %130, align 1
  br label %133

131:                                              ; preds = %44
  %132 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %132, i32* %3, align 4
  br label %153

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %37
  br label %144

135:                                              ; preds = %2
  %136 = load i8*, i8** %5, align 8
  %137 = call i64 @strcspn(i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %6, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %142, i32* %3, align 4
  br label %153

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %134
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* @CURLUE_NO_HOST, align 4
  store i32 %150, i32* %3, align 4
  br label %153

151:                                              ; preds = %144
  %152 = load i32, i32* @CURLUE_OK, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %149, %141, %131, %121, %107, %35, %22
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
