; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_check_ip6fw_struct.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_check_ip6fw_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_fw = type { i32, i64, i64, i64, i32, i32, i64, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@IPV6_FW_F_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s undefined flag bits set (flags=%x)\0A\00", align 1
@err_prefix = common dso_local global i32 0, align 4
@IPV6_FW_F_IN = common dso_local global i32 0, align 4
@IPV6_FW_F_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s neither in nor out\0A\00", align 1
@IPV6_FW_F_IIFNAME = common dso_local global i32 0, align 4
@IPV6_FW_F_OIFNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s empty interface name\0A\00", align 1
@IF6_FW_F_VIAHACK = common dso_local global i32 0, align 4
@IPV6_FW_F_OIFACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%s outgoing interface check on incoming\0A\00", align 1
@IPV6_FW_F_SRNG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%s src range set but n_src_p=%d\0A\00", align 1
@IPV6_FW_F_DRNG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"%s dst range set but n_dst_p=%d\0A\00", align 1
@IPV6_FW_MAX_PORTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"%s too many ports (%d+%d)\0A\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"%s port(s) specified for non TCP/UDP rule\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"%s rule never matches\0A\00", align 1
@IPV6_FW_F_FRAG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"%s cannot mix 'frag' and ports\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s cannot mix 'frag' with TCP flags\0A\00", align 1
@IPV6_FW_F_COMMAND = common dso_local global i32 0, align 4
@IPV6_FW_REJECT_RST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"%s unknown reject code\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%s can't divert to port 0\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%s invalid command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip6_fw* (%struct.ip6_fw*)* @check_ip6fw_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip6_fw* @check_ip6fw_struct(%struct.ip6_fw* %0) #0 {
  %2 = alloca %struct.ip6_fw*, align 8
  %3 = alloca %struct.ip6_fw*, align 8
  store %struct.ip6_fw* %0, %struct.ip6_fw** %3, align 8
  %4 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %5 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IPV6_FW_F_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @err_prefix, align 4
  %13 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %14 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @dprintf(i8* %17)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

19:                                               ; preds = %1
  %20 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %21 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IPV6_FW_F_IN, align 4
  %24 = load i32, i32* @IPV6_FW_F_OUT, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @err_prefix, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @dprintf(i8* %31)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

33:                                               ; preds = %19
  %34 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %35 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IPV6_FW_F_IIFNAME, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %42 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %41, i32 0, i32 12
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %40, %33
  %49 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %50 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IPV6_FW_F_OIFNAME, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %57 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %56, i32 0, i32 11
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %55, %40
  %64 = load i32, i32* @err_prefix, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @dprintf(i8* %66)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

68:                                               ; preds = %55, %48
  %69 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %70 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IF6_FW_F_VIAHACK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @IF6_FW_F_VIAHACK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %97

77:                                               ; preds = %68
  %78 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %79 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IPV6_FW_F_IN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %86 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IPV6_FW_F_OIFACE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i32, i32* @err_prefix, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @dprintf(i8* %94)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

96:                                               ; preds = %84, %77
  br label %97

97:                                               ; preds = %96, %76
  %98 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %99 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IPV6_FW_F_SRNG, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %106 = call i32 @IPV6_FW_GETNSRCP(%struct.ip6_fw* %105)
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, i32* @err_prefix, align 4
  %110 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %111 = call i32 @IPV6_FW_GETNSRCP(%struct.ip6_fw* %110)
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @dprintf(i8* %113)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

115:                                              ; preds = %104, %97
  %116 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %117 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IPV6_FW_F_DRNG, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %115
  %123 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %124 = call i32 @IPV6_FW_GETNDSTP(%struct.ip6_fw* %123)
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i32, i32* @err_prefix, align 4
  %128 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %129 = call i32 @IPV6_FW_GETNDSTP(%struct.ip6_fw* %128)
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @dprintf(i8* %131)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

133:                                              ; preds = %122, %115
  %134 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %135 = call i32 @IPV6_FW_GETNSRCP(%struct.ip6_fw* %134)
  %136 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %137 = call i32 @IPV6_FW_GETNDSTP(%struct.ip6_fw* %136)
  %138 = add nsw i32 %135, %137
  %139 = load i32, i32* @IPV6_FW_MAX_PORTS, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %133
  %142 = load i32, i32* @err_prefix, align 4
  %143 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %144 = call i32 @IPV6_FW_GETNSRCP(%struct.ip6_fw* %143)
  %145 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %146 = call i32 @IPV6_FW_GETNDSTP(%struct.ip6_fw* %145)
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @dprintf(i8* %148)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

150:                                              ; preds = %133
  %151 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %152 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @IPPROTO_TCP, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %150
  %157 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %158 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @IPPROTO_UDP, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %156
  %163 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %164 = call i32 @IPV6_FW_GETNSRCP(%struct.ip6_fw* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %168 = call i32 @IPV6_FW_GETNDSTP(%struct.ip6_fw* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %166, %162
  %171 = load i32, i32* @err_prefix, align 4
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = call i32 @dprintf(i8* %173)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

175:                                              ; preds = %166, %156, %150
  %176 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %177 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %176, i32 0, i32 10
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %183 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = xor i32 %187, -1
  %189 = and i32 %181, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %303, label %191

191:                                              ; preds = %175
  %192 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %193 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %192, i32 0, i32 10
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %199 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = xor i32 %203, -1
  %205 = and i32 %197, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %303, label %207

207:                                              ; preds = %191
  %208 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %209 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %208, i32 0, i32 10
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %215 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %214, i32 0, i32 9
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %219, -1
  %221 = and i32 %213, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %303, label %223

223:                                              ; preds = %207
  %224 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %225 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %224, i32 0, i32 10
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %231 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  %235 = load i32, i32* %234, align 4
  %236 = xor i32 %235, -1
  %237 = and i32 %229, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %303, label %239

239:                                              ; preds = %223
  %240 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %241 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %240, i32 0, i32 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %247 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %246, i32 0, i32 7
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = xor i32 %251, -1
  %253 = and i32 %245, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %303, label %255

255:                                              ; preds = %239
  %256 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %257 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %256, i32 0, i32 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %263 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %262, i32 0, i32 7
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = xor i32 %267, -1
  %269 = and i32 %261, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %303, label %271

271:                                              ; preds = %255
  %272 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %273 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %272, i32 0, i32 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %279 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %278, i32 0, i32 7
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load i32, i32* %282, align 4
  %284 = xor i32 %283, -1
  %285 = and i32 %277, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %303, label %287

287:                                              ; preds = %271
  %288 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %289 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %288, i32 0, i32 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %295 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %294, i32 0, i32 7
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 3
  %299 = load i32, i32* %298, align 4
  %300 = xor i32 %299, -1
  %301 = and i32 %293, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %287, %271, %255, %239, %223, %207, %191, %175
  %304 = load i32, i32* @err_prefix, align 4
  %305 = sext i32 %304 to i64
  %306 = inttoptr i64 %305 to i8*
  %307 = call i32 @dprintf(i8* %306)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

308:                                              ; preds = %287
  %309 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %310 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @IPV6_FW_F_FRAG, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %357

315:                                              ; preds = %308
  %316 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %317 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @IPPROTO_UDP, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %327, label %321

321:                                              ; preds = %315
  %322 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %323 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @IPPROTO_TCP, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %357

327:                                              ; preds = %321, %315
  %328 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %329 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %328, i32 0, i32 6
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = load i32, i32* @err_prefix, align 4
  %334 = sext i32 %333 to i64
  %335 = inttoptr i64 %334 to i8*
  %336 = call i32 @dprintf(i8* %335)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

337:                                              ; preds = %327
  %338 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %339 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @IPPROTO_TCP, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %356

343:                                              ; preds = %337
  %344 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %345 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %348 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %347, i32 0, i32 3
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %346, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %343
  %352 = load i32, i32* @err_prefix, align 4
  %353 = sext i32 %352 to i64
  %354 = inttoptr i64 %353 to i8*
  %355 = call i32 @dprintf(i8* %354)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

356:                                              ; preds = %343, %337
  br label %357

357:                                              ; preds = %356, %321, %308
  %358 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %359 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @IPV6_FW_F_COMMAND, align 4
  %362 = and i32 %360, %361
  switch i32 %362, label %398 [
    i32 130, label %363
    i32 131, label %386
    i32 128, label %386
    i32 132, label %397
    i32 134, label %397
    i32 133, label %397
    i32 129, label %397
  ]

363:                                              ; preds = %357
  %364 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %365 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 8
  %367 = icmp sge i32 %366, 256
  br i1 %367, label %368, label %385

368:                                              ; preds = %363
  %369 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %370 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @IPPROTO_TCP, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %380

374:                                              ; preds = %368
  %375 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %376 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @IPV6_FW_REJECT_RST, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %385, label %380

380:                                              ; preds = %374, %368
  %381 = load i32, i32* @err_prefix, align 4
  %382 = sext i32 %381 to i64
  %383 = inttoptr i64 %382 to i8*
  %384 = call i32 @dprintf(i8* %383)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

385:                                              ; preds = %374, %363
  br label %403

386:                                              ; preds = %357, %357
  %387 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  %388 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %386
  %392 = load i32, i32* @err_prefix, align 4
  %393 = sext i32 %392 to i64
  %394 = inttoptr i64 %393 to i8*
  %395 = call i32 @dprintf(i8* %394)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

396:                                              ; preds = %386
  br label %403

397:                                              ; preds = %357, %357, %357, %357
  br label %403

398:                                              ; preds = %357
  %399 = load i32, i32* @err_prefix, align 4
  %400 = sext i32 %399 to i64
  %401 = inttoptr i64 %400 to i8*
  %402 = call i32 @dprintf(i8* %401)
  store %struct.ip6_fw* null, %struct.ip6_fw** %2, align 8
  br label %405

403:                                              ; preds = %397, %396, %385
  %404 = load %struct.ip6_fw*, %struct.ip6_fw** %3, align 8
  store %struct.ip6_fw* %404, %struct.ip6_fw** %2, align 8
  br label %405

405:                                              ; preds = %403, %398, %391, %380, %351, %332, %303, %170, %141, %126, %108, %91, %63, %28, %11
  %406 = load %struct.ip6_fw*, %struct.ip6_fw** %2, align 8
  ret %struct.ip6_fw* %406
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @IPV6_FW_GETNSRCP(%struct.ip6_fw*) #1

declare dso_local i32 @IPV6_FW_GETNDSTP(%struct.ip6_fw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
