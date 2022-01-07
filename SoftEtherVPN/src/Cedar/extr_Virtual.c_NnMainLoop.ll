; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnMainLoop.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnMainLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i32, i32, i32, %struct.TYPE_46__*, %struct.TYPE_49__*, %struct.TYPE_49__*, %struct.TYPE_58__*, i32* }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_49__ = type { i64 }
%struct.TYPE_58__ = type { %struct.TYPE_50__*, i64 }
%struct.TYPE_50__ = type { i64, i64 }
%struct.TYPE_42__ = type { i32, i32, %struct.TYPE_56__, %struct.TYPE_44__* }
%struct.TYPE_56__ = type { i64, i32 }
%struct.TYPE_44__ = type { %struct.TYPE_57__*, i32 }
%struct.TYPE_57__ = type { i32*, i32* }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_41__ = type { i64, i64, i32, %struct.TYPE_55__, %struct.TYPE_53__, i64 }
%struct.TYPE_55__ = type { %struct.TYPE_54__*, %struct.TYPE_51__* }
%struct.TYPE_54__ = type { i64, i64 }
%struct.TYPE_51__ = type { i64, i64 }
%struct.TYPE_53__ = type { %struct.TYPE_52__* }
%struct.TYPE_52__ = type { i64, i64 }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_40__ = type { i32, i32 }

@IPC_DHCP_DEFAULT_LEASE = common dso_local global i64 0, align 8
@IPC_DHCP_MIN_LEASE = common dso_local global i32 0, align 4
@NN_POLL_CONNECTIVITY_INTERVAL = common dso_local global i64 0, align 8
@NN_CHECK_HOSTNAME = common dso_local global i32 0, align 4
@IP_PROTO_UDP = common dso_local global i32 0, align 4
@L3_IPV4 = common dso_local global i64 0, align 8
@L4_UDP = common dso_local global i64 0, align 8
@TCP_SYN = common dso_local global i32 0, align 4
@IP_PROTO_TCP = common dso_local global i32 0, align 4
@L4_TCP = common dso_local global i64 0, align 8
@TCP_ACK = common dso_local global i32 0, align 4
@TCP_RST = common dso_local global i32 0, align 4
@NN_MAX_QUEUE_LENGTH = common dso_local global i64 0, align 8
@NN_POLL_CONNECTIVITY_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"NN_POLL_CONNECTIVITY_TIMEOUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnMainLoop(%struct.TYPE_43__* %0, %struct.TYPE_42__* %1) #0 {
  %3 = alloca %struct.TYPE_43__*, align 8
  %4 = alloca %struct.TYPE_42__*, align 8
  %5 = alloca %struct.TYPE_44__*, align 8
  %6 = alloca [3 x i32*], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_47__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_48__*, align 8
  %26 = alloca %struct.TYPE_48__*, align 8
  %27 = alloca %struct.TYPE_41__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_45__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_47__*, align 8
  %32 = alloca %struct.TYPE_40__*, align 8
  %33 = alloca %struct.TYPE_47__*, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct.TYPE_46__*, align 8
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %3, align 8
  store %struct.TYPE_42__* %1, %struct.TYPE_42__** %4, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %36 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %37 = icmp eq %struct.TYPE_43__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %40 = icmp eq %struct.TYPE_42__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %2
  br label %594

42:                                               ; preds = %38
  %43 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i64, i64* @IPC_DHCP_DEFAULT_LEASE, align 8
  store i64 %50, i64* %17, align 8
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i64, i64* %17, align 8
  %53 = load i32, i32* @IPC_DHCP_MIN_LEASE, align 4
  %54 = call i32 @MAX(i64 %52, i32 %53)
  %55 = sdiv i32 %54, 2
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %17, align 8
  %57 = call i32* (...) @NewInterruptManager()
  store i32* %57, i32** %9, align 8
  %58 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_44__*, %struct.TYPE_44__** %59, align 8
  store %struct.TYPE_44__* %60, %struct.TYPE_44__** %5, align 8
  %61 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_57__*, %struct.TYPE_57__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %7, align 8
  %68 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 %66
  store i32* %65, i32** %68, align 8
  %69 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %7, align 8
  %74 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 %72
  store i32* %71, i32** %74, align 8
  %75 = call i32 @Zero(i32* %14, i32 4)
  %76 = call i32 (...) @Tick64()
  %77 = load i64, i64* @NN_POLL_CONNECTIVITY_INTERVAL, align 8
  %78 = trunc i64 %77 to i32
  %79 = add nsw i32 %76, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @AddInterrupt(i32* %80, i32 %81)
  %83 = call i32 (...) @Tick64()
  store i32 %83, i32* %16, align 4
  %84 = call i32 (...) @Tick64()
  %85 = load i64, i64* %17, align 8
  %86 = trunc i64 %85 to i32
  %87 = mul nsw i32 %86, 1000
  %88 = add nsw i32 %84, %87
  store i32 %88, i32* %18, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @AddInterrupt(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %590, %51
  %93 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %98, i32 0, i32 6
  %100 = load %struct.TYPE_58__*, %struct.TYPE_58__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %97, %92
  %105 = phi i1 [ false, %92 ], [ %103, %97 ]
  br i1 %105, label %106, label %591

106:                                              ; preds = %104
  %107 = call i32 (...) @Tick64()
  store i32 %107, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %108 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_58__*, %struct.TYPE_58__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_50__*, %struct.TYPE_50__** %111, align 8
  %113 = icmp ne %struct.TYPE_50__* %112, null
  br i1 %113, label %114, label %145

114:                                              ; preds = %106
  %115 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_58__*, %struct.TYPE_58__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_50__*, %struct.TYPE_50__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %591

129:                                              ; preds = %119, %114
  %130 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %135, i32 0, i32 6
  %137 = load %struct.TYPE_58__*, %struct.TYPE_58__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_50__*, %struct.TYPE_50__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %591

144:                                              ; preds = %134, %129
  br label %145

145:                                              ; preds = %144, %106
  %146 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %147 = call i32 @IPCFlushArpTable(%struct.TYPE_44__* %146)
  store i32 0, i32* %20, align 4
  br label %148

148:                                              ; preds = %528, %145
  store i32 0, i32* %21, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %155, label %197

155:                                              ; preds = %151, %148
  %156 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @NnGenSrcPort(i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = call i32 (...) @Rand16()
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* @NN_CHECK_HOSTNAME, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @NnBuildDnsQueryPacket(i32 %161, i32 %162)
  %164 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %164, i32 0, i32 1
  %166 = call i64 @IPToUINT(i32* %165)
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %168, i32 0, i32 1
  %170 = call i64 @IPToUINT(i32* %169)
  %171 = call i32 @NnBuildUdpPacket(i32 %163, i64 %166, i32 %167, i64 %170, i32 53)
  %172 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %172, i32 0, i32 1
  %174 = call i64 @IPToUINT(i32* %173)
  %175 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %175, i32 0, i32 1
  %177 = call i64 @IPToUINT(i32* %176)
  %178 = load i32, i32* @IP_PROTO_UDP, align 4
  %179 = call %struct.TYPE_47__* @NnBuildIpPacket(i32 %171, i64 %174, i64 %177, i32 %178, i32 0)
  store %struct.TYPE_47__* %179, %struct.TYPE_47__** %23, align 8
  %180 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %181 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %182 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %185 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @IPCSendIPv4(%struct.TYPE_44__* %180, i32 %183, i32 %186)
  store i32 1, i32* %15, align 4
  %188 = load %struct.TYPE_47__*, %struct.TYPE_47__** %23, align 8
  %189 = call i32 @FreeBuf(%struct.TYPE_47__* %188)
  %190 = load i32, i32* %19, align 4
  %191 = load i64, i64* @NN_POLL_CONNECTIVITY_INTERVAL, align 8
  %192 = trunc i64 %191 to i32
  %193 = add nsw i32 %190, %192
  store i32 %193, i32* %8, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @AddInterrupt(i32* %194, i32 %195)
  br label %197

197:                                              ; preds = %155, %151
  %198 = load i32, i32* %18, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %19, align 4
  %203 = icmp sle i32 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %200, %197
  %205 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @UINTToIP(i32* %24, i32 %208)
  %210 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %211 = call i32 @IPCDhcpRenewIP(%struct.TYPE_44__* %210, i32* %24)
  %212 = load i32, i32* %19, align 4
  %213 = load i64, i64* %17, align 8
  %214 = trunc i64 %213 to i32
  %215 = mul nsw i32 %214, 1000
  %216 = add nsw i32 %212, %215
  store i32 %216, i32* %18, align 4
  %217 = load i32*, i32** %9, align 8
  %218 = load i32, i32* %18, align 4
  %219 = call i32 @AddInterrupt(i32* %217, i32 %218)
  br label %220

220:                                              ; preds = %204, %200
  %221 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %221, i32 0, i32 5
  %223 = load %struct.TYPE_49__*, %struct.TYPE_49__** %222, align 8
  %224 = call i32 @LockQueue(%struct.TYPE_49__* %223)
  br label %225

225:                                              ; preds = %220, %233
  %226 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %226, i32 0, i32 5
  %228 = load %struct.TYPE_49__*, %struct.TYPE_49__** %227, align 8
  %229 = call %struct.TYPE_48__* @GetNext(%struct.TYPE_49__* %228)
  store %struct.TYPE_48__* %229, %struct.TYPE_48__** %25, align 8
  %230 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %231 = icmp eq %struct.TYPE_48__* %230, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  br label %244

233:                                              ; preds = %225
  %234 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %235 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %236 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %239 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @IPCSendIPv4(%struct.TYPE_44__* %234, i32 %237, i32 %240)
  store i32 1, i32* %21, align 4
  %242 = load %struct.TYPE_48__*, %struct.TYPE_48__** %25, align 8
  %243 = call i32 @FreeBlock(%struct.TYPE_48__* %242)
  br label %225

244:                                              ; preds = %232
  %245 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %245, i32 0, i32 5
  %247 = load %struct.TYPE_49__*, %struct.TYPE_49__** %246, align 8
  %248 = call i32 @UnlockQueue(%struct.TYPE_49__* %247)
  %249 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %250 = call i32 @IPCProcessL3Events(%struct.TYPE_44__* %249)
  %251 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %251, i32 0, i32 4
  %253 = load %struct.TYPE_49__*, %struct.TYPE_49__** %252, align 8
  %254 = call i32 @LockQueue(%struct.TYPE_49__* %253)
  br label %255

255:                                              ; preds = %244, %520
  %256 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %257 = call %struct.TYPE_48__* @IPCRecvIPv4(%struct.TYPE_44__* %256)
  store %struct.TYPE_48__* %257, %struct.TYPE_48__** %26, align 8
  %258 = load %struct.TYPE_48__*, %struct.TYPE_48__** %26, align 8
  %259 = icmp eq %struct.TYPE_48__* %258, null
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %521

261:                                              ; preds = %255
  %262 = load %struct.TYPE_48__*, %struct.TYPE_48__** %26, align 8
  %263 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_48__*, %struct.TYPE_48__** %26, align 8
  %266 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call %struct.TYPE_41__* @ParsePacketIPv4WithDummyMacHeader(i32 %264, i32 %267)
  store %struct.TYPE_41__* %268, %struct.TYPE_41__** %27, align 8
  %269 = load %struct.TYPE_48__*, %struct.TYPE_48__** %26, align 8
  %270 = call i32 @FreeBlock(%struct.TYPE_48__* %269)
  %271 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %272 = icmp ne %struct.TYPE_41__* %271, null
  br i1 %272, label %273, label %520

273:                                              ; preds = %261
  store i32 0, i32* %28, align 4
  %274 = load i32, i32* %15, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %391

276:                                              ; preds = %273
  %277 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %278 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @L3_IPV4, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %390

282:                                              ; preds = %276
  %283 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %284 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @L4_UDP, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %390

288:                                              ; preds = %282
  %289 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %290 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %289, i32 0, i32 4
  %291 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_52__*, %struct.TYPE_52__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %295, i32 0, i32 1
  %297 = call i64 @IPToUINT(i32* %296)
  %298 = icmp eq i64 %294, %297
  br i1 %298, label %299, label %390

299:                                              ; preds = %288
  %300 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %301 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_52__*, %struct.TYPE_52__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %306, i32 0, i32 1
  %308 = call i64 @IPToUINT(i32* %307)
  %309 = icmp eq i64 %305, %308
  br i1 %309, label %310, label %390

310:                                              ; preds = %299
  %311 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %312 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_51__*, %struct.TYPE_51__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i64 @Endian16(i32 53)
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %390

319:                                              ; preds = %310
  %320 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %321 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_51__*, %struct.TYPE_51__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = call i64 @Endian16(i32 %326)
  %328 = icmp eq i64 %325, %327
  br i1 %328, label %329, label %390

329:                                              ; preds = %319
  %330 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %331 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %330, i32 0, i32 5
  %332 = load i64, i64* %331, align 8
  %333 = inttoptr i64 %332 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %333, %struct.TYPE_45__** %29, align 8
  %334 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %335 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = sext i32 %336 to i64
  %338 = icmp uge i64 %337, 8
  br i1 %338, label %339, label %389

339:                                              ; preds = %329
  %340 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %341 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i32, i32* %11, align 4
  %344 = call i64 @Endian16(i32 %343)
  %345 = icmp eq i64 %342, %344
  br i1 %345, label %346, label %388

346:                                              ; preds = %339
  %347 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %348 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %347, i32 0, i32 5
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %351 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = call i64 @NnParseDnsResponsePacket(i64 %349, i32 %352, i32* %30)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %387

355:                                              ; preds = %346
  %356 = call i32 @Copy(i32* %14, i32* %30, i32 4)
  store i32 1, i32* %28, align 4
  %357 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @NnGenSrcPort(i32 %359)
  store i32 %360, i32* %12, align 4
  %361 = call i64 (...) @Rand32()
  store i64 %361, i64* %13, align 8
  %362 = call i32 (...) @NewBuf()
  %363 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %363, i32 0, i32 1
  %365 = call i64 @IPToUINT(i32* %364)
  %366 = load i32, i32* %12, align 4
  %367 = call i64 @IPToUINT(i32* %14)
  %368 = load i64, i64* %13, align 8
  %369 = load i32, i32* @TCP_SYN, align 4
  %370 = call i32 @NnBuildTcpPacket(i32 %362, i64 %365, i32 %366, i64 %367, i32 80, i64 %368, i64 0, i32 %369, i32 8192, i32 1414)
  %371 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %371, i32 0, i32 1
  %373 = call i64 @IPToUINT(i32* %372)
  %374 = call i64 @IPToUINT(i32* %14)
  %375 = load i32, i32* @IP_PROTO_TCP, align 4
  %376 = call %struct.TYPE_47__* @NnBuildIpPacket(i32 %370, i64 %373, i64 %374, i32 %375, i32 0)
  store %struct.TYPE_47__* %376, %struct.TYPE_47__** %31, align 8
  %377 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %378 = load %struct.TYPE_47__*, %struct.TYPE_47__** %31, align 8
  %379 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_47__*, %struct.TYPE_47__** %31, align 8
  %382 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @IPCSendIPv4(%struct.TYPE_44__* %377, i32 %380, i32 %383)
  %385 = load %struct.TYPE_47__*, %struct.TYPE_47__** %31, align 8
  %386 = call i32 @FreeBuf(%struct.TYPE_47__* %385)
  store i32 0, i32* %15, align 4
  br label %387

387:                                              ; preds = %355, %346
  br label %388

388:                                              ; preds = %387, %339
  br label %389

389:                                              ; preds = %388, %329
  br label %390

390:                                              ; preds = %389, %319, %310, %299, %288, %282, %276
  br label %391

391:                                              ; preds = %390, %273
  %392 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %393 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @L3_IPV4, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %498

397:                                              ; preds = %391
  %398 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %399 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @L4_TCP, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %498

403:                                              ; preds = %397
  %404 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %405 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %404, i32 0, i32 4
  %406 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_52__*, %struct.TYPE_52__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = call i64 @IPToUINT(i32* %14)
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %412, label %498

412:                                              ; preds = %403
  %413 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %414 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %413, i32 0, i32 4
  %415 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %414, i32 0, i32 0
  %416 = load %struct.TYPE_52__*, %struct.TYPE_52__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %419, i32 0, i32 1
  %421 = call i64 @IPToUINT(i32* %420)
  %422 = icmp eq i64 %418, %421
  br i1 %422, label %423, label %498

423:                                              ; preds = %412
  %424 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %425 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %424, i32 0, i32 3
  %426 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_54__*, %struct.TYPE_54__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = call i64 @Endian16(i32 80)
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %498

432:                                              ; preds = %423
  %433 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %434 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %433, i32 0, i32 3
  %435 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_54__*, %struct.TYPE_54__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load i32, i32* %12, align 4
  %440 = call i64 @Endian16(i32 %439)
  %441 = icmp eq i64 %438, %440
  br i1 %441, label %442, label %498

442:                                              ; preds = %432
  %443 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %444 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %443, i32 0, i32 3
  %445 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_54__*, %struct.TYPE_54__** %445, align 8
  %447 = bitcast %struct.TYPE_54__* %446 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %447, %struct.TYPE_40__** %32, align 8
  %448 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %449 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @TCP_SYN, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %497

454:                                              ; preds = %442
  %455 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %456 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @TCP_ACK, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %497

461:                                              ; preds = %454
  %462 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %463 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = call i64 @Endian32(i32 %464)
  %466 = add nsw i64 %465, 1
  store i64 %466, i64* %34, align 8
  store i32 1, i32* %28, align 4
  %467 = call i32 (...) @NewBuf()
  %468 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %468, i32 0, i32 1
  %470 = call i64 @IPToUINT(i32* %469)
  %471 = load i32, i32* %12, align 4
  %472 = call i64 @IPToUINT(i32* %14)
  %473 = load i64, i64* %13, align 8
  %474 = add nsw i64 %473, 1
  %475 = load i64, i64* %34, align 8
  %476 = load i32, i32* @TCP_RST, align 4
  %477 = load i32, i32* @TCP_ACK, align 4
  %478 = or i32 %476, %477
  %479 = call i32 @NnBuildTcpPacket(i32 %467, i64 %470, i32 %471, i64 %472, i32 80, i64 %474, i64 %475, i32 %478, i32 8192, i32 0)
  %480 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %480, i32 0, i32 1
  %482 = call i64 @IPToUINT(i32* %481)
  %483 = call i64 @IPToUINT(i32* %14)
  %484 = load i32, i32* @IP_PROTO_TCP, align 4
  %485 = call %struct.TYPE_47__* @NnBuildIpPacket(i32 %479, i64 %482, i64 %483, i32 %484, i32 0)
  store %struct.TYPE_47__* %485, %struct.TYPE_47__** %33, align 8
  %486 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %487 = load %struct.TYPE_47__*, %struct.TYPE_47__** %33, align 8
  %488 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.TYPE_47__*, %struct.TYPE_47__** %33, align 8
  %491 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @IPCSendIPv4(%struct.TYPE_44__* %486, i32 %489, i32 %492)
  %494 = load %struct.TYPE_47__*, %struct.TYPE_47__** %33, align 8
  %495 = call i32 @FreeBuf(%struct.TYPE_47__* %494)
  %496 = load i32, i32* %19, align 4
  store i32 %496, i32* %16, align 4
  br label %497

497:                                              ; preds = %461, %454, %442
  br label %498

498:                                              ; preds = %497, %432, %423, %412, %403, %397, %391
  %499 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %499, i32 0, i32 4
  %501 = load %struct.TYPE_49__*, %struct.TYPE_49__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @NN_MAX_QUEUE_LENGTH, align 8
  %505 = icmp sgt i64 %503, %504
  br i1 %505, label %506, label %507

506:                                              ; preds = %498
  store i32 1, i32* %28, align 4
  br label %507

507:                                              ; preds = %506, %498
  %508 = load i32, i32* %28, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %516

510:                                              ; preds = %507
  %511 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %511, i32 0, i32 4
  %513 = load %struct.TYPE_49__*, %struct.TYPE_49__** %512, align 8
  %514 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %515 = call i32 @InsertQueue(%struct.TYPE_49__* %513, %struct.TYPE_41__* %514)
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %519

516:                                              ; preds = %507
  %517 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %518 = call i32 @FreePacketWithData(%struct.TYPE_41__* %517)
  br label %519

519:                                              ; preds = %516, %510
  br label %520

520:                                              ; preds = %519, %261
  br label %255

521:                                              ; preds = %260
  %522 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %523 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %522, i32 0, i32 4
  %524 = load %struct.TYPE_49__*, %struct.TYPE_49__** %523, align 8
  %525 = call i32 @UnlockQueue(%struct.TYPE_49__* %524)
  %526 = load i32, i32* %21, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %521
  br label %148

529:                                              ; preds = %521
  %530 = load i32, i32* %20, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %552

532:                                              ; preds = %529
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %35, align 8
  %533 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = call i32 @Lock(i32 %535)
  %537 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %537, i32 0, i32 3
  %539 = load %struct.TYPE_46__*, %struct.TYPE_46__** %538, align 8
  store %struct.TYPE_46__* %539, %struct.TYPE_46__** %35, align 8
  %540 = load %struct.TYPE_46__*, %struct.TYPE_46__** %35, align 8
  %541 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = call i32 @AddRef(i32 %542)
  %544 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %545 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %544, i32 0, i32 2
  %546 = load i32, i32* %545, align 8
  %547 = call i32 @Unlock(i32 %546)
  %548 = load %struct.TYPE_46__*, %struct.TYPE_46__** %35, align 8
  %549 = call i32 @Cancel(%struct.TYPE_46__* %548)
  %550 = load %struct.TYPE_46__*, %struct.TYPE_46__** %35, align 8
  %551 = call i32 @ReleaseCancel(%struct.TYPE_46__* %550)
  br label %552

552:                                              ; preds = %532, %529
  %553 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %554 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %553, i32 0, i32 0
  %555 = load %struct.TYPE_57__*, %struct.TYPE_57__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %555, i32 0, i32 1
  %557 = load i32*, i32** %556, align 8
  %558 = call i32 @IsTubeConnected(i32* %557)
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %568, label %560

560:                                              ; preds = %552
  %561 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %562 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %561, i32 0, i32 0
  %563 = load %struct.TYPE_57__*, %struct.TYPE_57__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %563, i32 0, i32 0
  %565 = load i32*, i32** %564, align 8
  %566 = call i32 @IsTubeConnected(i32* %565)
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %569

568:                                              ; preds = %560, %552
  br label %591

569:                                              ; preds = %560
  %570 = load i32, i32* %16, align 4
  %571 = load i64, i64* @NN_POLL_CONNECTIVITY_TIMEOUT, align 8
  %572 = trunc i64 %571 to i32
  %573 = add nsw i32 %570, %572
  %574 = load i32, i32* %19, align 4
  %575 = icmp slt i32 %573, %574
  br i1 %575, label %576, label %578

576:                                              ; preds = %569
  %577 = call i32 @Debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %591

578:                                              ; preds = %569
  %579 = load i32*, i32** %9, align 8
  %580 = call i64 @GetNextIntervalForInterrupt(i32* %579)
  store i64 %580, i64* %22, align 8
  %581 = load i64, i64* %22, align 8
  %582 = call i64 @MIN(i64 %581, i32 1234)
  store i64 %582, i64* %22, align 8
  %583 = load i64, i64* %22, align 8
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %590

585:                                              ; preds = %578
  %586 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 0
  %587 = load i64, i64* %7, align 8
  %588 = load i64, i64* %22, align 8
  %589 = call i32 @WaitForTubes(i32** %586, i64 %587, i64 %588)
  br label %590

590:                                              ; preds = %585, %578
  br label %92

591:                                              ; preds = %576, %568, %143, %128, %104
  %592 = load i32*, i32** %9, align 8
  %593 = call i32 @FreeInterruptManager(i32* %592)
  br label %594

594:                                              ; preds = %591, %41
  ret void
}

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32* @NewInterruptManager(...) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @Tick64(...) #1

declare dso_local i32 @AddInterrupt(i32*, i32) #1

declare dso_local i32 @IPCFlushArpTable(%struct.TYPE_44__*) #1

declare dso_local i32 @NnGenSrcPort(i32) #1

declare dso_local i32 @Rand16(...) #1

declare dso_local %struct.TYPE_47__* @NnBuildIpPacket(i32, i64, i64, i32, i32) #1

declare dso_local i32 @NnBuildUdpPacket(i32, i64, i32, i64, i32) #1

declare dso_local i32 @NnBuildDnsQueryPacket(i32, i32) #1

declare dso_local i64 @IPToUINT(i32*) #1

declare dso_local i32 @IPCSendIPv4(%struct.TYPE_44__*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_47__*) #1

declare dso_local i32 @UINTToIP(i32*, i32) #1

declare dso_local i32 @IPCDhcpRenewIP(%struct.TYPE_44__*, i32*) #1

declare dso_local i32 @LockQueue(%struct.TYPE_49__*) #1

declare dso_local %struct.TYPE_48__* @GetNext(%struct.TYPE_49__*) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_48__*) #1

declare dso_local i32 @UnlockQueue(%struct.TYPE_49__*) #1

declare dso_local i32 @IPCProcessL3Events(%struct.TYPE_44__*) #1

declare dso_local %struct.TYPE_48__* @IPCRecvIPv4(%struct.TYPE_44__*) #1

declare dso_local %struct.TYPE_41__* @ParsePacketIPv4WithDummyMacHeader(i32, i32) #1

declare dso_local i64 @Endian16(i32) #1

declare dso_local i64 @NnParseDnsResponsePacket(i64, i32, i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i64 @Rand32(...) #1

declare dso_local i32 @NnBuildTcpPacket(i32, i64, i32, i64, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @NewBuf(...) #1

declare dso_local i64 @Endian32(i32) #1

declare dso_local i32 @InsertQueue(%struct.TYPE_49__*, %struct.TYPE_41__*) #1

declare dso_local i32 @FreePacketWithData(%struct.TYPE_41__*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Cancel(%struct.TYPE_46__*) #1

declare dso_local i32 @ReleaseCancel(%struct.TYPE_46__*) #1

declare dso_local i32 @IsTubeConnected(i32*) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i64 @GetNextIntervalForInterrupt(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @WaitForTubes(i32**, i64, i64) #1

declare dso_local i32 @FreeInterruptManager(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
