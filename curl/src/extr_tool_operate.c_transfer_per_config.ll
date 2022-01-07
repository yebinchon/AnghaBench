; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operate.c_transfer_per_config.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operate.c_transfer_per_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32 }
%struct.OperationConfig = type { i8*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.curl_tlssessioninfo = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no URL specified!\0A\00", align 1
@CURLE_FAILED_INIT = common dso_local global i64 0, align 8
@CURLINFO_TLS_SSL_PTR = common dso_local global i32 0, align 4
@CURLSSLBACKEND_SCHANNEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"CURL_CA_BUNDLE\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"SSL_CERT_DIR\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"SSL_CERT_FILE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.GlobalConfig*, %struct.OperationConfig*, i32*, i32*)* @transfer_per_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @transfer_per_config(%struct.GlobalConfig* %0, %struct.OperationConfig* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.GlobalConfig*, align 8
  %7 = alloca %struct.OperationConfig*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.curl_tlssessioninfo*, align 8
  %14 = alloca i8*, align 8
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %6, align 8
  store %struct.OperationConfig* %1, %struct.OperationConfig** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* @CURLE_OK, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32*, i32** %9, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %19 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %24 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22, %4
  %30 = load %struct.GlobalConfig*, %struct.GlobalConfig** %6, align 8
  %31 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @helpf(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @CURLE_FAILED_INIT, align 8
  store i64 %34, i64* %5, align 8
  br label %155

35:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  %36 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %37 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %143, label %40

40:                                               ; preds = %35
  %41 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %42 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %143, label %45

45:                                               ; preds = %40
  %46 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %47 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %143, label %50

50:                                               ; preds = %45
  %51 = call i32* (...) @curl_easy_init()
  store i32* %51, i32** %12, align 8
  store %struct.curl_tlssessioninfo* null, %struct.curl_tlssessioninfo** %13, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* @CURLINFO_TLS_SSL_PTR, align 4
  %54 = call i64 @curl_easy_getinfo(i32* %52, i32 %53, %struct.curl_tlssessioninfo** %13)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %5, align 8
  br label %155

59:                                               ; preds = %50
  %60 = load %struct.curl_tlssessioninfo*, %struct.curl_tlssessioninfo** %13, align 8
  %61 = getelementptr inbounds %struct.curl_tlssessioninfo, %struct.curl_tlssessioninfo* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CURLSSLBACKEND_SCHANNEL, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %140

65:                                               ; preds = %59
  %66 = call i8* @curlx_getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %66, i8** %14, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i8*, i8** %14, align 8
  %71 = call i8* @strdup(i8* %70)
  %72 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %73 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %75 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %69
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @curl_free(i8* %79)
  %81 = load %struct.GlobalConfig*, %struct.GlobalConfig** %6, align 8
  %82 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @helpf(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %85, i64* %5, align 8
  br label %155

86:                                               ; preds = %69
  br label %133

87:                                               ; preds = %65
  %88 = call i8* @curlx_getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i8* %88, i8** %14, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load i8*, i8** %14, align 8
  %93 = call i8* @strdup(i8* %92)
  %94 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %95 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %97 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %91
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @curl_free(i8* %101)
  %103 = load %struct.GlobalConfig*, %struct.GlobalConfig** %6, align 8
  %104 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @helpf(i32 %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %107, i64* %5, align 8
  br label %155

108:                                              ; preds = %91
  store i32 1, i32* %11, align 4
  br label %132

109:                                              ; preds = %87
  %110 = call i8* @curlx_getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i8* %110, i8** %14, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  %114 = load i8*, i8** %14, align 8
  %115 = call i8* @strdup(i8* %114)
  %116 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %117 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %119 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %113
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @curl_free(i8* %123)
  %125 = load %struct.GlobalConfig*, %struct.GlobalConfig** %6, align 8
  %126 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @helpf(i32 %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %129, i64* %5, align 8
  br label %155

130:                                              ; preds = %113
  br label %131

131:                                              ; preds = %130, %109
  br label %132

132:                                              ; preds = %131, %108
  br label %133

133:                                              ; preds = %132, %86
  %134 = load i8*, i8** %14, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 @curl_free(i8* %137)
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %59
  %141 = load i32*, i32** %12, align 8
  %142 = call i32 @curl_easy_cleanup(i32* %141)
  br label %143

143:                                              ; preds = %140, %45, %40, %35
  %144 = load i64, i64* %10, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = load %struct.GlobalConfig*, %struct.GlobalConfig** %6, align 8
  %148 = load %struct.OperationConfig*, %struct.OperationConfig** %7, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = call i64 @single_transfer(%struct.GlobalConfig* %147, %struct.OperationConfig* %148, i32* %149, i32 %150, i32* %151)
  store i64 %152, i64* %10, align 8
  br label %153

153:                                              ; preds = %146, %143
  %154 = load i64, i64* %10, align 8
  store i64 %154, i64* %5, align 8
  br label %155

155:                                              ; preds = %153, %122, %100, %78, %57, %29
  %156 = load i64, i64* %5, align 8
  ret i64 %156
}

declare dso_local i32 @helpf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i64 @curl_easy_getinfo(i32*, i32, %struct.curl_tlssessioninfo**) #1

declare dso_local i8* @curlx_getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @curl_free(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i64 @single_transfer(%struct.GlobalConfig*, %struct.OperationConfig*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
