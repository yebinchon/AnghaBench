; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_connect_cfm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_connect_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 (i64, i32)*, i32 (i64)*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"SDP - Rcvd conn cnf for unknown CID 0x%x\0A\00", align 1
@L2CAP_CONN_OK = common dso_local global i64 0, align 8
@SDP_STATE_CONN_SETUP = common dso_local global i64 0, align 8
@SDP_STATE_CFG_SETUP = common dso_local global i64 0, align 8
@sdp_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"sdp_connect_cfm:  mode %u, txwinsz %u, max_trans %u, rtrans_tout %u, mon_tout %u, mps %u\0A\00", align 1
@L2CAP_FCR_BASIC_MODE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"SDP - got conn cnf, sent cfg req, CID: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"SDP - Rcvd conn cnf with error: 0x%x  CID 0x%x\0A\00", align 1
@HCI_ERR_HOST_REJECT_SECURITY = common dso_local global i64 0, align 8
@HCI_ERR_AUTH_FAILURE = common dso_local global i64 0, align 8
@HCI_ERR_PAIRING_NOT_ALLOWED = common dso_local global i64 0, align 8
@HCI_ERR_PAIRING_WITH_UNIT_KEY_NOT_SUPPORTED = common dso_local global i64 0, align 8
@HCI_ERR_KEY_MISSING = common dso_local global i64 0, align 8
@SDP_SECURITY_ERR = common dso_local global i64 0, align 8
@HCI_ERR_HOST_REJECT_DEVICE = common dso_local global i64 0, align 8
@SDP_CONN_REJECTED = common dso_local global i64 0, align 8
@SDP_CONN_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @sdp_connect_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_connect_cfm(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.TYPE_10__* @sdpu_find_ccb_by_cid(i64 %8)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %5, align 8
  %10 = icmp eq %struct.TYPE_10__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = call i32 (i8*, i64, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %12)
  br label %155

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @L2CAP_CONN_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SDP_STATE_CONN_SETUP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %18
  %25 = load i64, i64* @SDP_STATE_CFG_SETUP, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.TYPE_11__* @sdp_cb to i8*), i64 40, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i64 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %32, %24
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @L2CA_ConfigReq(i64 %53, %struct.TYPE_9__* %6)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i64, i64* @FALSE, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @L2CA_ConfigReq(i64 %72, %struct.TYPE_9__* %6)
  br label %74

74:                                               ; preds = %66, %60, %56, %52
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @SDP_TRACE_EVENT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %155

79:                                               ; preds = %18, %14
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, i64, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %80, i32 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32 (i64)*, i32 (i64)** %86, align 8
  %88 = icmp ne i32 (i64)* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %79
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32 (i64, i32)*, i32 (i64, i32)** %91, align 8
  %93 = icmp ne i32 (i64, i32)* %92, null
  br i1 %93, label %94, label %152

94:                                               ; preds = %89, %79
  store i64 -1, i64* %7, align 8
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @HCI_ERR_HOST_REJECT_SECURITY, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %114, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @HCI_ERR_AUTH_FAILURE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* @HCI_ERR_PAIRING_NOT_ALLOWED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @HCI_ERR_PAIRING_WITH_UNIT_KEY_NOT_SUPPORTED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* @HCI_ERR_KEY_MISSING, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %106, %102, %98, %94
  %115 = load i64, i64* @SDP_SECURITY_ERR, align 8
  store i64 %115, i64* %7, align 8
  br label %125

116:                                              ; preds = %110
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* @HCI_ERR_HOST_REJECT_DEVICE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i64, i64* @SDP_CONN_REJECTED, align 8
  store i64 %121, i64* %7, align 8
  br label %124

122:                                              ; preds = %116
  %123 = load i64, i64* @SDP_CONN_FAILED, align 8
  store i64 %123, i64* %7, align 8
  br label %124

124:                                              ; preds = %122, %120
  br label %125

125:                                              ; preds = %124, %114
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32 (i64)*, i32 (i64)** %127, align 8
  %129 = icmp ne i32 (i64)* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  %133 = load i32 (i64)*, i32 (i64)** %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32 %133(i64 %134)
  br label %151

136:                                              ; preds = %125
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = load i32 (i64, i32)*, i32 (i64, i32)** %138, align 8
  %140 = icmp ne i32 (i64, i32)* %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i32 (i64, i32)*, i32 (i64, i32)** %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 %144(i64 %145, i32 %148)
  br label %150

150:                                              ; preds = %141, %136
  br label %151

151:                                              ; preds = %150, %130
  br label %152

152:                                              ; preds = %151, %89
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = call i32 @sdpu_release_ccb(%struct.TYPE_10__* %153)
  br label %155

155:                                              ; preds = %11, %152, %74
  ret void
}

declare dso_local %struct.TYPE_10__* @sdpu_find_ccb_by_cid(i64) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i64, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SDP_TRACE_DEBUG(i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @L2CA_ConfigReq(i64, %struct.TYPE_9__*) #1

declare dso_local i32 @SDP_TRACE_EVENT(i8*, i32) #1

declare dso_local i32 @sdpu_release_ccb(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
