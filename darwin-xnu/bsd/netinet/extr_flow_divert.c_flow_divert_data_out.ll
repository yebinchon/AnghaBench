; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_data_out.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_data_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32, i32, i64 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { i64 }

@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@INPCB_STATE_DEAD = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@FLOW_DIVERT_CONNECT_STARTED = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"implicit connect\00", align 1
@SOF1_DATA_IDEMPOTENT = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"app wrote %lu bytes\00", align 1
@PRUS_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, i32*, %struct.sockaddr*, i32*, %struct.proc*)* @flow_divert_data_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_data_out(%struct.socket* %0, i32 %1, i32* %2, %struct.sockaddr* %3, i32* %4, %struct.proc* %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca %struct.flow_divert_pcb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.proc* %5, %struct.proc** %12, align 8
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 2
  %18 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %17, align 8
  store %struct.flow_divert_pcb* %18, %struct.flow_divert_pcb** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load %struct.socket*, %struct.socket** %7, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 2
  %28 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %27, align 8
  %29 = icmp ne %struct.flow_divert_pcb* %28, null
  br label %30

30:                                               ; preds = %25, %6
  %31 = phi i1 [ false, %6 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.socket*, %struct.socket** %7, align 8
  %35 = call %struct.inpcb* @sotoinpcb(%struct.socket* %34)
  store %struct.inpcb* %35, %struct.inpcb** %15, align 8
  %36 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %37 = icmp eq %struct.inpcb* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.inpcb*, %struct.inpcb** %15, align 8
  %40 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %30
  %45 = load i32, i32* @ECONNRESET, align 4
  store i32 %45, i32* %14, align 4
  br label %137

46:                                               ; preds = %38
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @mbuf_len(i32* %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %14, align 4
  br label %137

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MSG_OOB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %14, align 4
  br label %137

62:                                               ; preds = %55
  %63 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %13, align 8
  %64 = call i64 @flow_divert_check_no_cellular(%struct.flow_divert_pcb* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %13, align 8
  %68 = call i64 @flow_divert_check_no_expensive(%struct.flow_divert_pcb* %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i1 [ true, %62 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %137

76:                                               ; preds = %70
  %77 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %13, align 8
  %78 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @FLOW_DIVERT_CONNECT_STARTED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %107, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @LOG_INFO, align 4
  %85 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %13, align 8
  %86 = call i32 @FDLOG0(i32 %84, %struct.flow_divert_pcb* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.socket*, %struct.socket** %7, align 8
  %88 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %89 = load %struct.proc*, %struct.proc** %12, align 8
  %90 = call i32 @flow_divert_connect_out(%struct.socket* %87, %struct.sockaddr* %88, %struct.proc* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %137

94:                                               ; preds = %83
  %95 = load %struct.socket*, %struct.socket** %7, align 8
  %96 = getelementptr inbounds %struct.socket, %struct.socket* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SOF1_DATA_IDEMPOTENT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i32*, i32** %9, align 8
  %103 = call i64 @mbuf_pkthdr_len(i32* %102)
  %104 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %13, align 8
  %105 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %94
  br label %107

107:                                              ; preds = %106, %76
  %108 = load i32, i32* @LOG_DEBUG, align 4
  %109 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %13, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i64 @mbuf_pkthdr_len(i32* %110)
  %112 = call i32 @FDLOG(i32 %108, %struct.flow_divert_pcb* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %9, align 8
  %114 = call i64 @mbuf_pkthdr_len(i32* %113)
  %115 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %13, align 8
  %116 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %13, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %124 = call i32 @flow_divert_send_app_data(%struct.flow_divert_pcb* %121, i32* %122, %struct.sockaddr* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %107
  br label %137

128:                                              ; preds = %107
  store i32* null, i32** %9, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @PRUS_EOF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.socket*, %struct.socket** %7, align 8
  %135 = call i32 @flow_divert_shutdown(%struct.socket* %134)
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %136, %127, %93, %75, %60, %53, %44
  %138 = load i32*, i32** %9, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @mbuf_freem(i32* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32*, i32** %11, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @mbuf_free(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %14, align 4
  ret i32 %150
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i64 @mbuf_len(i32*) #1

declare dso_local i64 @flow_divert_check_no_cellular(%struct.flow_divert_pcb*) #1

declare dso_local i64 @flow_divert_check_no_expensive(%struct.flow_divert_pcb*) #1

declare dso_local i32 @FDLOG0(i32, %struct.flow_divert_pcb*, i8*) #1

declare dso_local i32 @flow_divert_connect_out(%struct.socket*, %struct.sockaddr*, %struct.proc*) #1

declare dso_local i64 @mbuf_pkthdr_len(i32*) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i64) #1

declare dso_local i32 @flow_divert_send_app_data(%struct.flow_divert_pcb*, i32*, %struct.sockaddr*) #1

declare dso_local i32 @flow_divert_shutdown(%struct.socket*) #1

declare dso_local i32 @mbuf_freem(i32*) #1

declare dso_local i32 @mbuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
