; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_connect_out.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_connect_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32, i32*, i32, i32*, i32* }
%struct.sockaddr = type { i32 }
%struct.inpcb = type { i64 }
%struct.sockaddr_in = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INPCB_STATE_DEAD = common dso_local global i64 0, align 8
@FLOW_DIVERT_CONNECT_STARTED = common dso_local global i32 0, align 4
@FLOW_DIVERT_TRANSFERRED = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fully transferred\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Connecting\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"No destination address available when creating connect packet\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOF1_PRECONNECT_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Delaying sending the connect packet until send or receive\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Sending saved connect packet\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flow_divert_connect_out(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_divert_pcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %15 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %14, align 8
  store %struct.flow_divert_pcb* %15, %struct.flow_divert_pcb** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = call %struct.inpcb* @sotoinpcb(%struct.socket* %16)
  store %struct.inpcb* %17, %struct.inpcb** %9, align 8
  store i32* null, i32** %11, align 8
  store i32 1, i32* %12, align 4
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.socket*, %struct.socket** %4, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 3
  %27 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %26, align 8
  %28 = icmp ne %struct.flow_divert_pcb* %27, null
  br label %29

29:                                               ; preds = %24, %3
  %30 = phi i1 [ false, %3 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @VERIFY(i32 %31)
  %33 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %34 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @ENETUNREACH, align 4
  store i32 %38, i32* %8, align 4
  br label %197

39:                                               ; preds = %29
  %40 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %41 = icmp eq %struct.inpcb* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %8, align 4
  br label %197

44:                                               ; preds = %39
  %45 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.socket*, %struct.socket** %4, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.socket*, %struct.socket** %4, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.socket*, %struct.socket** %4, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %55
  br label %197

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %67 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FLOW_DIVERT_CONNECT_STARTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %74 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FLOW_DIVERT_TRANSFERRED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @EALREADY, align 4
  store i32 %80, i32* %8, align 4
  br label %197

81:                                               ; preds = %72, %65
  %82 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %83 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FLOW_DIVERT_TRANSFERRED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %81
  %89 = load i32, i32* @LOG_INFO, align 4
  %90 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %91 = call i32 @FDLOG0(i32 %89, %struct.flow_divert_pcb* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @FLOW_DIVERT_TRANSFERRED, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %95 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %99 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %88
  %103 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %104 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @soisconnected(i32 %105)
  br label %197

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107, %81
  %109 = load i32, i32* @LOG_INFO, align 4
  %110 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %111 = call i32 @FDLOG0(i32 %109, %struct.flow_divert_pcb* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %113 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %164

116:                                              ; preds = %108
  %117 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %118 = icmp eq %struct.sockaddr* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* @LOG_ERR, align 4
  %121 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %122 = call i32 @FDLOG0(i32 %120, %struct.flow_divert_pcb* %121, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %8, align 4
  br label %197

124:                                              ; preds = %116
  %125 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %126 = bitcast %struct.sockaddr* %125 to i8*
  %127 = bitcast i8* %126 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %127, %struct.sockaddr_in** %10, align 8
  %128 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %129 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AF_INET, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %124
  %134 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %135 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ntohl(i32 %137)
  %139 = call i64 @IN_MULTICAST(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %142, i32* %8, align 4
  br label %197

143:                                              ; preds = %133, %124
  %144 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %145 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %146 = load %struct.socket*, %struct.socket** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @flow_divert_create_connect_packet(%struct.flow_divert_pcb* %144, %struct.sockaddr* %145, %struct.socket* %146, i32 %147, i32** %11)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %197

152:                                              ; preds = %143
  %153 = load %struct.socket*, %struct.socket** %4, align 8
  %154 = getelementptr inbounds %struct.socket, %struct.socket* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @SOF1_PRECONNECT_DATA, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load i32, i32* @LOG_INFO, align 4
  %161 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %162 = call i32 @FDLOG0(i32 %160, %struct.flow_divert_pcb* %161, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %163

163:                                              ; preds = %159, %152
  br label %173

164:                                              ; preds = %108
  %165 = load i32, i32* @LOG_INFO, align 4
  %166 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %167 = call i32 @FDLOG0(i32 %165, %struct.flow_divert_pcb* %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %168 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %169 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %11, align 8
  %171 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %172 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %171, i32 0, i32 1
  store i32* null, i32** %172, align 8
  br label %173

173:                                              ; preds = %164, %163
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* @TRUE, align 4
  %180 = call i32 @flow_divert_send_packet(%struct.flow_divert_pcb* %177, i32* %178, i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %197

184:                                              ; preds = %176
  %185 = load i32, i32* @FLOW_DIVERT_CONNECT_STARTED, align 4
  %186 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %187 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %194

190:                                              ; preds = %173
  %191 = load i32*, i32** %11, align 8
  %192 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %193 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %192, i32 0, i32 1
  store i32* %191, i32** %193, align 8
  store i32* null, i32** %11, align 8
  br label %194

194:                                              ; preds = %190, %184
  %195 = load %struct.socket*, %struct.socket** %4, align 8
  %196 = call i32 @soisconnecting(%struct.socket* %195)
  br label %197

197:                                              ; preds = %194, %183, %151, %141, %119, %102, %79, %63, %42, %37
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i32*, i32** %11, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32*, i32** %11, align 8
  %205 = call i32 @mbuf_freem(i32* %204)
  br label %206

206:                                              ; preds = %203, %200, %197
  %207 = load i32, i32* %8, align 4
  ret i32 %207
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @FDLOG0(i32, %struct.flow_divert_pcb*, i8*) #1

declare dso_local i32 @soisconnected(i32) #1

declare dso_local i64 @IN_MULTICAST(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @flow_divert_create_connect_packet(%struct.flow_divert_pcb*, %struct.sockaddr*, %struct.socket*, i32, i32**) #1

declare dso_local i32 @flow_divert_send_packet(%struct.flow_divert_pcb*, i32*, i32) #1

declare dso_local i32 @soisconnecting(%struct.socket*) #1

declare dso_local i32 @mbuf_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
