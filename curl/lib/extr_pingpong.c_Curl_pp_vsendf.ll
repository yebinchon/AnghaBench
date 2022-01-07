; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_vsendf.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_vsendf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong = type { i64, i64, i8*, i32, %struct.connectdata* }
%struct.connectdata = type { i32, %struct.Curl_easy*, i32* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CURLE_SEND_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i64 0, align 8
@CURLINFO_HEADER_OUT = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@PROT_CMD = common dso_local global i32 0, align 4
@PROT_LAST = common dso_local global i32 0, align 4
@PROT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_pp_vsendf(%struct.pingpong* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pingpong*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.connectdata*, align 8
  %14 = alloca %struct.Curl_easy*, align 8
  store %struct.pingpong* %0, %struct.pingpong** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %16 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %15, i32 0, i32 4
  %17 = load %struct.connectdata*, %struct.connectdata** %16, align 8
  store %struct.connectdata* %17, %struct.connectdata** %13, align 8
  %18 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %19 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @DEBUGASSERT(i32 %22)
  %24 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %25 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @DEBUGASSERT(i32 %28)
  %30 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %31 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @DEBUGASSERT(i32 %34)
  %36 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %37 = icmp ne %struct.connectdata* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %3
  %39 = load i64, i64* @CURLE_SEND_ERROR, align 8
  store i64 %39, i64* %4, align 8
  br label %138

40:                                               ; preds = %3
  %41 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %42 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %41, i32 0, i32 1
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %42, align 8
  store %struct.Curl_easy* %43, %struct.Curl_easy** %14, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @aprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %49, i64* %4, align 8
  br label %138

50:                                               ; preds = %40
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @vaprintf(i8* %51, i32 %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i8*, i8** %11, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %59, i64* %4, align 8
  br label %138

60:                                               ; preds = %50
  store i64 0, i64* %8, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @strlen(i8* %61)
  store i64 %62, i64* %9, align 8
  %63 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %64 = call i32 @Curl_pp_init(%struct.pingpong* %63)
  %65 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @Curl_convert_to_network(%struct.Curl_easy* %65, i8* %66, i64 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i64, i64* %12, align 8
  store i64 %74, i64* %4, align 8
  br label %138

75:                                               ; preds = %60
  %76 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %77 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %78 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @FIRSTSOCKET, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @Curl_write(%struct.connectdata* %76, i32 %82, i8* %83, i64 %84, i64* %8)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i64, i64* %12, align 8
  store i64 %91, i64* %4, align 8
  br label %138

92:                                               ; preds = %75
  %93 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %94 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %93, i32 0, i32 1
  %95 = load %struct.Curl_easy*, %struct.Curl_easy** %94, align 8
  %96 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %102 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %101, i32 0, i32 1
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %102, align 8
  %104 = load i32, i32* @CURLINFO_HEADER_OUT, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @Curl_debug(%struct.Curl_easy* %103, i32 %104, i8* %105, i64 %106)
  br label %108

108:                                              ; preds = %100, %92
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load i8*, i8** %11, align 8
  %114 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %115 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %118 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %8, align 8
  %121 = sub i64 %119, %120
  %122 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %123 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %136

124:                                              ; preds = %108
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %128 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %127, i32 0, i32 2
  store i8* null, i8** %128, align 8
  %129 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %130 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %132 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  %133 = call i32 (...) @Curl_now()
  %134 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %135 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %124, %112
  %137 = load i64, i64* @CURLE_OK, align 8
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %136, %88, %71, %58, %48, %38
  %139 = load i64, i64* %4, align 8
  ret i64 %139
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i8* @aprintf(i8*, i8*) #1

declare dso_local i8* @vaprintf(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Curl_pp_init(%struct.pingpong*) #1

declare dso_local i64 @Curl_convert_to_network(%struct.Curl_easy*, i8*, i64) #1

declare dso_local i64 @Curl_write(%struct.connectdata*, i32, i8*, i64, i64*) #1

declare dso_local i32 @Curl_debug(%struct.Curl_easy*, i32, i8*, i64) #1

declare dso_local i32 @Curl_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
