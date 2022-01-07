; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_update_stats_per_flow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_update_stats_per_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ifnet_stats_per_flow = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifnet = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i32, i8* }

@TE_SETUPSENT = common dso_local global i32 0, align 4
@TE_CLIENT_SETUP = common dso_local global i32 0, align 4
@ecn_client_setup = common dso_local global i32 0, align 4
@ecn_client_success = common dso_local global i32 0, align 4
@TE_LOST_SYN = common dso_local global i32 0, align 4
@ecn_syn_lost = common dso_local global i32 0, align 4
@ecn_peer_nosupport = common dso_local global i32 0, align 4
@ecn_server_setup = common dso_local global i32 0, align 4
@ecn_server_success = common dso_local global i32 0, align 4
@ecn_synack_lost = common dso_local global i32 0, align 4
@ecn_off_conn = common dso_local global i32 0, align 4
@TE_RECV_ECN_CE = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ecn_conn_recv_ce = common dso_local global i32 0, align 4
@TE_RECV_ECN_ECE = common dso_local global i32 0, align 4
@ecn_conn_recv_ece = common dso_local global i32 0, align 4
@ecn_conn_plce = common dso_local global i32 0, align 4
@ecn_conn_noplce = common dso_local global i32 0, align 4
@ecn_conn_plnoce = common dso_local global i32 0, align 4
@ecn_on = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@ecn_off = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ecn_fallback_synloss = common dso_local global i32 0, align 4
@ecn_fallback_droprst = common dso_local global i32 0, align 4
@ecn_fallback_droprxmt = common dso_local global i32 0, align 4
@ecn_fallback_ce = common dso_local global i32 0, align 4
@ecn_fallback_reorder = common dso_local global i32 0, align 4
@ecn_recv_ce = common dso_local global i32 0, align 4
@ecn_recv_ece = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_update_stats_per_flow(%struct.ifnet_stats_per_flow* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.ifnet_stats_per_flow*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.ifnet_stats_per_flow* %0, %struct.ifnet_stats_per_flow** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %6 = icmp eq %struct.ifnet* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = call i32 @IF_FULLY_ATTACHED(%struct.ifnet* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %2
  br label %376

12:                                               ; preds = %7
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = call i32 @ifnet_lock_shared(%struct.ifnet* %13)
  %15 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TE_SETUPSENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %105

21:                                               ; preds = %12
  %22 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TE_CLIENT_SETUP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %21
  %29 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @ecn_client_setup, align 4
  %33 = call i32 @IFP_PER_FLOW_STAT(i64 %31, i32 %32)
  %34 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %35 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @FLOW_ECN_ENABLED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %41 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @ecn_client_success, align 4
  %44 = call i32 @IFP_PER_FLOW_STAT(i64 %42, i32 %43)
  br label %65

45:                                               ; preds = %28
  %46 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %47 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TE_LOST_SYN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %54 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @ecn_syn_lost, align 4
  %57 = call i32 @IFP_PER_FLOW_STAT(i64 %55, i32 %56)
  br label %64

58:                                               ; preds = %45
  %59 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %60 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @ecn_peer_nosupport, align 4
  %63 = call i32 @IFP_PER_FLOW_STAT(i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %39
  br label %104

66:                                               ; preds = %21
  %67 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %68 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @ecn_server_setup, align 4
  %71 = call i32 @IFP_PER_FLOW_STAT(i64 %69, i32 %70)
  %72 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %73 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @FLOW_ECN_ENABLED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %79 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @ecn_server_success, align 4
  %82 = call i32 @IFP_PER_FLOW_STAT(i64 %80, i32 %81)
  br label %103

83:                                               ; preds = %66
  %84 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %85 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @TE_LOST_SYN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %92 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @ecn_synack_lost, align 4
  %95 = call i32 @IFP_PER_FLOW_STAT(i64 %93, i32 %94)
  br label %102

96:                                               ; preds = %83
  %97 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %98 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @ecn_peer_nosupport, align 4
  %101 = call i32 @IFP_PER_FLOW_STAT(i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %90
  br label %103

103:                                              ; preds = %102, %77
  br label %104

104:                                              ; preds = %103, %65
  br label %111

105:                                              ; preds = %12
  %106 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %107 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @ecn_off_conn, align 4
  %110 = call i32 @IFP_PER_FLOW_STAT(i64 %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %104
  %112 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %113 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @FLOW_ECN_ENABLED(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %203

117:                                              ; preds = %111
  %118 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %119 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TE_RECV_ECN_CE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 4), align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 4), align 4
  %127 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %128 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @ecn_conn_recv_ce, align 4
  %131 = call i32 @IFP_PER_FLOW_STAT(i64 %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %117
  %133 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %134 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TE_RECV_ECN_ECE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 3), align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 3), align 4
  %142 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %143 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @ecn_conn_recv_ece, align 4
  %146 = call i32 @IFP_PER_FLOW_STAT(i64 %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %132
  %148 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %149 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TE_RECV_ECN_CE, align 4
  %152 = load i32, i32* @TE_RECV_ECN_ECE, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %147
  %157 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %158 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %163 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %161, %156
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 2), align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 2), align 4
  %169 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %170 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* @ecn_conn_plce, align 4
  %173 = call i32 @IFP_PER_FLOW_STAT(i64 %171, i32 %172)
  br label %182

174:                                              ; preds = %161
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 1), align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 1), align 4
  %177 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %178 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @ecn_conn_noplce, align 4
  %181 = call i32 @IFP_PER_FLOW_STAT(i64 %179, i32 %180)
  br label %182

182:                                              ; preds = %174, %166
  br label %202

183:                                              ; preds = %147
  %184 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %185 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %190 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %188, %183
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 0), align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 0), align 4
  %196 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %197 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @ecn_conn_plnoce, align 4
  %200 = call i32 @IFP_PER_FLOW_STAT(i64 %198, i32 %199)
  br label %201

201:                                              ; preds = %193, %188
  br label %202

202:                                              ; preds = %201, %182
  br label %203

203:                                              ; preds = %202, %111
  %204 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %205 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %204, i32 0, i32 12
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %210 = call i32 @ifnet_lock_done(%struct.ifnet* %209)
  br label %376

211:                                              ; preds = %203
  %212 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %213 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %242

216:                                              ; preds = %211
  %217 = call i8* (...) @net_uptime()
  %218 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %219 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %218, i32 0, i32 2
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 2
  store i8* %217, i8** %221, align 8
  %222 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %223 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i64 @FLOW_ECN_ENABLED(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %216
  %228 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %229 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %230 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %229, i32 0, i32 2
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = call i32 @tcp_flow_ecn_perf_stats(%struct.ifnet_stats_per_flow* %228, i32* %232)
  br label %241

234:                                              ; preds = %216
  %235 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %236 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 2
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = call i32 @tcp_flow_ecn_perf_stats(%struct.ifnet_stats_per_flow* %235, i32* %239)
  br label %241

241:                                              ; preds = %234, %227
  br label %268

242:                                              ; preds = %211
  %243 = call i8* (...) @net_uptime()
  %244 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %245 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %244, i32 0, i32 1
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  store i8* %243, i8** %247, align 8
  %248 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %249 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i64 @FLOW_ECN_ENABLED(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %242
  %254 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %255 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %256 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %255, i32 0, i32 1
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = call i32 @tcp_flow_ecn_perf_stats(%struct.ifnet_stats_per_flow* %254, i32* %258)
  br label %267

260:                                              ; preds = %242
  %261 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %262 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %263 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %262, i32 0, i32 1
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = call i32 @tcp_flow_ecn_perf_stats(%struct.ifnet_stats_per_flow* %261, i32* %265)
  br label %267

267:                                              ; preds = %260, %253
  br label %268

268:                                              ; preds = %267, %241
  %269 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %270 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %269, i32 0, i32 11
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %292

273:                                              ; preds = %268
  %274 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %275 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i64 @FLOW_ECN_ENABLED(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %273
  %280 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %281 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ecn_on, i32 0, i32 0), align 4
  %284 = call i32 @IFP_PER_FLOW_STAT(i64 %282, i32 %283)
  br label %291

285:                                              ; preds = %273
  %286 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %287 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %286, i32 0, i32 5
  %288 = load i64, i64* %287, align 8
  %289 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ecn_off, i32 0, i32 0), align 4
  %290 = call i32 @IFP_PER_FLOW_STAT(i64 %288, i32 %289)
  br label %291

291:                                              ; preds = %285, %279
  br label %292

292:                                              ; preds = %291, %268
  %293 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %294 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %293, i32 0, i32 10
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %292
  %298 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %299 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %298, i32 0, i32 5
  %300 = load i64, i64* %299, align 8
  %301 = load i32, i32* @ecn_fallback_synloss, align 4
  %302 = call i32 @IFP_PER_FLOW_STAT(i64 %300, i32 %301)
  br label %303

303:                                              ; preds = %297, %292
  %304 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %305 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %304, i32 0, i32 9
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %303
  %309 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %310 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %309, i32 0, i32 5
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* @ecn_fallback_droprst, align 4
  %313 = call i32 @IFP_PER_FLOW_STAT(i64 %311, i32 %312)
  br label %314

314:                                              ; preds = %308, %303
  %315 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %316 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %315, i32 0, i32 8
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %314
  %320 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %321 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* @ecn_fallback_droprxmt, align 4
  %324 = call i32 @IFP_PER_FLOW_STAT(i64 %322, i32 %323)
  br label %325

325:                                              ; preds = %319, %314
  %326 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %327 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %326, i32 0, i32 7
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %325
  %331 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %332 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %331, i32 0, i32 5
  %333 = load i64, i64* %332, align 8
  %334 = load i32, i32* @ecn_fallback_ce, align 4
  %335 = call i32 @IFP_PER_FLOW_STAT(i64 %333, i32 %334)
  br label %336

336:                                              ; preds = %330, %325
  %337 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %338 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %337, i32 0, i32 6
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %336
  %342 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %343 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %342, i32 0, i32 5
  %344 = load i64, i64* %343, align 8
  %345 = load i32, i32* @ecn_fallback_reorder, align 4
  %346 = call i32 @IFP_PER_FLOW_STAT(i64 %344, i32 %345)
  br label %347

347:                                              ; preds = %341, %336
  %348 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %349 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = icmp sgt i64 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %354 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %353, i32 0, i32 5
  %355 = load i64, i64* %354, align 8
  %356 = load i32, i32* @ecn_recv_ce, align 4
  %357 = call i32 @IFP_PER_FLOW_STAT(i64 %355, i32 %356)
  br label %358

358:                                              ; preds = %352, %347
  %359 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %360 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %359, i32 0, i32 4
  %361 = load i64, i64* %360, align 8
  %362 = icmp sgt i64 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %358
  %364 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %365 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %364, i32 0, i32 5
  %366 = load i64, i64* %365, align 8
  %367 = load i32, i32* @ecn_recv_ece, align 4
  %368 = call i32 @IFP_PER_FLOW_STAT(i64 %366, i32 %367)
  br label %369

369:                                              ; preds = %363, %358
  %370 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %371 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %372 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %371, i32 0, i32 0
  %373 = call i32 @tcp_flow_lim_stats(%struct.ifnet_stats_per_flow* %370, i32* %372)
  %374 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %375 = call i32 @ifnet_lock_done(%struct.ifnet* %374)
  br label %376

376:                                              ; preds = %369, %208, %11
  ret void
}

declare dso_local i32 @IF_FULLY_ATTACHED(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @IFP_PER_FLOW_STAT(i64, i32) #1

declare dso_local i64 @FLOW_ECN_ENABLED(i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i8* @net_uptime(...) #1

declare dso_local i32 @tcp_flow_ecn_perf_stats(%struct.ifnet_stats_per_flow*, i32*) #1

declare dso_local i32 @tcp_flow_lim_stats(%struct.ifnet_stats_per_flow*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
