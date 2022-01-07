; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_statemach_act.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_statemach_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.imap_conn }
%struct.imap_conn = type { i32, %struct.pingpong }
%struct.pingpong = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i64 0, align 8
@IMAP_UPGRADETLS = common dso_local global i32 0, align 4
@CURLE_WEIRD_SERVER_REPLY = common dso_local global i64 0, align 8
@IMAP_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @imap_statemach_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imap_statemach_act(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.imap_conn*, align 8
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
  store %struct.imap_conn* %19, %struct.imap_conn** %7, align 8
  %20 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %21 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %20, i32 0, i32 1
  store %struct.pingpong* %21, %struct.pingpong** %8, align 8
  store i64 0, i64* %9, align 8
  %22 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %23 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IMAP_UPGRADETLS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %29 = call i64 @imap_perform_upgrade_tls(%struct.connectdata* %28)
  store i64 %29, i64* %2, align 8
  br label %160

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
  br label %160

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %156, %38
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
  br label %160

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* @CURLE_WEIRD_SERVER_REPLY, align 8
  store i64 %51, i64* %2, align 8
  br label %160

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %158

56:                                               ; preds = %52
  %57 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %58 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %138 [
    i32 129, label %60
    i32 137, label %67
    i32 128, label %74
    i32 138, label %81
    i32 133, label %88
    i32 134, label %95
    i32 131, label %95
    i32 130, label %102
    i32 136, label %109
    i32 135, label %116
    i32 140, label %123
    i32 139, label %130
    i32 132, label %137
  ]

60:                                               ; preds = %56
  %61 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %64 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @imap_state_servergreet_resp(%struct.connectdata* %61, i32 %62, i32 %65)
  store i64 %66, i64* %4, align 8
  br label %142

67:                                               ; preds = %56
  %68 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %71 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @imap_state_capability_resp(%struct.connectdata* %68, i32 %69, i32 %72)
  store i64 %73, i64* %4, align 8
  br label %142

74:                                               ; preds = %56
  %75 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %78 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @imap_state_starttls_resp(%struct.connectdata* %75, i32 %76, i32 %79)
  store i64 %80, i64* %4, align 8
  br label %142

81:                                               ; preds = %56
  %82 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %85 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @imap_state_auth_resp(%struct.connectdata* %82, i32 %83, i32 %86)
  store i64 %87, i64* %4, align 8
  br label %142

88:                                               ; preds = %56
  %89 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %92 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @imap_state_login_resp(%struct.connectdata* %89, i32 %90, i32 %93)
  store i64 %94, i64* %4, align 8
  br label %142

95:                                               ; preds = %56, %56
  %96 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %99 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @imap_state_listsearch_resp(%struct.connectdata* %96, i32 %97, i32 %100)
  store i64 %101, i64* %4, align 8
  br label %142

102:                                              ; preds = %56
  %103 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %106 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @imap_state_select_resp(%struct.connectdata* %103, i32 %104, i32 %107)
  store i64 %108, i64* %4, align 8
  br label %142

109:                                              ; preds = %56
  %110 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %113 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @imap_state_fetch_resp(%struct.connectdata* %110, i32 %111, i32 %114)
  store i64 %115, i64* %4, align 8
  br label %142

116:                                              ; preds = %56
  %117 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %120 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @imap_state_fetch_final_resp(%struct.connectdata* %117, i32 %118, i32 %121)
  store i64 %122, i64* %4, align 8
  br label %142

123:                                              ; preds = %56
  %124 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %127 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @imap_state_append_resp(%struct.connectdata* %124, i32 %125, i32 %128)
  store i64 %129, i64* %4, align 8
  br label %142

130:                                              ; preds = %56
  %131 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %134 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @imap_state_append_final_resp(%struct.connectdata* %131, i32 %132, i32 %135)
  store i64 %136, i64* %4, align 8
  br label %142

137:                                              ; preds = %56
  br label %138

138:                                              ; preds = %56, %137
  %139 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %140 = load i32, i32* @IMAP_STOP, align 4
  %141 = call i32 @state(%struct.connectdata* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %130, %123, %116, %109, %102, %95, %88, %81, %74, %67, %60
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %4, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %143
  %147 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %148 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @IMAP_STOP, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.pingpong*, %struct.pingpong** %8, align 8
  %154 = call i64 @Curl_pp_moredata(%struct.pingpong* %153)
  %155 = icmp ne i64 %154, 0
  br label %156

156:                                              ; preds = %152, %146, %143
  %157 = phi i1 [ false, %146 ], [ false, %143 ], [ %155, %152 ]
  br i1 %157, label %39, label %158

158:                                              ; preds = %156, %55
  %159 = load i64, i64* %4, align 8
  store i64 %159, i64* %2, align 8
  br label %160

160:                                              ; preds = %158, %50, %45, %35, %27
  %161 = load i64, i64* %2, align 8
  ret i64 %161
}

declare dso_local i64 @imap_perform_upgrade_tls(%struct.connectdata*) #1

declare dso_local i64 @Curl_pp_flushsend(%struct.pingpong*) #1

declare dso_local i64 @Curl_pp_readresp(i32, %struct.pingpong*, i32*, i64*) #1

declare dso_local i64 @imap_state_servergreet_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_capability_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_starttls_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_auth_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_login_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_listsearch_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_select_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_fetch_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_fetch_final_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_append_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @imap_state_append_final_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @Curl_pp_moredata(%struct.pingpong*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
