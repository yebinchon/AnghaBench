; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_statemach.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_statemach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong = type { i64 (%struct.connectdata*)*, i64, %struct.connectdata.0* }
%struct.connectdata = type opaque
%struct.connectdata.0 = type { %struct.Curl_easy*, i32* }
%struct.Curl_easy = type { i32 }

@FIRSTSOCKET = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"server response timeout\00", align 1
@CURLE_OPERATION_TIMEDOUT = common dso_local global i64 0, align 8
@CURL_SOCKET_BAD = common dso_local global i32 0, align 4
@CURLE_ABORTED_BY_CALLBACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"select/poll error\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_pp_statemach(%struct.pingpong* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pingpong*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.connectdata.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.Curl_easy*, align 8
  %14 = alloca i64, align 8
  store %struct.pingpong* %0, %struct.pingpong** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %16 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %15, i32 0, i32 2
  %17 = load %struct.connectdata.0*, %struct.connectdata.0** %16, align 8
  store %struct.connectdata.0* %17, %struct.connectdata.0** %8, align 8
  %18 = load %struct.connectdata.0*, %struct.connectdata.0** %8, align 8
  %19 = getelementptr inbounds %struct.connectdata.0, %struct.connectdata.0* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @FIRSTSOCKET, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @Curl_pp_state_timeout(%struct.pingpong* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.connectdata.0*, %struct.connectdata.0** %8, align 8
  %28 = getelementptr inbounds %struct.connectdata.0, %struct.connectdata.0* %27, i32 0, i32 0
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %28, align 8
  store %struct.Curl_easy* %29, %struct.Curl_easy** %13, align 8
  %30 = load i64, i64* @CURLE_OK, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %35 = call i32 @failf(%struct.Curl_easy* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* @CURLE_OPERATION_TIMEDOUT, align 8
  store i64 %36, i64* %4, align 8
  br label %135

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  store i32 1000, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %40
  br label %48

47:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.connectdata.0*, %struct.connectdata.0** %8, align 8
  %50 = load i64, i64* @FIRSTSOCKET, align 8
  %51 = call i64 @Curl_ssl_data_pending(%struct.connectdata.0* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  br label %96

54:                                               ; preds = %48
  %55 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %56 = call i64 @Curl_pp_moredata(%struct.pingpong* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %95

59:                                               ; preds = %54
  %60 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %61 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.connectdata.0*, %struct.connectdata.0** %8, align 8
  %66 = load i64, i64* @FIRSTSOCKET, align 8
  %67 = call i64 @Curl_ssl_data_pending(%struct.connectdata.0* %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %10, align 4
  br label %94

70:                                               ; preds = %64, %59
  %71 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %72 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @CURL_SOCKET_BAD, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %82 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %83 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  br label %90

88:                                               ; preds = %79
  %89 = load i32, i32* @CURL_SOCKET_BAD, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @Curl_socket_check(i32 %80, i32 %81, i32 %91, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %69
  br label %95

95:                                               ; preds = %94, %58
  br label %96

96:                                               ; preds = %95, %53
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load %struct.connectdata.0*, %struct.connectdata.0** %8, align 8
  %101 = call i64 @Curl_pgrsUpdate(%struct.connectdata.0* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* @CURLE_ABORTED_BY_CALLBACK, align 8
  store i64 %104, i64* %14, align 8
  br label %109

105:                                              ; preds = %99
  %106 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %107 = call i32 (...) @Curl_now()
  %108 = call i64 @Curl_speedcheck(%struct.Curl_easy* %106, i32 %107)
  store i64 %108, i64* %14, align 8
  br label %109

109:                                              ; preds = %105, %103
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* %14, align 8
  store i64 %113, i64* %4, align 8
  br label %135

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %96
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %120 = call i32 @failf(%struct.Curl_easy* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %121, i64* %14, align 8
  br label %133

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.pingpong*, %struct.pingpong** %5, align 8
  %127 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %126, i32 0, i32 0
  %128 = load i64 (%struct.connectdata*)*, i64 (%struct.connectdata*)** %127, align 8
  %129 = load %struct.connectdata.0*, %struct.connectdata.0** %8, align 8
  %130 = bitcast %struct.connectdata.0* %129 to %struct.connectdata*
  %131 = call i64 %128(%struct.connectdata* %130)
  store i64 %131, i64* %14, align 8
  br label %132

132:                                              ; preds = %125, %122
  br label %133

133:                                              ; preds = %132, %118
  %134 = load i64, i64* %14, align 8
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %133, %112, %33
  %136 = load i64, i64* %4, align 8
  ret i64 %136
}

declare dso_local i32 @Curl_pp_state_timeout(%struct.pingpong*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @Curl_ssl_data_pending(%struct.connectdata.0*, i64) #1

declare dso_local i64 @Curl_pp_moredata(%struct.pingpong*) #1

declare dso_local i32 @Curl_socket_check(i32, i32, i32, i32) #1

declare dso_local i64 @Curl_pgrsUpdate(%struct.connectdata.0*) #1

declare dso_local i64 @Curl_speedcheck(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
