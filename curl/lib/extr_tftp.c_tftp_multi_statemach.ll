; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_multi_statemach.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_multi_statemach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__, %struct.Curl_easy* }
%struct.TYPE_4__ = type { i64 }
%struct.Curl_easy = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TFTP response timeout\00", align 1
@CURLE_OPERATION_TIMEDOUT = common dso_local global i64 0, align 8
@TFTP_EVENT_NONE = common dso_local global i64 0, align 8
@TFTP_STATE_FIN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@STRERROR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TFTP_EVENT_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @tftp_multi_statemach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tftp_multi_statemach(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i64, i64* @CURLE_OK, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 1
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %17, align 8
  store %struct.Curl_easy* %18, %struct.Curl_easy** %8, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %9, align 8
  %24 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %25 = call i64 @tftp_state_timeout(%struct.connectdata* %24, i64* %6)
  store i64 %25, i64* %10, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i64, i64* %10, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %32 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @CURLE_OPERATION_TIMEDOUT, align 8
  store i64 %33, i64* %3, align 8
  br label %134

34:                                               ; preds = %2
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @TFTP_EVENT_NONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @tftp_state_machine(%struct.TYPE_5__* %39, i64 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %3, align 8
  br label %134

46:                                               ; preds = %38
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TFTP_STATE_FIN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @TRUE, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @FALSE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %63, i32 -1, i32 -1, i32 %64, i32 -1)
  br label %66

66:                                               ; preds = %62, %56
  br label %132

67:                                               ; preds = %34
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @SOCKET_READABLE(i32 %70, i32 0)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load i32, i32* @SOCKERRNO, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* @STRERROR_LEN, align 4
  %77 = zext i32 %76 to i64
  %78 = call i8* @llvm.stacksave()
  store i8* %78, i8** %13, align 8
  %79 = alloca i8, i64 %77, align 16
  store i64 %77, i64* %14, align 8
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = trunc i64 %77 to i32
  %83 = call i32 @Curl_strerror(i32 %81, i8* %79, i32 %82)
  %84 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i64, i64* @TFTP_EVENT_ERROR, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %88)
  br label %131

89:                                               ; preds = %67
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %130

92:                                               ; preds = %89
  %93 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %94 = call i64 @tftp_receive_packet(%struct.connectdata* %93)
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i64, i64* %7, align 8
  store i64 %98, i64* %3, align 8
  br label %134

99:                                               ; preds = %92
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @tftp_state_machine(%struct.TYPE_5__* %100, i64 %103)
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i64, i64* %7, align 8
  store i64 %108, i64* %3, align 8
  br label %134

109:                                              ; preds = %99
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TFTP_STATE_FIN, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @TRUE, align 4
  br label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @FALSE, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load i32*, i32** %5, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %127 = load i32, i32* @FALSE, align 4
  %128 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %126, i32 -1, i32 -1, i32 %127, i32 -1)
  br label %129

129:                                              ; preds = %125, %119
  br label %130

130:                                              ; preds = %129, %89
  br label %131

131:                                              ; preds = %130, %74
  br label %132

132:                                              ; preds = %131, %66
  %133 = load i64, i64* %7, align 8
  store i64 %133, i64* %3, align 8
  br label %134

134:                                              ; preds = %132, %107, %97, %44, %30
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

declare dso_local i64 @tftp_state_timeout(%struct.connectdata*, i64*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i64 @tftp_state_machine(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @Curl_setup_transfer(%struct.Curl_easy*, i32, i32, i32, i32) #1

declare dso_local i32 @SOCKET_READABLE(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Curl_strerror(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @tftp_receive_packet(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
