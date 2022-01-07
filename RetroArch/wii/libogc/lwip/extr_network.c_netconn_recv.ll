; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_recv.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { %struct.pbuf*, %struct.TYPE_8__, i32, i32*, i64, %struct.pbuf* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.netconn* }
%struct.TYPE_7__ = type { i32 }
%struct.pbuf = type { i32 }
%struct.netconn = type { i64, i64, i64, i8*, i32 (%struct.netconn*, i32, i32)*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.api_msg = type { %struct.pbuf*, %struct.TYPE_8__, i32, i32*, i64, %struct.pbuf* }

@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@ERR_CONN = common dso_local global i8* null, align 8
@ERR_OK = common dso_local global i8* null, align 8
@NETCONN_TCP = common dso_local global i64 0, align 8
@LISTEN = common dso_local global i64 0, align 8
@MEMP_NETBUF = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i8* null, align 8
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@NETCONN_EVTRCVMINUS = common dso_local global i32 0, align 4
@MEMP_API_MSG = common dso_local global i32 0, align 4
@APIMSG_RECV = common dso_local global i32 0, align 4
@API_LIB_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"netconn_recv: received %p (err %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netbuf* (%struct.netconn*)* @netconn_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netbuf* @netconn_recv(%struct.netconn* %0) #0 {
  %2 = alloca %struct.netbuf*, align 8
  %3 = alloca %struct.netconn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.api_msg*, align 8
  %6 = alloca %struct.netbuf*, align 8
  %7 = alloca %struct.pbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.netconn* %0, %struct.netconn** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.netconn*, %struct.netconn** %3, align 8
  %10 = icmp eq %struct.netconn* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.netbuf* null, %struct.netbuf** %2, align 8
  br label %200

12:                                               ; preds = %1
  %13 = load %struct.netconn*, %struct.netconn** %3, align 8
  %14 = getelementptr inbounds %struct.netconn, %struct.netconn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SYS_MBOX_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i8*, i8** @ERR_CONN, align 8
  %20 = load %struct.netconn*, %struct.netconn** %3, align 8
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  store %struct.netbuf* null, %struct.netbuf** %2, align 8
  br label %200

22:                                               ; preds = %12
  %23 = load %struct.netconn*, %struct.netconn** %3, align 8
  %24 = getelementptr inbounds %struct.netconn, %struct.netconn* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** @ERR_OK, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.netbuf* null, %struct.netbuf** %2, align 8
  br label %200

29:                                               ; preds = %22
  %30 = load %struct.netconn*, %struct.netconn** %3, align 8
  %31 = getelementptr inbounds %struct.netconn, %struct.netconn* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NETCONN_TCP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %158

35:                                               ; preds = %29
  %36 = load %struct.netconn*, %struct.netconn** %3, align 8
  %37 = getelementptr inbounds %struct.netconn, %struct.netconn* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LISTEN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i8*, i8** @ERR_CONN, align 8
  %46 = load %struct.netconn*, %struct.netconn** %3, align 8
  %47 = getelementptr inbounds %struct.netconn, %struct.netconn* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  store %struct.netbuf* null, %struct.netbuf** %2, align 8
  br label %200

48:                                               ; preds = %35
  %49 = load i32, i32* @MEMP_NETBUF, align 4
  %50 = call %struct.netbuf* @memp_malloc(i32 %49)
  store %struct.netbuf* %50, %struct.netbuf** %6, align 8
  %51 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %52 = icmp eq %struct.netbuf* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8*, i8** @ERR_MEM, align 8
  %55 = load %struct.netconn*, %struct.netconn** %3, align 8
  %56 = getelementptr inbounds %struct.netconn, %struct.netconn* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  store %struct.netbuf* null, %struct.netbuf** %2, align 8
  br label %200

57:                                               ; preds = %48
  %58 = load %struct.netconn*, %struct.netconn** %3, align 8
  %59 = getelementptr inbounds %struct.netconn, %struct.netconn* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = ptrtoint %struct.pbuf** %7 to i32
  %62 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %63 = call i32 @MQ_Receive(i64 %60, i32 %61, i32 %62)
  %64 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %65 = icmp ne %struct.pbuf* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %68 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.netconn*, %struct.netconn** %3, align 8
  %72 = getelementptr inbounds %struct.netconn, %struct.netconn* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %76

75:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %66
  %77 = load %struct.netconn*, %struct.netconn** %3, align 8
  %78 = getelementptr inbounds %struct.netconn, %struct.netconn* %77, i32 0, i32 4
  %79 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %78, align 8
  %80 = icmp ne i32 (%struct.netconn*, i32, i32)* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.netconn*, %struct.netconn** %3, align 8
  %83 = getelementptr inbounds %struct.netconn, %struct.netconn* %82, i32 0, i32 4
  %84 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %83, align 8
  %85 = load %struct.netconn*, %struct.netconn** %3, align 8
  %86 = load i32, i32* @NETCONN_EVTRCVMINUS, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 %84(%struct.netconn* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %91 = icmp eq %struct.pbuf* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, i32* @MEMP_NETBUF, align 4
  %94 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %95 = call i32 @memp_free(i32 %93, %struct.netbuf* %94)
  %96 = load %struct.netconn*, %struct.netconn** %3, align 8
  %97 = getelementptr inbounds %struct.netconn, %struct.netconn* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @MQ_Close(i64 %98)
  %100 = load i64, i64* @SYS_MBOX_NULL, align 8
  %101 = load %struct.netconn*, %struct.netconn** %3, align 8
  %102 = getelementptr inbounds %struct.netconn, %struct.netconn* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  store %struct.netbuf* null, %struct.netbuf** %2, align 8
  br label %200

103:                                              ; preds = %89
  %104 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %105 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %106 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %105, i32 0, i32 0
  store %struct.pbuf* %104, %struct.pbuf** %106, align 8
  %107 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %108 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %109 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %108, i32 0, i32 5
  store %struct.pbuf* %107, %struct.pbuf** %109, align 8
  %110 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %111 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %110, i32 0, i32 4
  store i64 0, i64* %111, align 8
  %112 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %113 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %112, i32 0, i32 3
  store i32* null, i32** %113, align 8
  %114 = load i32, i32* @MEMP_API_MSG, align 4
  %115 = call %struct.netbuf* @memp_malloc(i32 %114)
  %116 = bitcast %struct.netbuf* %115 to %struct.api_msg*
  store %struct.api_msg* %116, %struct.api_msg** %5, align 8
  %117 = icmp eq %struct.api_msg* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %103
  %119 = load i8*, i8** @ERR_MEM, align 8
  %120 = load %struct.netconn*, %struct.netconn** %3, align 8
  %121 = getelementptr inbounds %struct.netconn, %struct.netconn* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  store %struct.netbuf* %122, %struct.netbuf** %2, align 8
  br label %200

123:                                              ; preds = %103
  %124 = load i32, i32* @APIMSG_RECV, align 4
  %125 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %126 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.netconn*, %struct.netconn** %3, align 8
  %128 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %129 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store %struct.netconn* %127, %struct.netconn** %130, align 8
  %131 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %132 = icmp ne %struct.netbuf* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %123
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %136 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 8
  br label %144

139:                                              ; preds = %123
  %140 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %141 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %139, %133
  %145 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %146 = bitcast %struct.api_msg* %145 to %struct.netbuf*
  %147 = call i32 @apimsg_post(%struct.netbuf* %146)
  %148 = load %struct.netconn*, %struct.netconn** %3, align 8
  %149 = getelementptr inbounds %struct.netconn, %struct.netconn* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = ptrtoint i64* %4 to i32
  %152 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %153 = call i32 @MQ_Receive(i64 %150, i32 %151, i32 %152)
  %154 = load i32, i32* @MEMP_API_MSG, align 4
  %155 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %156 = bitcast %struct.api_msg* %155 to %struct.netbuf*
  %157 = call i32 @memp_free(i32 %154, %struct.netbuf* %156)
  br label %191

158:                                              ; preds = %29
  %159 = load %struct.netconn*, %struct.netconn** %3, align 8
  %160 = getelementptr inbounds %struct.netconn, %struct.netconn* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = ptrtoint %struct.netbuf** %6 to i32
  %163 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %164 = call i32 @MQ_Receive(i64 %161, i32 %162, i32 %163)
  %165 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %166 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %165, i32 0, i32 0
  %167 = load %struct.pbuf*, %struct.pbuf** %166, align 8
  %168 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.netconn*, %struct.netconn** %3, align 8
  %171 = getelementptr inbounds %struct.netconn, %struct.netconn* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.netconn*, %struct.netconn** %3, align 8
  %175 = getelementptr inbounds %struct.netconn, %struct.netconn* %174, i32 0, i32 4
  %176 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %175, align 8
  %177 = icmp ne i32 (%struct.netconn*, i32, i32)* %176, null
  br i1 %177, label %178, label %190

178:                                              ; preds = %158
  %179 = load %struct.netconn*, %struct.netconn** %3, align 8
  %180 = getelementptr inbounds %struct.netconn, %struct.netconn* %179, i32 0, i32 4
  %181 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %180, align 8
  %182 = load %struct.netconn*, %struct.netconn** %3, align 8
  %183 = load i32, i32* @NETCONN_EVTRCVMINUS, align 4
  %184 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %185 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %184, i32 0, i32 0
  %186 = load %struct.pbuf*, %struct.pbuf** %185, align 8
  %187 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 %181(%struct.netconn* %182, i32 %183, i32 %188)
  br label %190

190:                                              ; preds = %178, %158
  br label %191

191:                                              ; preds = %190, %144
  %192 = load i32, i32* @API_LIB_DEBUG, align 4
  %193 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  %194 = bitcast %struct.netbuf* %193 to i8*
  %195 = load %struct.netconn*, %struct.netconn** %3, align 8
  %196 = getelementptr inbounds %struct.netconn, %struct.netconn* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @LWIP_DEBUGF(i32 %192, i8* %197)
  %199 = load %struct.netbuf*, %struct.netbuf** %6, align 8
  store %struct.netbuf* %199, %struct.netbuf** %2, align 8
  br label %200

200:                                              ; preds = %191, %118, %92, %53, %44, %28, %18, %11
  %201 = load %struct.netbuf*, %struct.netbuf** %2, align 8
  ret %struct.netbuf* %201
}

declare dso_local %struct.netbuf* @memp_malloc(i32) #1

declare dso_local i32 @MQ_Receive(i64, i32, i32) #1

declare dso_local i32 @memp_free(i32, %struct.netbuf*) #1

declare dso_local i32 @MQ_Close(i64) #1

declare dso_local i32 @apimsg_post(%struct.netbuf*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
