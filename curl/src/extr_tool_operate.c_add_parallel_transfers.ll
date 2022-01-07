; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operate.c_add_parallel_transfers.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operate.c_add_parallel_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_transfer = type { i8*, i32, %struct.per_transfer* }
%struct.GlobalConfig = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@transfers = common dso_local global %struct.per_transfer* null, align 8
@all_added = common dso_local global i64 0, align 8
@CURLOPT_PRIVATE = common dso_local global i32 0, align 4
@CURLOPT_XFERINFOFUNCTION = common dso_local global i32 0, align 4
@xferinfo_cb = common dso_local global %struct.per_transfer* null, align 8
@CURLOPT_XFERINFODATA = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.GlobalConfig*, i32*, i32*, i32*, i32*)* @add_parallel_transfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_parallel_transfers(%struct.GlobalConfig* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.GlobalConfig*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.per_transfer*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i64, i64* @CURLE_OK, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i8*, i8** @FALSE, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load i32*, i32** %11, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i8*, i8** @FALSE, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.GlobalConfig*, %struct.GlobalConfig** %7, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i64 @create_transfer(%struct.GlobalConfig* %23, i32* %24, i32* %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %5
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %6, align 8
  br label %124

35:                                               ; preds = %29
  %36 = load %struct.per_transfer*, %struct.per_transfer** @transfers, align 8
  store %struct.per_transfer* %36, %struct.per_transfer** %12, align 8
  br label %37

37:                                               ; preds = %108, %35
  %38 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %39 = icmp ne %struct.per_transfer* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i64, i64* @all_added, align 8
  %42 = load %struct.GlobalConfig*, %struct.GlobalConfig** %7, align 8
  %43 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i1 [ false, %37 ], [ %45, %40 ]
  br i1 %47, label %48, label %112

48:                                               ; preds = %46
  %49 = load i8*, i8** @FALSE, align 8
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %52 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %108

56:                                               ; preds = %48
  %57 = load %struct.GlobalConfig*, %struct.GlobalConfig** %7, align 8
  %58 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %59 = call i64 @pre_transfer(%struct.GlobalConfig* %57, %struct.per_transfer* %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %112

63:                                               ; preds = %56
  %64 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %65 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CURLOPT_PRIVATE, align 4
  %68 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %69 = call i32 @curl_easy_setopt(i32 %66, i32 %67, %struct.per_transfer* %68)
  %70 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %71 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CURLOPT_XFERINFOFUNCTION, align 4
  %74 = load %struct.per_transfer*, %struct.per_transfer** @xferinfo_cb, align 8
  %75 = call i32 @curl_easy_setopt(i32 %72, i32 %73, %struct.per_transfer* %74)
  %76 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %77 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CURLOPT_XFERINFODATA, align 4
  %80 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %81 = call i32 @curl_easy_setopt(i32 %78, i32 %79, %struct.per_transfer* %80)
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %84 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @curl_multi_add_handle(i32* %82, i32 %85)
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %63
  %90 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %90, i64* %6, align 8
  br label %124

91:                                               ; preds = %63
  %92 = load %struct.GlobalConfig*, %struct.GlobalConfig** %7, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @create_transfer(%struct.GlobalConfig* %92, i32* %93, i32* %15)
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i64, i64* %13, align 8
  store i64 %98, i64* %6, align 8
  br label %124

99:                                               ; preds = %91
  %100 = load i8*, i8** @TRUE, align 8
  %101 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %102 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load i64, i64* @all_added, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* @all_added, align 8
  %105 = load i8*, i8** @TRUE, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %99, %55
  %109 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %110 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %109, i32 0, i32 2
  %111 = load %struct.per_transfer*, %struct.per_transfer** %110, align 8
  store %struct.per_transfer* %111, %struct.per_transfer** %12, align 8
  br label %37

112:                                              ; preds = %62, %46
  %113 = load %struct.per_transfer*, %struct.per_transfer** %12, align 8
  %114 = icmp ne %struct.per_transfer* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i8*, i8** @TRUE, align 8
  br label %119

117:                                              ; preds = %112
  %118 = load i8*, i8** @FALSE, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i8* [ %116, %115 ], [ %118, %117 ]
  %121 = ptrtoint i8* %120 to i32
  %122 = load i32*, i32** %10, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i64, i64* @CURLE_OK, align 8
  store i64 %123, i64* %6, align 8
  br label %124

124:                                              ; preds = %119, %97, %89, %33
  %125 = load i64, i64* %6, align 8
  ret i64 %125
}

declare dso_local i64 @create_transfer(%struct.GlobalConfig*, i32*, i32*) #1

declare dso_local i64 @pre_transfer(%struct.GlobalConfig*, %struct.per_transfer*) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.per_transfer*) #1

declare dso_local i64 @curl_multi_add_handle(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
