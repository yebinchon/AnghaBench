; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_token_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_token_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_group = type { i32, i32 }
%struct.socket = type { i32, %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockopt = type { i64, i32 }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MBUF_DONTWAIT = common dso_local global i32 0, align 4
@MBUF_TYPE_HEADER = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate the header mbuf: %d\00", align 1
@FLOW_DIVERT_TLV_CTL_UNIT = common dso_local global i32 0, align 4
@FLOW_DIVERT_TLV_FLOW_ID = common dso_local global i32 0, align 4
@FLOW_DIVERT_TLV_APP_DATA = common dso_local global i32 0, align 4
@g_flow_divert_group_lck = common dso_local global i32 0, align 4
@g_flow_divert_groups = common dso_local global %struct.flow_divert_group** null, align 8
@g_active_group_count = common dso_local global i64 0, align 8
@GROUP_COUNT_MAX = common dso_local global i64 0, align 8
@FLOW_DIVERT_TLV_KEY_UNIT = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@FLOW_DIVERT_TLV_HMAC = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flow_divert_token_get(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.flow_divert_pcb*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.flow_divert_group*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockopt* %1, %struct.sockopt** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %17, align 8
  store %struct.flow_divert_pcb* %18, %struct.flow_divert_pcb** %9, align 8
  store i32* null, i32** %10, align 8
  store %struct.flow_divert_group* null, %struct.flow_divert_group** %11, align 8
  %19 = load %struct.socket*, %struct.socket** %3, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %189

27:                                               ; preds = %2
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.socket*, %struct.socket** %3, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 1
  %37 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %36, align 8
  %38 = icmp ne %struct.flow_divert_pcb* %37, null
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi i1 [ false, %27 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @VERIFY(i32 %41)
  %43 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %44 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp eq %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %6, align 4
  br label %189

49:                                               ; preds = %39
  %50 = load i32, i32* @MBUF_DONTWAIT, align 4
  %51 = load i32, i32* @MBUF_TYPE_HEADER, align 4
  %52 = call i32 @mbuf_gethdr(i32 %50, i32 %51, i32** %10)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @LOG_ERR, align 4
  %57 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @FDLOG(i32 %56, %struct.flow_divert_pcb* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %189

60:                                               ; preds = %49
  %61 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %62 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htonl(i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* @FLOW_DIVERT_TLV_CTL_UNIT, align 4
  %69 = call i32 @flow_divert_packet_append_tlv(i32* %67, i32 %68, i32 4, i32* %5)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %189

73:                                               ; preds = %60
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* @FLOW_DIVERT_TLV_FLOW_ID, align 4
  %76 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %77 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %76, i32 0, i32 3
  %78 = call i32 @flow_divert_packet_append_tlv(i32* %74, i32 %75, i32 4, i32* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %189

82:                                               ; preds = %73
  %83 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %84 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* @FLOW_DIVERT_TLV_APP_DATA, align 4
  %90 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %91 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %94 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @flow_divert_packet_append_tlv(i32* %88, i32 %89, i32 %92, i32* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %189

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %82
  %102 = load %struct.socket*, %struct.socket** %3, align 8
  %103 = call i32 @socket_unlock(%struct.socket* %102, i32 0)
  %104 = call i32 @lck_rw_lock_shared(i32* @g_flow_divert_group_lck)
  %105 = load %struct.flow_divert_group**, %struct.flow_divert_group*** @g_flow_divert_groups, align 8
  %106 = icmp ne %struct.flow_divert_group** %105, null
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = load i64, i64* @g_active_group_count, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %112 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %117 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @GROUP_COUNT_MAX, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.flow_divert_group**, %struct.flow_divert_group*** @g_flow_divert_groups, align 8
  %123 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %9, align 8
  %124 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.flow_divert_group*, %struct.flow_divert_group** %122, i64 %125
  %127 = load %struct.flow_divert_group*, %struct.flow_divert_group** %126, align 8
  store %struct.flow_divert_group* %127, %struct.flow_divert_group** %11, align 8
  br label %128

128:                                              ; preds = %121, %115, %110, %107, %101
  %129 = load %struct.flow_divert_group*, %struct.flow_divert_group** %11, align 8
  %130 = icmp ne %struct.flow_divert_group* %129, null
  br i1 %130, label %131, label %152

131:                                              ; preds = %128
  %132 = load %struct.flow_divert_group*, %struct.flow_divert_group** %11, align 8
  %133 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %132, i32 0, i32 0
  %134 = call i32 @lck_rw_lock_shared(i32* %133)
  %135 = load %struct.flow_divert_group*, %struct.flow_divert_group** %11, align 8
  %136 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @htonl(i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* @FLOW_DIVERT_TLV_KEY_UNIT, align 4
  %141 = call i32 @flow_divert_packet_append_tlv(i32* %139, i32 %140, i32 4, i32* %5)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %131
  %145 = load i32*, i32** %10, align 8
  %146 = load %struct.flow_divert_group*, %struct.flow_divert_group** %11, align 8
  %147 = call i32 @flow_divert_packet_compute_hmac(i32* %145, %struct.flow_divert_group* %146, i32* %15)
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %144, %131
  %149 = load %struct.flow_divert_group*, %struct.flow_divert_group** %11, align 8
  %150 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %149, i32 0, i32 0
  %151 = call i32 @lck_rw_done(i32* %150)
  br label %154

152:                                              ; preds = %128
  %153 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %148
  %155 = call i32 @lck_rw_done(i32* @g_flow_divert_group_lck)
  %156 = load %struct.socket*, %struct.socket** %3, align 8
  %157 = call i32 @socket_lock(%struct.socket* %156, i32 0)
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %189

161:                                              ; preds = %154
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* @FLOW_DIVERT_TLV_HMAC, align 4
  %164 = mul nuw i64 4, %13
  %165 = trunc i64 %164 to i32
  %166 = call i32 @flow_divert_packet_append_tlv(i32* %162, i32 %163, i32 %165, i32* %15)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %189

170:                                              ; preds = %161
  %171 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %172 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @USER_ADDR_NULL, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load i32*, i32** %10, align 8
  %178 = call i32 @mbuf_pkthdr_len(i32* %177)
  %179 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %180 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 8
  br label %189

181:                                              ; preds = %170
  %182 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @soopt_mcopyout(%struct.sockopt* %182, i32* %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store i32* null, i32** %10, align 8
  br label %189

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188, %187, %176, %169, %160, %99, %81, %72, %55, %47, %25
  %190 = load i32*, i32** %10, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32*, i32** %10, align 8
  %194 = call i32 @mbuf_freem(i32* %193)
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %6, align 4
  %197 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %197)
  ret i32 %196
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @mbuf_gethdr(i32, i32, i32**) #2

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @flow_divert_packet_append_tlv(i32*, i32, i32, i32*) #2

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #2

declare dso_local i32 @lck_rw_lock_shared(i32*) #2

declare dso_local i32 @flow_divert_packet_compute_hmac(i32*, %struct.flow_divert_group*, i32*) #2

declare dso_local i32 @lck_rw_done(i32*) #2

declare dso_local i32 @socket_lock(%struct.socket*, i32) #2

declare dso_local i32 @mbuf_pkthdr_len(i32*) #2

declare dso_local i32 @soopt_mcopyout(%struct.sockopt*, i32*) #2

declare dso_local i32 @mbuf_freem(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
