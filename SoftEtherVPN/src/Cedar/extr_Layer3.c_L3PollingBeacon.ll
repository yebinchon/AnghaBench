; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3PollingBeacon.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3PollingBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i8* }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_17__*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_16__ = type { i32, i8*, i8*, i8* }

@BEACON_SEND_INTERVAL = common dso_local global i64 0, align 8
@L3PollingBeacon.beacon_str = internal global [43 x i8] c"PacketiX VPN Virtual Layer-3 Switch Beacon\00", align 16
@IP_HEADER_SIZE = common dso_local global i32 0, align 4
@DEFAULT_IP_TOS = common dso_local global i32 0, align 4
@DEFAULT_IP_TTL = common dso_local global i32 0, align 4
@IP_PROTO_UDP = common dso_local global i32 0, align 4
@broadcast = common dso_local global i32 0, align 4
@MAC_PROTO_IPV4 = common dso_local global i32 0, align 4
@ARP_HARDWARE_TYPE_ETHERNET = common dso_local global i32 0, align 4
@ARP_OPERATION_RESPONSE = common dso_local global i32 0, align 4
@MAC_PROTO_ARPV4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3PollingBeacon(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = icmp eq %struct.TYPE_18__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %160

12:                                               ; preds = %1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BEACON_SEND_INTERVAL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 (...) @Tick64()
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %160

25:                                               ; preds = %17, %12
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = or i32 %32, %36
  store i32 %37, i32* %3, align 4
  store i32 115, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.TYPE_17__* @ZeroMalloc(i32 %38)
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %4, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = bitcast %struct.TYPE_17__* %40 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %7, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i64 40
  %44 = bitcast %struct.TYPE_17__* %43 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %8, align 8
  %45 = call i8* @Endian16(i32 7)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = call i8* @Endian16(i32 7)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = call i8* @Endian16(i32 75)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i64 40
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i64 32
  %57 = call i32 @Copy(%struct.TYPE_17__* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @L3PollingBeacon.beacon_str, i64 0, i64 0), i32 43)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = call i32 @CalcChecksumForIPv4(i32 %60, i32 %61, i32 17, %struct.TYPE_16__* %62, i32 75, i32 0)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %70 = call i32 @IPV4_SET_VERSION(%struct.TYPE_19__* %69, i32 4)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = load i32, i32* @IP_HEADER_SIZE, align 4
  %73 = sdiv i32 %72, 4
  %74 = call i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_19__* %71, i32 %73)
  %75 = load i32, i32* @DEFAULT_IP_TOS, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i8* @Endian16(i32 %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @DEFAULT_IP_TTL, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @IP_PROTO_UDP, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %94 = load i32, i32* @IP_HEADER_SIZE, align 4
  %95 = call i32 @IpChecksum(%struct.TYPE_19__* %93, i32 %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %99 = load i32, i32* @broadcast, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @MAC_PROTO_IPV4, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @L3SendL2Now(%struct.TYPE_18__* %98, i32 %99, i8* %102, i32 %103, %struct.TYPE_17__* %104, i32 %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = call i32 @Free(%struct.TYPE_17__* %107)
  %109 = load i32, i32* @ARP_HARDWARE_TYPE_ETHERNET, align 4
  %110 = call i8* @Endian16(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 8
  store i8* %110, i8** %111, align 8
  %112 = load i32, i32* @MAC_PROTO_IPV4, align 4
  %113 = call i8* @Endian16(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 7
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i32 6, i32* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i32 4, i32* %116, align 4
  %117 = load i32, i32* @ARP_OPERATION_RESPONSE, align 4
  %118 = call i8* @Endian16(i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 6
  store i8* %118, i8** %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 5
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @Copy(%struct.TYPE_17__* %121, i8* %124, i32 6)
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store i32 %128, i32* %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  store i32 255, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  store i32 255, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  store i32 255, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32 255, i32* %141, align 4
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 255, i32* %144, align 4
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 255, i32* %147, align 4
  %148 = load i32, i32* %3, align 4
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 4
  store i32 %148, i32* %149, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %151 = load i32, i32* @broadcast, align 4
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* @MAC_PROTO_ARPV4, align 4
  %156 = call i32 @L3SendL2Now(%struct.TYPE_18__* %150, i32 %151, i8* %154, i32 %155, %struct.TYPE_17__* %6, i32 64)
  %157 = call i64 (...) @Tick64()
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %11, %25, %17
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local %struct.TYPE_17__* @ZeroMalloc(i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @CalcChecksumForIPv4(i32, i32, i32, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @IPV4_SET_VERSION(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @IpChecksum(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @L3SendL2Now(%struct.TYPE_18__*, i32, i8*, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @Free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
