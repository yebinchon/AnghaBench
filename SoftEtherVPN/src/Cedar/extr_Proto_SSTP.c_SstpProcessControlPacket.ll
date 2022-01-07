; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpProcessControlPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpProcessControlPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"SSTP Control Packet Recv: Msg = %u, Num = %u\0A\00", align 1
@SSTP_SERVER_STATUS_REQUEST_PENGING = common dso_local global i32 0, align 4
@SSTP_ATTRIB_ENCAPSULATED_PROTOCOL_ID = common dso_local global i32 0, align 4
@SSTP_ENCAPSULATED_PROTOCOL_PPP = common dso_local global i32 0, align 4
@SSTP_NONCE_SIZE = common dso_local global i32 0, align 4
@SSTP_MSG_CALL_CONNECT_ACK = common dso_local global i32 0, align 4
@CERT_HASH_PROTOCOL_SHA256 = common dso_local global i32 0, align 4
@SSTP_SERVER_STATUS_CONNECTED_PENDING = common dso_local global i32 0, align 4
@SSTP_MSG_CALL_CONNECT_NAK = common dso_local global i32 0, align 4
@ATTRIB_STATUS_VALUE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SSTP_SERVER_STATUS_ESTABLISHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"SSTP Connected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SstpProcessControlPacket(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = icmp eq %struct.TYPE_14__* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %10, %2
  br label %137

19:                                               ; preds = %13
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @LIST_NUM(i32 %25)
  %27 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %137 [
    i32 130, label %31
    i32 131, label %104
    i32 129, label %127
    i32 128, label %127
    i32 132, label %132
  ]

31:                                               ; preds = %19
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %103

36:                                               ; preds = %31
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %103

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SSTP_SERVER_STATUS_REQUEST_PENGING, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %102

47:                                               ; preds = %41
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = load i32, i32* @SSTP_ATTRIB_ENCAPSULATED_PROTOCOL_ID, align 4
  %50 = call %struct.TYPE_16__* @SstpFindAttribute(%struct.TYPE_15__* %48, i32 %49)
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %5, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = icmp ne %struct.TYPE_16__* %51, null
  br i1 %52, label %53, label %90

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %90

58:                                               ; preds = %53
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @READ_USHORT(i32 %61)
  %63 = load i32, i32* @SSTP_ENCAPSULATED_PROTOCOL_PPP, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %58
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SSTP_NONCE_SIZE, align 4
  %70 = call i32 @Rand(i32 %68, i32 %69)
  %71 = load i32, i32* @SSTP_MSG_CALL_CONNECT_ACK, align 4
  %72 = load i32, i32* @CERT_HASH_PROTOCOL_SHA256, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SstpNewCryptoBindingRequestAttribute(i32 %72, i32 %75)
  %77 = call %struct.TYPE_15__* @SstpNewControlPacketWithAnAttribute(i32 %71, i32 %76)
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %6, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = call i32 @SstpSendPacket(%struct.TYPE_14__* %78, %struct.TYPE_15__* %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = call i32 @SstpFreePacket(%struct.TYPE_15__* %81)
  %83 = load i32, i32* @SSTP_SERVER_STATUS_CONNECTED_PENDING, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %101

90:                                               ; preds = %58, %53, %47
  %91 = load i32, i32* @SSTP_MSG_CALL_CONNECT_NAK, align 4
  %92 = load i32, i32* @SSTP_ATTRIB_ENCAPSULATED_PROTOCOL_ID, align 4
  %93 = load i32, i32* @ATTRIB_STATUS_VALUE_NOT_SUPPORTED, align 4
  %94 = call i32 @SstpNewStatusInfoAttribute(i32 %92, i32 %93)
  %95 = call %struct.TYPE_15__* @SstpNewControlPacketWithAnAttribute(i32 %91, i32 %94)
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %7, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = call i32 @SstpSendPacket(%struct.TYPE_14__* %96, %struct.TYPE_15__* %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = call i32 @SstpFreePacket(%struct.TYPE_15__* %99)
  br label %101

101:                                              ; preds = %90, %65
  br label %102

102:                                              ; preds = %101, %41
  br label %103

103:                                              ; preds = %102, %36, %31
  br label %137

104:                                              ; preds = %19
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SSTP_SERVER_STATUS_CONNECTED_PENDING, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i32, i32* @SSTP_SERVER_STATUS_ESTABLISHED, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %114
  br label %126

126:                                              ; preds = %125, %109, %104
  br label %137

127:                                              ; preds = %19, %19
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  store i32 1, i32* %129, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = call i32 @SstpDisconnect(%struct.TYPE_14__* %130)
  br label %137

132:                                              ; preds = %19
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  store i32 1, i32* %134, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = call i32 @SstpAbort(%struct.TYPE_14__* %135)
  br label %137

137:                                              ; preds = %18, %19, %132, %127, %126, %103
  ret void
}

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_16__* @SstpFindAttribute(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @READ_USHORT(i32) #1

declare dso_local i32 @Rand(i32, i32) #1

declare dso_local %struct.TYPE_15__* @SstpNewControlPacketWithAnAttribute(i32, i32) #1

declare dso_local i32 @SstpNewCryptoBindingRequestAttribute(i32, i32) #1

declare dso_local i32 @SstpSendPacket(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @SstpFreePacket(%struct.TYPE_15__*) #1

declare dso_local i32 @SstpNewStatusInfoAttribute(i32, i32) #1

declare dso_local i32 @SstpDisconnect(%struct.TYPE_14__*) #1

declare dso_local i32 @SstpAbort(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
