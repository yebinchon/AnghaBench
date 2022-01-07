; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_transmit_machine.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_transmit_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__, i32, %struct.TYPE_22__*, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.timeval = type { i64, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }

@TRANSMIT_MACHINE_TX_IMMEDIATE = common dso_local global i8* null, align 8
@g_bond = common dso_local global %struct.TYPE_21__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"[%s] Transmit Timer Already Set\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"[%s] Transmit Timer Deadline %d secs\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"[%s] Transmit Timer Complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"[%s] Transmit: failed to allocate packet buffer\0A\00", align 1
@IEEE8023AD_SLOW_PROTO_SUBTYPE_LACP = common dso_local global i32 0, align 4
@LACPDU_VERSION_1 = common dso_local global i32 0, align 4
@LACPDU_TLV_TYPE_ACTOR = common dso_local global i32 0, align 4
@LACPDU_ACTOR_TLV_LENGTH = common dso_local global i32 0, align 4
@LACPDU_TLV_TYPE_PARTNER = common dso_local global i32 0, align 4
@LACPDU_PARTNER_TLV_LENGTH = common dso_local global i32 0, align 4
@LACPDU_TLV_TYPE_COLLECTOR = common dso_local global i32 0, align 4
@LACPDU_COLLECTOR_TLV_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"[%s] Transmit Packet %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, i32, i8*)* @bondport_transmit_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bondport_transmit_machine(%struct.TYPE_27__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %232 [
    i32 128, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %3, %3
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %23 = call i32 @bondport_flags_ntt(%struct.TYPE_27__* %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %16
  br label %233

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** @TRANSMIT_MACHINE_TX_IMMEDIATE, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %77

31:                                               ; preds = %26
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = call i32 (...) @devtimer_current_secs()
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %35 = call i32 @bondport_can_transmit(%struct.TYPE_27__* %32, i32 %33, i64* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @devtimer_enabled(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_bond, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %50 = call i8* @bondport_get_name(%struct.TYPE_27__* %49)
  %51 = call i32 (i8*, i8*, ...) @timestamp_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %48, %43
  br label %75

53:                                               ; preds = %37
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %struct.timeval* %9 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @devtimer_set_absolute(i32 %56, i64 %59, i64 %61, i32 ptrtoint (void (%struct.TYPE_27__*, i32, i8*)* @bondport_transmit_machine to i32), i8* inttoptr (i64 128 to i8*), i32* null)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_bond, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %69 = call i8* @bondport_get_name(%struct.TYPE_27__* %68)
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 (i8*, i8*, ...) @timestamp_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 %72)
  br label %74

74:                                               ; preds = %67, %53
  br label %75

75:                                               ; preds = %74, %52
  br label %233

76:                                               ; preds = %31
  br label %77

77:                                               ; preds = %76, %30
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_bond, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %87 = call i8* @bondport_get_name(%struct.TYPE_27__* %86)
  %88 = call i32 (i8*, i8*, ...) @timestamp_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %77
  %91 = call i32* @packet_buffer_allocate(i32 20)
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %96 = call i8* @bondport_get_name(%struct.TYPE_27__* %95)
  %97 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  br label %233

98:                                               ; preds = %90
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @packet_buffer_byteptr(i32* %99)
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %102, %struct.TYPE_24__** %10, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %104 = call i32 @bzero(%struct.TYPE_24__* %103, i32 20)
  %105 = load i32, i32* @IEEE8023AD_SLOW_PROTO_SUBTYPE_LACP, align 4
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @LACPDU_VERSION_1, align 4
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %115, %struct.TYPE_26__** %7, align 8
  %116 = load i32, i32* @LACPDU_TLV_TYPE_ACTOR, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @LACPDU_ACTOR_TLV_LENGTH, align 4
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_bond, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i32*
  store i32 %124, i32* %129, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_bond, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @lacp_actor_partner_tlv_set_system_priority(%struct.TYPE_26__* %130, i32 %133)
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @lacp_actor_partner_tlv_set_port_priority(%struct.TYPE_26__* %135, i32 %138)
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %142 = call i32 @bondport_get_index(%struct.TYPE_27__* %141)
  %143 = call i32 @lacp_actor_partner_tlv_set_port(%struct.TYPE_26__* %140, i32 %142)
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @lacp_actor_partner_tlv_set_key(%struct.TYPE_26__* %144, i32 %149)
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %160, %struct.TYPE_26__** %7, align 8
  %161 = load i32, i32* @LACPDU_TLV_TYPE_PARTNER, align 4
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @LACPDU_PARTNER_TLV_LENGTH, align 4
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 1
  store %struct.TYPE_23__* %168, %struct.TYPE_23__** %12, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 3
  store %struct.TYPE_28__* %170, %struct.TYPE_28__** %13, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @lacp_actor_partner_tlv_set_port(%struct.TYPE_26__* %171, i32 %174)
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @lacp_actor_partner_tlv_set_port_priority(%struct.TYPE_26__* %176, i32 %179)
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i32*
  store i32 %183, i32* %188, align 4
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @lacp_actor_partner_tlv_set_system_priority(%struct.TYPE_26__* %189, i32 %192)
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @lacp_actor_partner_tlv_set_key(%struct.TYPE_26__* %194, i32 %197)
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %208, %struct.TYPE_25__** %8, align 8
  %209 = load i32, i32* @LACPDU_TLV_TYPE_COLLECTOR, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @LACPDU_COLLECTOR_TLV_LENGTH, align 4
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = call i32 @bondport_slow_proto_transmit(%struct.TYPE_27__* %215, i32* %216)
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %219 = call i32 @bondport_flags_clear_ntt(%struct.TYPE_27__* %218)
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_bond, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %98
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %226 = call i8* @bondport_get_name(%struct.TYPE_27__* %225)
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i8*, i8*, ...) @timestamp_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %226, i32 %229)
  br label %231

231:                                              ; preds = %224, %98
  br label %233

232:                                              ; preds = %3
  br label %233

233:                                              ; preds = %232, %231, %94, %75, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bondport_flags_ntt(%struct.TYPE_27__*) #2

declare dso_local i32 @bondport_can_transmit(%struct.TYPE_27__*, i32, i64*) #2

declare dso_local i32 @devtimer_current_secs(...) #2

declare dso_local i32 @devtimer_enabled(i32) #2

declare dso_local i32 @timestamp_printf(i8*, i8*, ...) #2

declare dso_local i8* @bondport_get_name(%struct.TYPE_27__*) #2

declare dso_local i32 @devtimer_set_absolute(i32, i64, i64, i32, i8*, i32*) #2

declare dso_local i32* @packet_buffer_allocate(i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @packet_buffer_byteptr(i32*) #2

declare dso_local i32 @bzero(%struct.TYPE_24__*, i32) #2

declare dso_local i32 @lacp_actor_partner_tlv_set_system_priority(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @lacp_actor_partner_tlv_set_port_priority(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @lacp_actor_partner_tlv_set_port(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @bondport_get_index(%struct.TYPE_27__*) #2

declare dso_local i32 @lacp_actor_partner_tlv_set_key(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @bondport_slow_proto_transmit(%struct.TYPE_27__*, i32*) #2

declare dso_local i32 @bondport_flags_clear_ntt(%struct.TYPE_27__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
