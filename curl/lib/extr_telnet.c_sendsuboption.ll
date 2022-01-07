; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_sendsuboption.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_sendsuboption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32*, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.TELNET = type { i64, i32, i32 }

@CURL_IAC = common dso_local global i8 0, align 1
@CURL_SB = common dso_local global i8 0, align 1
@CURL_SE = common dso_local global i8 0, align 1
@FIRSTSOCKET = common dso_local global i64 0, align 8
@SOCKERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sending data failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, i32)* @sendsuboption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendsuboption(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.Curl_easy*, align 8
  %12 = alloca %struct.TELNET*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 1
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  store %struct.Curl_easy* %15, %struct.Curl_easy** %11, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TELNET*
  store %struct.TELNET* %20, %struct.TELNET** %12, align 8
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %133 [
    i32 128, label %22
  ]

22:                                               ; preds = %2
  %23 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %24 = call i32 @CURL_SB_CLEAR(%struct.TELNET* %23)
  %25 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %26 = load i8, i8* @CURL_IAC, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 @CURL_SB_ACCUM(%struct.TELNET* %25, i32 %27)
  %29 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %30 = load i8, i8* @CURL_SB, align 1
  %31 = zext i8 %30 to i32
  %32 = call i32 @CURL_SB_ACCUM(%struct.TELNET* %29, i32 %31)
  %33 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %34 = call i32 @CURL_SB_ACCUM(%struct.TELNET* %33, i32 128)
  %35 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %36 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call zeroext i16 @htons(i32 %37)
  store i16 %38, i16* %7, align 2
  %39 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %40 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call zeroext i16 @htons(i32 %41)
  store i16 %42, i16* %8, align 2
  %43 = bitcast i16* %7 to i8*
  store i8* %43, i8** %9, align 8
  %44 = bitcast i16* %8 to i8*
  store i8* %44, i8** %10, align 8
  %45 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = call i32 @CURL_SB_ACCUM(%struct.TELNET* %45, i32 %49)
  %51 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 @CURL_SB_ACCUM(%struct.TELNET* %51, i32 %55)
  %57 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 @CURL_SB_ACCUM(%struct.TELNET* %57, i32 %61)
  %63 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = call i32 @CURL_SB_ACCUM(%struct.TELNET* %63, i32 %67)
  %69 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %70 = load i8, i8* @CURL_IAC, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 @CURL_SB_ACCUM(%struct.TELNET* %69, i32 %71)
  %73 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %74 = load i8, i8* @CURL_SE, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 @CURL_SB_ACCUM(%struct.TELNET* %73, i32 %75)
  %77 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %78 = call i32 @CURL_SB_TERM(%struct.TELNET* %77)
  %79 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %80 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %81 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %86 = call i32 @CURL_SB_LEN(%struct.TELNET* %85)
  %87 = sub nsw i32 %86, 2
  %88 = call i32 @printsub(%struct.Curl_easy* %79, i8 signext 62, i8* %84, i32 %87)
  %89 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %90 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @FIRSTSOCKET, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %96 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @swrite(i32 %94, i64 %97, i32 3)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %22
  %102 = load i32, i32* @SOCKERRNO, align 4
  store i32 %102, i32* %6, align 4
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @failf(%struct.Curl_easy* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %22
  %107 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %108 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %109 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  %113 = call i32 @send_telnet_data(%struct.connectdata* %107, i8* %112, i32 4)
  %114 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %115 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @FIRSTSOCKET, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TELNET*, %struct.TELNET** %12, align 8
  %121 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 7
  %124 = call i32 @swrite(i32 %119, i64 %123, i32 2)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %106
  %128 = load i32, i32* @SOCKERRNO, align 4
  store i32 %128, i32* %6, align 4
  %129 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @failf(%struct.Curl_easy* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %106
  br label %133

133:                                              ; preds = %2, %132
  ret void
}

declare dso_local i32 @CURL_SB_CLEAR(%struct.TELNET*) #1

declare dso_local i32 @CURL_SB_ACCUM(%struct.TELNET*, i32) #1

declare dso_local zeroext i16 @htons(i32) #1

declare dso_local i32 @CURL_SB_TERM(%struct.TELNET*) #1

declare dso_local i32 @printsub(%struct.Curl_easy*, i8 signext, i8*, i32) #1

declare dso_local i32 @CURL_SB_LEN(%struct.TELNET*) #1

declare dso_local i32 @swrite(i32, i64, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @send_telnet_data(%struct.connectdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
