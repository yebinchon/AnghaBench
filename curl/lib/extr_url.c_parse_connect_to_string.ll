; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_parse_connect_to_string.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_parse_connect_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }
%struct.connectdata = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*, i8*, i8**, i32*)* @parse_connect_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_connect_to_string(%struct.Curl_easy* %0, %struct.connectdata* %1, i8* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca %struct.connectdata*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %7, align 8
  store %struct.connectdata* %1, %struct.connectdata** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* @CURLE_OK, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %13, align 8
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i8**, i8*** %10, align 8
  store i8* null, i8** %25, align 8
  %26 = load i32*, i32** %11, align 8
  store i32 -1, i32* %26, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 58
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %13, align 8
  br label %83

35:                                               ; preds = %5
  %36 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %37 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %48 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i8* @aprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %46, i8* %53)
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %35
  %58 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %58, i32* %6, align 4
  br label %133

59:                                               ; preds = %35
  %60 = load i8*, i8** %17, align 8
  %61 = call i64 @strlen(i8* %60)
  store i64 %61, i64* %16, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @strncasecompare(i8* %62, i8* %63, i64 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i8*, i8** %17, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i64, i64* %16, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %59
  %74 = load i8*, i8** %13, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 58
  br label %78

78:                                               ; preds = %73, %59
  %79 = phi i1 [ false, %59 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %13, align 8
  br label %83

83:                                               ; preds = %78, %31
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %83
  %87 = load i8*, i8** %13, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 58
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %15, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %13, align 8
  br label %118

95:                                               ; preds = %86
  %96 = load i8*, i8** %13, align 8
  %97 = call i8* @strchr(i8* %96, i8 signext 58)
  store i8* %97, i8** %18, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  store i8* null, i8** %19, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i64 @strtol(i8* %101, i8** %19, i32 10)
  store i64 %102, i64* %20, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = icmp eq i8* %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load i64, i64* %20, align 8
  %108 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %109 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %15, align 4
  %114 = load i8*, i8** %18, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8* %115, i8** %13, align 8
  br label %116

116:                                              ; preds = %112, %106, %100
  br label %117

117:                                              ; preds = %116, %95
  br label %118

118:                                              ; preds = %117, %91
  br label %119

119:                                              ; preds = %118, %83
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load i8**, i8*** %10, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @parse_connect_to_host_port(%struct.Curl_easy* %126, i8* %127, i8** %128, i32* %129)
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %125, %122, %119
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %131, %57
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i8* @aprintf(i8*, i8*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncasecompare(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @parse_connect_to_host_port(%struct.Curl_easy*, i8*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
