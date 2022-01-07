; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_content_encoding.c_Curl_build_unencoding_stack.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_content_encoding.c_Curl_build_unencoding_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.SingleRequest }
%struct.SingleRequest = type { i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@TRUE = common dso_local global i32 0, align 4
@client_encoding = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@error_encoding = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_build_unencoding_stack(%struct.connectdata* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.SingleRequest*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 0
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %8, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  store %struct.SingleRequest* %18, %struct.SingleRequest** %9, align 8
  br label %19

19:                                               ; preds = %127, %3
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @ISSPACE(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 44
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ true, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %20

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %37

37:                                               ; preds = %62, %35
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 44
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %65

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @ISSPACE(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %54, %49
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  br label %37

65:                                               ; preds = %47
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, 7
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i8*, i8** %10, align 8
  %73 = call i64 @strncasecompare(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @TRUE, align 4
  %77 = load %struct.SingleRequest*, %struct.SingleRequest** %9, align 8
  %78 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %80 = call i32 @Curl_httpchunk_init(%struct.connectdata* %79)
  br label %126

81:                                               ; preds = %71, %68, %65
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %125

84:                                               ; preds = %81
  %85 = load i8*, i8** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i32* @find_encoding(i8* %85, i64 %86)
  store i32* %87, i32** %12, align 8
  %88 = load %struct.SingleRequest*, %struct.SingleRequest** %9, align 8
  %89 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %105, label %92

92:                                               ; preds = %84
  %93 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %94 = call i8* @new_unencoding_writer(%struct.connectdata* %93, i32* @client_encoding, i32* null)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.SingleRequest*, %struct.SingleRequest** %9, align 8
  %97 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %96, i32 0, i32 0
  store i32* %95, i32** %97, align 8
  %98 = load %struct.SingleRequest*, %struct.SingleRequest** %9, align 8
  %99 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %103, i32* %4, align 4
  br label %133

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %84
  %106 = load i32*, i32** %12, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32* @error_encoding, i32** %12, align 8
  br label %109

109:                                              ; preds = %108, %105
  %110 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load %struct.SingleRequest*, %struct.SingleRequest** %9, align 8
  %113 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i8* @new_unencoding_writer(%struct.connectdata* %110, i32* %111, i32* %114)
  %116 = bitcast i8* %115 to i32*
  store i32* %116, i32** %13, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %109
  %120 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %120, i32* %4, align 4
  br label %133

121:                                              ; preds = %109
  %122 = load i32*, i32** %13, align 8
  %123 = load %struct.SingleRequest*, %struct.SingleRequest** %9, align 8
  %124 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %123, i32 0, i32 0
  store i32* %122, i32** %124, align 8
  br label %125

125:                                              ; preds = %121, %81
  br label %126

126:                                              ; preds = %125, %75
  br label %127

127:                                              ; preds = %126
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %19, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @CURLE_OK, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %119, %102
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @strncasecompare(i8*, i8*, i32) #1

declare dso_local i32 @Curl_httpchunk_init(%struct.connectdata*) #1

declare dso_local i32* @find_encoding(i8*, i64) #1

declare dso_local i8* @new_unencoding_writer(%struct.connectdata*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
