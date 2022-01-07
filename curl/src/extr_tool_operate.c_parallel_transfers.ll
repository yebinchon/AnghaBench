; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operate.c_parallel_transfers.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operate.c_parallel_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32 }
%struct.timeval = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.per_transfer = type { i32 }

@CURLM_OK = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CURLINFO_PRIVATE = common dso_local global i32 0, align 4
@all_added = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CURLM_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.GlobalConfig*, i32*)* @parallel_transfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parallel_transfers(%struct.GlobalConfig* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.GlobalConfig*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.per_transfer*, align 8
  %18 = alloca i32*, align 8
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load i64, i64* @CURLM_OK, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* @CURLE_OK, align 8
  store i64 %20, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %21 = call i32 (...) @tvnow()
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = call i32* (...) @curl_multi_init()
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %27, i64* %3, align 8
  br label %140

28:                                               ; preds = %2
  %29 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @add_parallel_transfers(%struct.GlobalConfig* %29, i32* %30, i32* %31, i32* %11, i32* %12)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %3, align 8
  br label %140

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %119, %37
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ true, %41 ], [ %46, %44 ]
  br label %49

49:                                               ; preds = %47, %38
  %50 = phi i1 [ false, %38 ], [ %48, %47 ]
  br i1 %50, label %51, label %120

51:                                               ; preds = %49
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @curl_multi_poll(i32* %52, i32* null, i32 0, i32 1000, i32* null)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32*, i32** %6, align 8
  %58 = call i64 @curl_multi_perform(i32* %57, i32* %9)
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @progress_meter(%struct.GlobalConfig* %60, %struct.timeval* %10, i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %119, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %103, %65
  %68 = load i32*, i32** %6, align 8
  %69 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %68, i32* %13)
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %14, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %18, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = load i32, i32* @CURLINFO_PRIVATE, align 4
  %82 = bitcast %struct.per_transfer** %17 to i8*
  %83 = call i32 @curl_easy_getinfo(i32* %80, i32 %81, i8* %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = call i32 @curl_multi_remove_handle(i32* %84, i32* %85)
  %87 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %88 = load %struct.per_transfer*, %struct.per_transfer** %17, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @post_per_transfer(%struct.GlobalConfig* %87, %struct.per_transfer* %88, i64 %89, i32* %16)
  store i64 %90, i64* %8, align 8
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %72
  br label %103

94:                                               ; preds = %72
  %95 = load %struct.per_transfer*, %struct.per_transfer** %17, align 8
  %96 = call i32 @progress_finalize(%struct.per_transfer* %95)
  %97 = load i32, i32* @all_added, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* @all_added, align 4
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %15, align 4
  %100 = load %struct.per_transfer*, %struct.per_transfer** %17, align 8
  %101 = call i32 @del_per_transfer(%struct.per_transfer* %100)
  br label %102

102:                                              ; preds = %94, %67
  br label %103

103:                                              ; preds = %102, %93
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %105 = icmp ne %struct.TYPE_5__* %104, null
  br i1 %105, label %67, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = call i64 @add_parallel_transfers(%struct.GlobalConfig* %110, i32* %111, i32* %112, i32* %11, i32* %12)
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %109
  br label %118

118:                                              ; preds = %117, %106
  br label %119

119:                                              ; preds = %118, %59
  br label %38

120:                                              ; preds = %49
  %121 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i32 @progress_meter(%struct.GlobalConfig* %121, %struct.timeval* %10, i32 %122)
  %124 = load i64, i64* %7, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @CURLM_OUT_OF_MEMORY, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  br label %134

132:                                              ; preds = %126
  %133 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i64 [ %131, %130 ], [ %133, %132 ]
  store i64 %135, i64* %8, align 8
  br label %136

136:                                              ; preds = %134, %120
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @curl_multi_cleanup(i32* %137)
  %139 = load i64, i64* %8, align 8
  store i64 %139, i64* %3, align 8
  br label %140

140:                                              ; preds = %136, %35, %26
  %141 = load i64, i64* %3, align 8
  ret i64 %141
}

declare dso_local i32 @tvnow(...) #1

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i64 @add_parallel_transfers(%struct.GlobalConfig*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @curl_multi_poll(i32*, i32*, i32, i32, i32*) #1

declare dso_local i64 @curl_multi_perform(i32*, i32*) #1

declare dso_local i32 @progress_meter(%struct.GlobalConfig*, %struct.timeval*, i32) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, i8*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i64 @post_per_transfer(%struct.GlobalConfig*, %struct.per_transfer*, i64, i32*) #1

declare dso_local i32 @progress_finalize(%struct.per_transfer*) #1

declare dso_local i32 @del_per_transfer(%struct.per_transfer*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
