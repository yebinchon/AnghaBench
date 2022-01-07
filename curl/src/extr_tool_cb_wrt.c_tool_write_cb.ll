; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_cb_wrt.c_tool_write_cb.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_cb_wrt.c_tool_write_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_transfer = type { i32, %struct.OutStruct }
%struct.OutStruct = type { i32, i64, i64, i64, i64, i64, i64, i32*, %struct.OperationConfig* }
%struct.OperationConfig = type { i32, i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [159 x i8] c"Binary output can mess up your terminal. Use \22--output -\22 to tell curl to output it to your terminal anyway, or consider \22--output <FILE>\22 to save to a file.\0A\00", align 1
@ERR_BINARY_TERMINAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@CURLPAUSE_CONT = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@CURL_MAX_HTTP_HEADER = common dso_local global i64 0, align 8
@CURL_MAX_WRITE_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tool_write_cb(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.per_transfer*, align 8
  %12 = alloca %struct.OutStruct*, align 8
  %13 = alloca %struct.OperationConfig*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.per_transfer*
  store %struct.per_transfer* %19, %struct.per_transfer** %11, align 8
  %20 = load %struct.per_transfer*, %struct.per_transfer** %11, align 8
  %21 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %20, i32 0, i32 1
  store %struct.OutStruct* %21, %struct.OutStruct** %12, align 8
  %22 = load %struct.OutStruct*, %struct.OutStruct** %12, align 8
  %23 = getelementptr inbounds %struct.OutStruct, %struct.OutStruct* %22, i32 0, i32 8
  %24 = load %struct.OperationConfig*, %struct.OperationConfig** %23, align 8
  store %struct.OperationConfig* %24, %struct.OperationConfig** %13, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = mul i64 %25, %26
  store i64 %27, i64* %14, align 8
  %28 = load %struct.OperationConfig*, %struct.OperationConfig** %13, align 8
  %29 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i64, i64* %14, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %16, align 8
  %38 = load %struct.OutStruct*, %struct.OutStruct** %12, align 8
  %39 = getelementptr inbounds %struct.OutStruct, %struct.OutStruct* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %4
  %43 = load %struct.OutStruct*, %struct.OutStruct** %12, align 8
  %44 = call i32 @tool_create_output_file(%struct.OutStruct* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %16, align 8
  store i64 %47, i64* %5, align 8
  br label %127

48:                                               ; preds = %42, %4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load %struct.OutStruct*, %struct.OutStruct** %12, align 8
  %53 = getelementptr inbounds %struct.OutStruct, %struct.OutStruct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 2000
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.OperationConfig*, %struct.OperationConfig** %13, align 8
  %58 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i64 @memchr(i8* %62, i32 0, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.OperationConfig*, %struct.OperationConfig** %13, align 8
  %68 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i32 @warnf(%struct.TYPE_2__* %69, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ERR_BINARY_TERMINAL, align 4
  %72 = load %struct.OperationConfig*, %struct.OperationConfig** %13, align 8
  %73 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %16, align 8
  store i64 %74, i64* %5, align 8
  br label %127

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %56, %51, %48
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.OutStruct*, %struct.OutStruct** %12, align 8
  %81 = getelementptr inbounds %struct.OutStruct, %struct.OutStruct* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @fwrite(i8* %77, i64 %78, i64 %79, i64 %82)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.OutStruct*, %struct.OutStruct** %12, align 8
  %90 = getelementptr inbounds %struct.OutStruct, %struct.OutStruct* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  br label %95

95:                                               ; preds = %87, %76
  %96 = load %struct.OperationConfig*, %struct.OperationConfig** %13, align 8
  %97 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i8*, i8** @FALSE, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.OperationConfig*, %struct.OperationConfig** %13, align 8
  %104 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.per_transfer*, %struct.per_transfer** %11, align 8
  %106 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CURLPAUSE_CONT, align 4
  %109 = call i32 @curl_easy_pause(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %100, %95
  %111 = load %struct.OperationConfig*, %struct.OperationConfig** %13, align 8
  %112 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.OutStruct*, %struct.OutStruct** %12, align 8
  %117 = getelementptr inbounds %struct.OutStruct, %struct.OutStruct* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @fflush(i64 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i64, i64* %16, align 8
  store i64 %123, i64* %5, align 8
  br label %127

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %110
  %126 = load i64, i64* %10, align 8
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %125, %122, %66, %46
  %128 = load i64, i64* %5, align 8
  ret i64 %128
}

declare dso_local i32 @tool_create_output_file(%struct.OutStruct*) #1

declare dso_local i64 @memchr(i8*, i32, i64) #1

declare dso_local i32 @warnf(%struct.TYPE_2__*, i8*) #1

declare dso_local i64 @fwrite(i8*, i64, i64, i64) #1

declare dso_local i32 @curl_easy_pause(i32, i32) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
