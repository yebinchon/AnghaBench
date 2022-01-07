; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tcp_copy_descriptor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tcp_copy_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.nstat_tucookie = type { i64*, %struct.inpcb* }
%struct.inpcb = type { i32, i32, %struct.socket*, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.tcpcb = type { i32, i32, i64, i64, i32 }
%struct.TYPE_15__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@SOF1_TRAFFIC_MGT_SO_BACKGROUND = common dso_local global i32 0, align 4
@TRAFFIC_MGT_SO_BACKGROUND = common dso_local global i32 0, align 4
@SOF1_TRAFFIC_MGT_TCP_RECVBG = common dso_local global i32 0, align 4
@TRAFFIC_MGT_TCP_RECVBG = common dso_local global i32 0, align 4
@SOF_DELEGATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @nstat_tcp_copy_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_tcp_copy_descriptor(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.nstat_tucookie*, align 8
  %10 = alloca %struct.inpcb*, align 8
  %11 = alloca %struct.tcpcb*, align 8
  %12 = alloca %struct.socket*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 128
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %327

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @nstat_tcp_gone(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %327

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %8, align 8
  %27 = load i64, i64* %5, align 8
  %28 = inttoptr i64 %27 to %struct.nstat_tucookie*
  store %struct.nstat_tucookie* %28, %struct.nstat_tucookie** %9, align 8
  %29 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %9, align 8
  %30 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %29, i32 0, i32 1
  %31 = load %struct.inpcb*, %struct.inpcb** %30, align 8
  store %struct.inpcb* %31, %struct.inpcb** %10, align 8
  %32 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %33 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %32)
  store %struct.tcpcb* %33, %struct.tcpcb** %11, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = call i32 @bzero(%struct.TYPE_14__* %34, i32 128)
  %36 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %37 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @INP_IPV6, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %24
  %43 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %44 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %43, i32 0, i32 9
  %45 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 26
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = call i32 @in6_ip6_to_sockaddr(i32* %44, i32 %47, i32* %50, i32 8)
  %52 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 8
  %54 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %55 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 25
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = call i32 @in6_ip6_to_sockaddr(i32* %53, i32 %56, i32* %59, i32 8)
  br label %88

61:                                               ; preds = %24
  %62 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %63 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @INP_IPV4, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %61
  %69 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %70 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %69, i32 0, i32 7
  %71 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %72 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 26
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @nstat_ip_to_sockaddr(i32* %70, i32 %73, i32* %76, i32 8)
  %78 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %79 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %78, i32 0, i32 5
  %80 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %81 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 25
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = call i32 @nstat_ip_to_sockaddr(i32* %79, i32 %82, i32* %85, i32 8)
  br label %87

87:                                               ; preds = %68, %61
  br label %88

88:                                               ; preds = %87, %42
  %89 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %90 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %89)
  %91 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 24
  store i32 %92, i32* %94, align 4
  %95 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %96 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %95, i32 0, i32 3
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = icmp eq %struct.TYPE_11__* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %106

100:                                              ; preds = %88
  %101 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %102 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %101, i32 0, i32 3
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  br label %106

106:                                              ; preds = %100, %99
  %107 = phi i32 [ 0, %99 ], [ %105, %100 ]
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 23
  store i32 %107, i32* %109, align 8
  %110 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %114 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 22
  store i64 %116, i64* %118, align 8
  %119 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %120 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 21
  store i32 %121, i32* %123, align 4
  %124 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %125 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 20
  store i32 %126, i32* %128, align 8
  %129 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %130 = call %struct.TYPE_15__* @CC_ALGO(%struct.tcpcb* %129)
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = icmp ne i64* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %106
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %139 = call %struct.TYPE_15__* @CC_ALGO(%struct.tcpcb* %138)
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = call i32 @strlcpy(i64* %137, i64* %141, i32 8)
  br label %143

143:                                              ; preds = %134, %106
  %144 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %145 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %144, i32 0, i32 2
  %146 = load %struct.socket*, %struct.socket** %145, align 8
  store %struct.socket* %146, %struct.socket** %12, align 8
  %147 = load %struct.socket*, %struct.socket** %12, align 8
  %148 = icmp ne %struct.socket* %147, null
  br i1 %148, label %149, label %306

149:                                              ; preds = %143
  %150 = load %struct.socket*, %struct.socket** %12, align 8
  %151 = getelementptr inbounds %struct.socket, %struct.socket* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 15
  store i32 %152, i32* %154, align 4
  %155 = load %struct.socket*, %struct.socket** %12, align 8
  %156 = getelementptr inbounds %struct.socket, %struct.socket* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 13
  store i32 %157, i32* %159, align 4
  %160 = load %struct.socket*, %struct.socket** %12, align 8
  %161 = getelementptr inbounds %struct.socket, %struct.socket* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 19
  store i32 %162, i32* %164, align 4
  %165 = load %struct.socket*, %struct.socket** %12, align 8
  %166 = getelementptr inbounds %struct.socket, %struct.socket* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SOF1_TRAFFIC_MGT_SO_BACKGROUND, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %149
  %172 = load i32, i32* @TRAFFIC_MGT_SO_BACKGROUND, align 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 18
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %149
  %178 = load %struct.socket*, %struct.socket** %12, align 8
  %179 = getelementptr inbounds %struct.socket, %struct.socket* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SOF1_TRAFFIC_MGT_TCP_RECVBG, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load i32, i32* @TRAFFIC_MGT_TCP_RECVBG, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 18
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %177
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 13
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load i64*, i64** %195, align 8
  %197 = call i32 @proc_name(i32 %193, i64* %196, i32 8)
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %190
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i64*, i64** %206, align 8
  %208 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %9, align 8
  %209 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = call i32 @strlcpy(i64* %207, i64* %210, i32 8)
  br label %224

212:                                              ; preds = %190
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load i64*, i64** %214, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 7
  store i64 0, i64* %216, align 8
  %217 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %9, align 8
  %218 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load i64*, i64** %221, align 8
  %223 = call i32 @strlcpy(i64* %219, i64* %222, i32 8)
  br label %224

224:                                              ; preds = %212, %204
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.socket*, %struct.socket** %12, align 8
  %229 = getelementptr inbounds %struct.socket, %struct.socket* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @memcpy(i32 %227, i32 %230, i32 4)
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 17
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.socket*, %struct.socket** %12, align 8
  %236 = getelementptr inbounds %struct.socket, %struct.socket* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @memcpy(i32 %234, i32 %237, i32 4)
  %239 = load %struct.socket*, %struct.socket** %12, align 8
  %240 = getelementptr inbounds %struct.socket, %struct.socket* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @SOF_DELEGATED, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %263

245:                                              ; preds = %224
  %246 = load %struct.socket*, %struct.socket** %12, align 8
  %247 = getelementptr inbounds %struct.socket, %struct.socket* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 16
  store i32 %248, i32* %250, align 8
  %251 = load %struct.socket*, %struct.socket** %12, align 8
  %252 = getelementptr inbounds %struct.socket, %struct.socket* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 14
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 12
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.socket*, %struct.socket** %12, align 8
  %260 = getelementptr inbounds %struct.socket, %struct.socket* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @memcpy(i32 %258, i32 %261, i32 4)
  br label %281

263:                                              ; preds = %224
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 15
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 16
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 13
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 14
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 12
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 11
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @memcpy(i32 %276, i32 %279, i32 4)
  br label %281

281:                                              ; preds = %263, %245
  %282 = load %struct.socket*, %struct.socket** %12, align 8
  %283 = getelementptr inbounds %struct.socket, %struct.socket* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 10
  store i32 %285, i32* %287, align 8
  %288 = load %struct.socket*, %struct.socket** %12, align 8
  %289 = getelementptr inbounds %struct.socket, %struct.socket* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 9
  store i32 %291, i32* %293, align 4
  %294 = load %struct.socket*, %struct.socket** %12, align 8
  %295 = getelementptr inbounds %struct.socket, %struct.socket* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 8
  store i32 %297, i32* %299, align 8
  %300 = load %struct.socket*, %struct.socket** %12, align 8
  %301 = getelementptr inbounds %struct.socket, %struct.socket* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 7
  store i32 %303, i32* %305, align 4
  br label %306

306:                                              ; preds = %281, %143
  %307 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 6
  %310 = call i32 @tcp_get_connectivity_status(%struct.tcpcb* %307, i32* %309)
  %311 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %312 = call i32 @nstat_inpcb_to_flags(%struct.inpcb* %311)
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 5
  store i32 %312, i32* %314, align 4
  %315 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 4
  %318 = call i32 @inp_get_activity_bitmap(%struct.inpcb* %315, i32* %317)
  %319 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %320 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 4
  %324 = call i32 (...) @mach_continuous_time()
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 2
  store i32 %324, i32* %326, align 8
  store i32 0, i32* %4, align 4
  br label %327

327:                                              ; preds = %306, %22, %16
  %328 = load i32, i32* %4, align 4
  ret i32 %328
}

declare dso_local i64 @nstat_tcp_gone(i64) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @bzero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @in6_ip6_to_sockaddr(i32*, i32, i32*, i32) #1

declare dso_local i32 @nstat_ip_to_sockaddr(i32*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_15__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i32 @strlcpy(i64*, i64*, i32) #1

declare dso_local i32 @proc_name(i32, i64*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @tcp_get_connectivity_status(%struct.tcpcb*, i32*) #1

declare dso_local i32 @nstat_inpcb_to_flags(%struct.inpcb*) #1

declare dso_local i32 @inp_get_activity_bitmap(%struct.inpcb*, i32*) #1

declare dso_local i32 @mach_continuous_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
