; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_list.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__, %struct.Curl_easy* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i8**, i64 }
%struct.TYPE_5__ = type { %struct.FTP* }
%struct.FTP = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@FTPFILE_NOCWD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@STRING_CUSTOMREQUEST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NLST\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FTP_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @ftp_state_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_state_list(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.FTP*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %12 = load i64, i64* @CURLE_OK, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 1
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  store %struct.Curl_easy* %15, %struct.Curl_easy** %5, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.FTP*, %struct.FTP** %18, align 8
  store %struct.FTP* %19, %struct.FTP** %6, align 8
  store i8* null, i8** %7, align 8
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FTPFILE_NOCWD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %1
  %27 = load %struct.FTP*, %struct.FTP** %6, align 8
  %28 = getelementptr inbounds %struct.FTP, %struct.FTP* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %33 = load %struct.FTP*, %struct.FTP** %6, align 8
  %34 = getelementptr inbounds %struct.FTP, %struct.FTP* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i64 @Curl_urldecode(%struct.Curl_easy* %32, i64 %35, i32 0, i8** %10, i32* null, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %130

42:                                               ; preds = %31
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @strrchr(i8* %43, i8 signext 47)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %55, %47
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 0, i8* %62, align 1
  br label %66

63:                                               ; preds = %42
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66, %26, %1
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %69 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = load i64, i64* @STRING_CUSTOMREQUEST, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %78 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* @STRING_CUSTOMREQUEST, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  %83 = load i8*, i8** %82, align 8
  br label %92

84:                                               ; preds = %67
  %85 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %86 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  br label %92

92:                                               ; preds = %84, %76
  %93 = phi i8* [ %83, %76 ], [ %91, %84 ]
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %98 = load i8*, i8** %7, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i8*, i8** %7, align 8
  br label %103

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i8* [ %101, %100 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %102 ]
  %105 = call i8* @aprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %93, i8* %97, i8* %104)
  store i8* %105, i8** %8, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i8*, i8** %8, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %111, i64* %2, align 8
  br label %130

112:                                              ; preds = %103
  %113 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %114 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i8*, i8** %8, align 8
  %118 = call i64 @Curl_pp_sendf(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %117)
  store i64 %118, i64* %4, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i64, i64* %4, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i64, i64* %4, align 8
  store i64 %124, i64* %2, align 8
  br label %130

125:                                              ; preds = %112
  %126 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %127 = load i32, i32* @FTP_LIST, align 4
  %128 = call i32 @state(%struct.connectdata* %126, i32 %127)
  %129 = load i64, i64* %4, align 8
  store i64 %129, i64* %2, align 8
  br label %130

130:                                              ; preds = %125, %123, %110, %40
  %131 = load i64, i64* %2, align 8
  ret i64 %131
}

declare dso_local i64 @Curl_urldecode(%struct.Curl_easy*, i64, i32, i8**, i32*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @aprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @Curl_pp_sendf(i32*, i8*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
