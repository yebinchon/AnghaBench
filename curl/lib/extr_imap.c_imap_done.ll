; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_10__, %struct.Curl_easy* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.IMAP* }
%struct.IMAP = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"IMAP done with bad status\00", align 1
@MIMEKIND_NONE = common dso_local global i64 0, align 8
@IMAP_FETCH_FINAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IMAP_APPEND_FINAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FTPTRANSFER_BODY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i64, i32)* @imap_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imap_done(%struct.connectdata* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca %struct.IMAP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @CURLE_OK, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 1
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %9, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.IMAP*, %struct.IMAP** %17, align 8
  store %struct.IMAP* %18, %struct.IMAP** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %21 = icmp ne %struct.IMAP* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* @CURLE_OK, align 8
  store i64 %23, i64* %4, align 8
  br label %147

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %29 = call i32 @connclose(%struct.connectdata* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %8, align 8
  br label %106

31:                                               ; preds = %24
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %105, label %37

37:                                               ; preds = %31
  %38 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %39 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %105, label %42

42:                                               ; preds = %37
  %43 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %44 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %42
  %48 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %49 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %47
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %54 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %60 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MIMEKIND_NONE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %58, %52, %47, %42
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %68 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %66
  %73 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %74 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MIMEKIND_NONE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %82 = load i32, i32* @IMAP_FETCH_FINAL, align 4
  %83 = call i32 @state(%struct.connectdata* %81, i32 %82)
  br label %97

84:                                               ; preds = %72, %66
  %85 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %86 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = call i64 @Curl_pp_sendf(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %84
  %93 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %94 = load i32, i32* @IMAP_APPEND_FINAL, align 4
  %95 = call i32 @state(%struct.connectdata* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %84
  br label %97

97:                                               ; preds = %96, %80
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %102 = load i32, i32* @FALSE, align 4
  %103 = call i64 @imap_block_statemach(%struct.connectdata* %101, i32 %102)
  store i64 %103, i64* %8, align 8
  br label %104

104:                                              ; preds = %100, %97
  br label %105

105:                                              ; preds = %104, %58, %37, %31
  br label %106

106:                                              ; preds = %105, %27
  %107 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %108 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %107, i32 0, i32 9
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @Curl_safefree(i64 %109)
  %111 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %112 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %111, i32 0, i32 8
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @Curl_safefree(i64 %113)
  %115 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %116 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @Curl_safefree(i64 %117)
  %119 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %120 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @Curl_safefree(i64 %121)
  %123 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %124 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @Curl_safefree(i64 %125)
  %127 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %128 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @Curl_safefree(i64 %129)
  %131 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %132 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @Curl_safefree(i64 %133)
  %135 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %136 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @Curl_safefree(i64 %137)
  %139 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %140 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @Curl_safefree(i64 %141)
  %143 = load i32, i32* @FTPTRANSFER_BODY, align 4
  %144 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %145 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i64, i64* %8, align 8
  store i64 %146, i64* %4, align 8
  br label %147

147:                                              ; preds = %106, %22
  %148 = load i64, i64* %4, align 8
  ret i64 %148
}

declare dso_local i32 @connclose(%struct.connectdata*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @Curl_pp_sendf(i32*, i8*, i8*) #1

declare dso_local i64 @imap_block_statemach(%struct.connectdata*, i32) #1

declare dso_local i32 @Curl_safefree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
