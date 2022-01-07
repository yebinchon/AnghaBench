; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_statemach_act.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_statemach_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i32, %struct.pingpong }
%struct.pingpong = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i64 0, align 8
@POP3_UPGRADETLS = common dso_local global i32 0, align 4
@POP3_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @pop3_statemach_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pop3_statemach_act(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pop3_conn*, align 8
  %8 = alloca %struct.pingpong*, align 8
  %9 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %10 = load i64, i64* @CURLE_OK, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @FIRSTSOCKET, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.pop3_conn* %19, %struct.pop3_conn** %7, align 8
  %20 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %21 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %20, i32 0, i32 1
  store %struct.pingpong* %21, %struct.pingpong** %8, align 8
  store i64 0, i64* %9, align 8
  %22 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %23 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @POP3_UPGRADETLS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %29 = call i64 @pop3_perform_upgrade_tls(%struct.connectdata* %28)
  store i64 %29, i64* %2, align 8
  br label %134

30:                                               ; preds = %1
  %31 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %32 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %37 = call i64 @Curl_pp_flushsend(%struct.pingpong* %36)
  store i64 %37, i64* %2, align 8
  br label %134

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %130, %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %42 = call i64 @Curl_pp_readresp(i32 %40, %struct.pingpong* %41, i32* %6, i64* %9)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %134

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %132

51:                                               ; preds = %47
  %52 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %53 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %112 [
    i32 130, label %55
    i32 134, label %62
    i32 129, label %69
    i32 135, label %76
    i32 136, label %83
    i32 128, label %90
    i32 132, label %97
    i32 133, label %104
    i32 131, label %111
  ]

55:                                               ; preds = %51
  %56 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %59 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @pop3_state_servergreet_resp(%struct.connectdata* %56, i32 %57, i32 %60)
  store i64 %61, i64* %4, align 8
  br label %116

62:                                               ; preds = %51
  %63 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %66 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @pop3_state_capa_resp(%struct.connectdata* %63, i32 %64, i32 %67)
  store i64 %68, i64* %4, align 8
  br label %116

69:                                               ; preds = %51
  %70 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %73 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @pop3_state_starttls_resp(%struct.connectdata* %70, i32 %71, i32 %74)
  store i64 %75, i64* %4, align 8
  br label %116

76:                                               ; preds = %51
  %77 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %80 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @pop3_state_auth_resp(%struct.connectdata* %77, i32 %78, i32 %81)
  store i64 %82, i64* %4, align 8
  br label %116

83:                                               ; preds = %51
  %84 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %87 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @pop3_state_apop_resp(%struct.connectdata* %84, i32 %85, i32 %88)
  store i64 %89, i64* %4, align 8
  br label %116

90:                                               ; preds = %51
  %91 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %94 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @pop3_state_user_resp(%struct.connectdata* %91, i32 %92, i32 %95)
  store i64 %96, i64* %4, align 8
  br label %116

97:                                               ; preds = %51
  %98 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %101 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @pop3_state_pass_resp(%struct.connectdata* %98, i32 %99, i32 %102)
  store i64 %103, i64* %4, align 8
  br label %116

104:                                              ; preds = %51
  %105 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %108 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @pop3_state_command_resp(%struct.connectdata* %105, i32 %106, i32 %109)
  store i64 %110, i64* %4, align 8
  br label %116

111:                                              ; preds = %51
  br label %112

112:                                              ; preds = %51, %111
  %113 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %114 = load i32, i32* @POP3_STOP, align 4
  %115 = call i32 @state(%struct.connectdata* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %104, %97, %90, %83, %76, %69, %62, %55
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %4, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %117
  %121 = load %struct.pop3_conn*, %struct.pop3_conn** %7, align 8
  %122 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @POP3_STOP, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %128 = call i64 @Curl_pp_moredata(%struct.pingpong* %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %126, %120, %117
  %131 = phi i1 [ false, %120 ], [ false, %117 ], [ %129, %126 ]
  br i1 %131, label %39, label %132

132:                                              ; preds = %130, %50
  %133 = load i64, i64* %4, align 8
  store i64 %133, i64* %2, align 8
  br label %134

134:                                              ; preds = %132, %45, %35, %27
  %135 = load i64, i64* %2, align 8
  ret i64 %135
}

declare dso_local i64 @pop3_perform_upgrade_tls(%struct.connectdata*) #1

declare dso_local i64 @Curl_pp_flushsend(%struct.pingpong*) #1

declare dso_local i64 @Curl_pp_readresp(i32, %struct.pingpong*, i32*, i64*) #1

declare dso_local i64 @pop3_state_servergreet_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @pop3_state_capa_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @pop3_state_starttls_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @pop3_state_auth_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @pop3_state_apop_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @pop3_state_user_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @pop3_state_pass_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @pop3_state_command_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @Curl_pp_moredata(%struct.pingpong*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
