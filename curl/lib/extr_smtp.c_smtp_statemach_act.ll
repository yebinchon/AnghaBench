; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_statemach_act.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_statemach_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__, %struct.Curl_easy*, i32* }
%struct.TYPE_3__ = type { %struct.smtp_conn }
%struct.smtp_conn = type { i32, %struct.pingpong }
%struct.pingpong = type { i64 }
%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i64 0, align 8
@SMTP_UPGRADETLS = common dso_local global i32 0, align 4
@SMTP_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @smtp_statemach_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smtp_statemach_act(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smtp_conn*, align 8
  %9 = alloca %struct.pingpong*, align 8
  %10 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %11 = load i64, i64* @CURLE_OK, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @FIRSTSOCKET, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 1
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %19, align 8
  store %struct.Curl_easy* %20, %struct.Curl_easy** %6, align 8
  %21 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.smtp_conn* %23, %struct.smtp_conn** %8, align 8
  %24 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %25 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %24, i32 0, i32 1
  store %struct.pingpong* %25, %struct.pingpong** %9, align 8
  store i64 0, i64* %10, align 8
  %26 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %27 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SMTP_UPGRADETLS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %33 = call i64 @smtp_perform_upgrade_tls(%struct.connectdata* %32)
  store i64 %33, i64* %2, align 8
  br label %165

34:                                               ; preds = %1
  %35 = load %struct.pingpong*, %struct.pingpong** %9, align 8
  %36 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.pingpong*, %struct.pingpong** %9, align 8
  %41 = call i64 @Curl_pp_flushsend(%struct.pingpong* %40)
  store i64 %41, i64* %2, align 8
  br label %165

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %161, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.pingpong*, %struct.pingpong** %9, align 8
  %46 = call i64 @Curl_pp_readresp(i32 %44, %struct.pingpong* %45, i32* %7, i64* %10)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %165

51:                                               ; preds = %43
  %52 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %53 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 131
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %62 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %56, %51
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %163

68:                                               ; preds = %64
  %69 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %70 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %143 [
    i32 129, label %72
    i32 135, label %79
    i32 134, label %86
    i32 128, label %93
    i32 138, label %100
    i32 137, label %107
    i32 133, label %114
    i32 130, label %121
    i32 136, label %128
    i32 132, label %135
    i32 131, label %142
  ]

72:                                               ; preds = %68
  %73 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %76 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @smtp_state_servergreet_resp(%struct.connectdata* %73, i32 %74, i32 %77)
  store i64 %78, i64* %4, align 8
  br label %147

79:                                               ; preds = %68
  %80 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %83 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @smtp_state_ehlo_resp(%struct.connectdata* %80, i32 %81, i32 %84)
  store i64 %85, i64* %4, align 8
  br label %147

86:                                               ; preds = %68
  %87 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %90 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @smtp_state_helo_resp(%struct.connectdata* %87, i32 %88, i32 %91)
  store i64 %92, i64* %4, align 8
  br label %147

93:                                               ; preds = %68
  %94 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %97 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @smtp_state_starttls_resp(%struct.connectdata* %94, i32 %95, i32 %98)
  store i64 %99, i64* %4, align 8
  br label %147

100:                                              ; preds = %68
  %101 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %104 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @smtp_state_auth_resp(%struct.connectdata* %101, i32 %102, i32 %105)
  store i64 %106, i64* %4, align 8
  br label %147

107:                                              ; preds = %68
  %108 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %111 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @smtp_state_command_resp(%struct.connectdata* %108, i32 %109, i32 %112)
  store i64 %113, i64* %4, align 8
  br label %147

114:                                              ; preds = %68
  %115 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %118 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @smtp_state_mail_resp(%struct.connectdata* %115, i32 %116, i32 %119)
  store i64 %120, i64* %4, align 8
  br label %147

121:                                              ; preds = %68
  %122 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %125 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @smtp_state_rcpt_resp(%struct.connectdata* %122, i32 %123, i32 %126)
  store i64 %127, i64* %4, align 8
  br label %147

128:                                              ; preds = %68
  %129 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %132 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @smtp_state_data_resp(%struct.connectdata* %129, i32 %130, i32 %133)
  store i64 %134, i64* %4, align 8
  br label %147

135:                                              ; preds = %68
  %136 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %139 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @smtp_state_postdata_resp(%struct.connectdata* %136, i32 %137, i32 %140)
  store i64 %141, i64* %4, align 8
  br label %147

142:                                              ; preds = %68
  br label %143

143:                                              ; preds = %68, %142
  %144 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %145 = load i32, i32* @SMTP_STOP, align 4
  %146 = call i32 @state(%struct.connectdata* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %135, %128, %121, %114, %107, %100, %93, %86, %79, %72
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %4, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %148
  %152 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %153 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SMTP_STOP, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load %struct.pingpong*, %struct.pingpong** %9, align 8
  %159 = call i64 @Curl_pp_moredata(%struct.pingpong* %158)
  %160 = icmp ne i64 %159, 0
  br label %161

161:                                              ; preds = %157, %151, %148
  %162 = phi i1 [ false, %151 ], [ false, %148 ], [ %160, %157 ]
  br i1 %162, label %43, label %163

163:                                              ; preds = %161, %67
  %164 = load i64, i64* %4, align 8
  store i64 %164, i64* %2, align 8
  br label %165

165:                                              ; preds = %163, %49, %39, %31
  %166 = load i64, i64* %2, align 8
  ret i64 %166
}

declare dso_local i64 @smtp_perform_upgrade_tls(%struct.connectdata*) #1

declare dso_local i64 @Curl_pp_flushsend(%struct.pingpong*) #1

declare dso_local i64 @Curl_pp_readresp(i32, %struct.pingpong*, i32*, i64*) #1

declare dso_local i64 @smtp_state_servergreet_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @smtp_state_ehlo_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @smtp_state_helo_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @smtp_state_starttls_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @smtp_state_auth_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @smtp_state_command_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @smtp_state_mail_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @smtp_state_rcpt_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @smtp_state_data_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @smtp_state_postdata_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @Curl_pp_moredata(%struct.pingpong*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
