; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operate.c_operate.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operate.c_operate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32, i64, %struct.OperationConfig*, %struct.OperationConfig* }
%struct.OperationConfig = type { %struct.OperationConfig*, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--disable\00", align 1
@CURLE_FAILED_INIT = common dso_local global i64 0, align 8
@PARAM_HELP_REQUESTED = common dso_local global i64 0, align 8
@PARAM_MANUAL_REQUESTED = common dso_local global i64 0, align 8
@PARAM_VERSION_INFO_REQUESTED = common dso_local global i64 0, align 8
@PARAM_ENGINES_REQUESTED = common dso_local global i64 0, align 8
@PARAM_LIBCURL_UNSUPPORTED_PROTOCOL = common dso_local global i64 0, align 8
@CURLE_UNSUPPORTED_PROTOCOL = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURLSHOPT_SHARE = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_COOKIE = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_DNS = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_SSL_SESSION = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_CONNECT = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_PSL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@LC_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @operate(%struct.GlobalConfig* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.GlobalConfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.OperationConfig*, align 8
  %12 = alloca i32*, align 8
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i64, i64* @CURLE_OK, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @curl_strequal(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @curl_strequal(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %30 = call i32 @parseconfig(i32* null, %struct.GlobalConfig* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %35 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %34, i32 0, i32 2
  %36 = load %struct.OperationConfig*, %struct.OperationConfig** %35, align 8
  %37 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %42 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @helpf(i32 %43, i8* null)
  %45 = load i64, i64* @CURLE_FAILED_INIT, align 8
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %40, %33, %28
  br label %47

47:                                               ; preds = %46, %22, %16
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %187, label %50

50:                                               ; preds = %47
  %51 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @parse_args(%struct.GlobalConfig* %51, i32 %52, i32* %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %50
  %58 = load i64, i64* @CURLE_OK, align 8
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @PARAM_HELP_REQUESTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (...) @tool_help()
  br label %94

64:                                               ; preds = %57
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @PARAM_MANUAL_REQUESTED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (...) @hugehelp()
  br label %93

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @PARAM_VERSION_INFO_REQUESTED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (...) @tool_version_info()
  br label %92

76:                                               ; preds = %70
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @PARAM_ENGINES_REQUESTED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (...) @tool_list_engines()
  br label %91

82:                                               ; preds = %76
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @PARAM_LIBCURL_UNSUPPORTED_PROTOCOL, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i64, i64* @CURLE_UNSUPPORTED_PROTOCOL, align 8
  store i64 %87, i64* %8, align 8
  br label %90

88:                                               ; preds = %82
  %89 = load i64, i64* @CURLE_FAILED_INIT, align 8
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %91, %74
  br label %93

93:                                               ; preds = %92, %68
  br label %94

94:                                               ; preds = %93, %62
  br label %186

95:                                               ; preds = %50
  %96 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %97 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i64 (...) @easysrc_init()
  store i64 %101, i64* %8, align 8
  br label %102

102:                                              ; preds = %100, %95
  %103 = load i64, i64* %8, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %180, label %105

105:                                              ; preds = %102
  store i64 0, i64* %10, align 8
  %106 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %107 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %106, i32 0, i32 2
  %108 = load %struct.OperationConfig*, %struct.OperationConfig** %107, align 8
  store %struct.OperationConfig* %108, %struct.OperationConfig** %11, align 8
  %109 = call i32* (...) @curl_share_init()
  store i32* %109, i32** %12, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %105
  %113 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %114 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 (...) @easysrc_cleanup()
  br label %119

119:                                              ; preds = %117, %112
  %120 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %120, i64* %4, align 8
  br label %189

121:                                              ; preds = %105
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %124 = load i32, i32* @CURL_LOCK_DATA_COOKIE, align 4
  %125 = call i32 @curl_share_setopt(i32* %122, i32 %123, i32 %124)
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %128 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %129 = call i32 @curl_share_setopt(i32* %126, i32 %127, i32 %128)
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %132 = load i32, i32* @CURL_LOCK_DATA_SSL_SESSION, align 4
  %133 = call i32 @curl_share_setopt(i32* %130, i32 %131, i32 %132)
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %136 = load i32, i32* @CURL_LOCK_DATA_CONNECT, align 4
  %137 = call i32 @curl_share_setopt(i32* %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %12, align 8
  %139 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %140 = load i32, i32* @CURL_LOCK_DATA_PSL, align 4
  %141 = call i32 @curl_share_setopt(i32* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %157, %121
  %143 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %144 = load i64, i64* %10, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %10, align 8
  %146 = trunc i64 %144 to i32
  %147 = call i64 @get_args(%struct.OperationConfig* %143, i32 %146)
  store i64 %147, i64* %8, align 8
  %148 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %149 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %148, i32 0, i32 0
  %150 = load %struct.OperationConfig*, %struct.OperationConfig** %149, align 8
  store %struct.OperationConfig* %150, %struct.OperationConfig** %11, align 8
  br label %151

151:                                              ; preds = %142
  %152 = load i64, i64* %8, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %156 = icmp ne %struct.OperationConfig* %155, null
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i1 [ false, %151 ], [ %156, %154 ]
  br i1 %158, label %142, label %159

159:                                              ; preds = %157
  %160 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %161 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %160, i32 0, i32 2
  %162 = load %struct.OperationConfig*, %struct.OperationConfig** %161, align 8
  %163 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %164 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %163, i32 0, i32 3
  store %struct.OperationConfig* %162, %struct.OperationConfig** %164, align 8
  %165 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %166 = load i32*, i32** %12, align 8
  %167 = load i64, i64* %8, align 8
  %168 = call i64 @run_all_transfers(%struct.GlobalConfig* %165, i32* %166, i64 %167)
  store i64 %168, i64* %8, align 8
  %169 = load i32*, i32** %12, align 8
  %170 = call i32 @curl_share_cleanup(i32* %169)
  %171 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %172 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %159
  %176 = call i32 (...) @easysrc_cleanup()
  %177 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %178 = call i32 @dumpeasysrc(%struct.GlobalConfig* %177)
  br label %179

179:                                              ; preds = %175, %159
  br label %185

180:                                              ; preds = %102
  %181 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %182 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @helpf(i32 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %185

185:                                              ; preds = %180, %179
  br label %186

186:                                              ; preds = %185, %94
  br label %187

187:                                              ; preds = %186, %47
  %188 = load i64, i64* %8, align 8
  store i64 %188, i64* %4, align 8
  br label %189

189:                                              ; preds = %187, %119
  %190 = load i64, i64* %4, align 8
  ret i64 %190
}

declare dso_local i32 @curl_strequal(i32, i8*) #1

declare dso_local i32 @parseconfig(i32*, %struct.GlobalConfig*) #1

declare dso_local i32 @helpf(i32, i8*) #1

declare dso_local i64 @parse_args(%struct.GlobalConfig*, i32, i32*) #1

declare dso_local i32 @tool_help(...) #1

declare dso_local i32 @hugehelp(...) #1

declare dso_local i32 @tool_version_info(...) #1

declare dso_local i32 @tool_list_engines(...) #1

declare dso_local i64 @easysrc_init(...) #1

declare dso_local i32* @curl_share_init(...) #1

declare dso_local i32 @easysrc_cleanup(...) #1

declare dso_local i32 @curl_share_setopt(i32*, i32, i32) #1

declare dso_local i64 @get_args(%struct.OperationConfig*, i32) #1

declare dso_local i64 @run_all_transfers(%struct.GlobalConfig*, i32*, i64) #1

declare dso_local i32 @curl_share_cleanup(i32*) #1

declare dso_local i32 @dumpeasysrc(%struct.GlobalConfig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
