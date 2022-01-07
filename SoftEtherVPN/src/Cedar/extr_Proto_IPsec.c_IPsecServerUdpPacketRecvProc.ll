; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_IPsecServerUdpPacketRecvProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_IPsecServerUdpPacketRecvProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32*, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_19__ = type { i32*, i8*, i32*, i32* }
%struct.TYPE_17__ = type { i32*, i8*, i32*, i32* }
%struct.TYPE_15__ = type { i64, i64, i32, i8* }

@IPsecServerUdpPacketRecvProc.zero8 = internal global [8 x i32] zeroinitializer, align 16
@ipsec_disable = common dso_local global i32 0, align 4
@IKE_UDP_TYPE_ISAKMP = common dso_local global i64 0, align 8
@IPSEC_PORT_IPSEC_ESP_UDP = common dso_local global i64 0, align 8
@IKE_UDP_TYPE_ESP = common dso_local global i64 0, align 8
@IPSEC_PORT_IPSEC_ISAKMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPsecServerUdpPacketRecvProc(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  br label %222

20:                                               ; preds = %16
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %6, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = icmp eq %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %222

28:                                               ; preds = %20
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @Set(i32 %40)
  br label %42

42:                                               ; preds = %33, %28
  %43 = call i8* (...) @Tick64()
  store i8* %43, i8** %9, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %7, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %51, %42
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SetL2TPServerSockEvent(%struct.TYPE_17__* %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %8, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  br label %85

85:                                               ; preds = %79, %68
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SetIKEServerSockEvent(%struct.TYPE_19__* %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @ipsec_disable, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %96
  store i64 0, i64* %5, align 8
  br label %103

103:                                              ; preds = %115, %102
  %104 = load i64, i64* %5, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i64 @LIST_NUM(i32* %105)
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i32*, i32** %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call %struct.TYPE_15__* @LIST_DATA(i32* %109, i64 %110)
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %10, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %114 = call i32 @IPsecProcPacket(%struct.TYPE_18__* %112, %struct.TYPE_15__* %113)
  br label %115

115:                                              ; preds = %108
  %116 = load i64, i64* %5, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %5, align 8
  br label %103

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118, %96
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %121 = call i32 @L2TPProcessInterrupts(%struct.TYPE_17__* %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @UdpListenerSendPackets(%struct.TYPE_16__* %122, i32* %125)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @DeleteAll(i32* %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %132 = call i32 @ProcessIKEInterrupts(%struct.TYPE_19__* %131)
  store i64 0, i64* %5, align 8
  br label %133

133:                                              ; preds = %209, %119
  %134 = load i64, i64* %5, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i64 @LIST_NUM(i32* %137)
  %139 = icmp slt i64 %134, %138
  br i1 %139, label %140, label %212

140:                                              ; preds = %133
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %5, align 8
  %145 = call %struct.TYPE_15__* @LIST_DATA(i32* %143, i64 %144)
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %11, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IKE_UDP_TYPE_ISAKMP, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %140
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @IPSEC_PORT_IPSEC_ESP_UDP, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %151
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %12, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @AddHead(i8* %163, i32 %166, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @IPsecServerUdpPacketRecvProc.zero8, i64 0, i64 0), i32 4)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 4
  store i32 %173, i32* %171, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = call i32 @Free(i8* %174)
  br label %208

176:                                              ; preds = %151, %140
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @IKE_UDP_TYPE_ESP, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %207

182:                                              ; preds = %176
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @IPSEC_PORT_IPSEC_ISAKMP, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %182
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %13, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 3
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @AddHead(i8* %194, i32 %197, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @IPsecServerUdpPacketRecvProc.zero8, i64 0, i64 0), i32 8)
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 8
  store i32 %204, i32* %202, align 8
  %205 = load i8*, i8** %13, align 8
  %206 = call i32 @Free(i8* %205)
  br label %207

207:                                              ; preds = %188, %182, %176
  br label %208

208:                                              ; preds = %207, %157
  br label %209

209:                                              ; preds = %208
  %210 = load i64, i64* %5, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %5, align 8
  br label %133

212:                                              ; preds = %133
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @UdpListenerSendPackets(%struct.TYPE_16__* %213, i32* %216)
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @DeleteAll(i32* %220)
  br label %222

222:                                              ; preds = %212, %27, %19
  ret void
}

declare dso_local i32 @Set(i32) #1

declare dso_local i8* @Tick64(...) #1

declare dso_local i32 @SetL2TPServerSockEvent(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @SetIKEServerSockEvent(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_15__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @IPsecProcPacket(%struct.TYPE_18__*, %struct.TYPE_15__*) #1

declare dso_local i32 @L2TPProcessInterrupts(%struct.TYPE_17__*) #1

declare dso_local i32 @UdpListenerSendPackets(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @DeleteAll(i32*) #1

declare dso_local i32 @ProcessIKEInterrupts(%struct.TYPE_19__*) #1

declare dso_local i8* @AddHead(i8*, i32, i32*, i32) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
