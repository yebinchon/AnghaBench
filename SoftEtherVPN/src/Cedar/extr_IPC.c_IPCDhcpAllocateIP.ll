; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCDhcpAllocateIP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCDhcpAllocateIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }

@DHCP_DISCOVER = common dso_local global i32 0, align 4
@DHCP_OFFER = common dso_local global i32 0, align 4
@IPC_DHCP_TIMEOUT = common dso_local global i32 0, align 4
@IPC_DHCP_DEFAULT_LEASE = common dso_local global i8* null, align 8
@IPC_DHCP_MIN_LEASE = common dso_local global i64 0, align 8
@DHCP_REQUEST = common dso_local global i32 0, align 4
@DHCP_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IPCDhcpAllocateIP(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = call i32 (...) @Rand32()
  store i32 %13, i32* %11, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = icmp eq %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %209

20:                                               ; preds = %16
  %21 = call i32 @Zero(%struct.TYPE_17__* %8, i32 24)
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @DHCP_DISCOVER, align 4
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @StrCpy(i32 %26, i32 4, i32 %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = call i32 @IPCDhcpSetConditionalUserClass(%struct.TYPE_16__* %31, %struct.TYPE_17__* %8)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @DHCP_OFFER, align 4
  %36 = load i32, i32* @IPC_DHCP_TIMEOUT, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call %struct.TYPE_18__* @IPCSendDhcpRequest(%struct.TYPE_16__* %33, i32* null, i32 %34, %struct.TYPE_17__* %8, i32 %35, i32 %36, i32* %37)
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %9, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %40 = icmp eq %struct.TYPE_18__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %209

42:                                               ; preds = %20
  store i32 1, i32* %12, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @IsValidUnicastIPAddressUINT4(i64 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @IsValidUnicastIPAddressUINT4(i64 %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %59, %51
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %67, %60
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i8*, i8** @IPC_DHCP_DEFAULT_LEASE, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  store i64 %77, i64* %81, align 8
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IPC_DHCP_MIN_LEASE, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i64, i64* @IPC_DHCP_MIN_LEASE, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  store i64 %91, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %101 = call i32 @FreeDHCPv4Data(%struct.TYPE_18__* %100)
  store i32 0, i32* %4, align 4
  br label %209

102:                                              ; preds = %96
  %103 = call i32 @Zero(%struct.TYPE_17__* %8, i32 24)
  %104 = load i32, i32* @DHCP_REQUEST, align 4
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @StrCpy(i32 %107, i32 4, i32 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  store i64 %116, i64* %117, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  store i64 %122, i64* %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = call i32 @IPCDhcpSetConditionalUserClass(%struct.TYPE_16__* %124, %struct.TYPE_17__* %8)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @DHCP_ACK, align 4
  %129 = load i32, i32* @IPC_DHCP_TIMEOUT, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = call %struct.TYPE_18__* @IPCSendDhcpRequest(%struct.TYPE_16__* %126, i32* null, i32 %127, %struct.TYPE_17__* %8, i32 %128, i32 %129, i32* %130)
  store %struct.TYPE_18__* %131, %struct.TYPE_18__** %10, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %133 = icmp eq %struct.TYPE_18__* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %102
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %136 = call i32 @FreeDHCPv4Data(%struct.TYPE_18__* %135)
  store i32 0, i32* %4, align 4
  br label %209

137:                                              ; preds = %102
  store i32 1, i32* %12, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @IsValidUnicastIPAddressUINT4(i64 %142)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %145, %137
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @IsValidUnicastIPAddressUINT4(i64 %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %154, %146
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  store i32 0, i32* %12, align 4
  br label %163

163:                                              ; preds = %162, %155
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load i8*, i8** @IPC_DHCP_DEFAULT_LEASE, align 8
  %172 = ptrtoint i8* %171 to i64
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  store i64 %172, i64* %176, align 8
  br label %177

177:                                              ; preds = %170, %163
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @IPC_DHCP_MIN_LEASE, align 8
  %184 = icmp sle i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %177
  %186 = load i64, i64* @IPC_DHCP_MIN_LEASE, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  store i64 %186, i64* %190, align 8
  br label %191

191:                                              ; preds = %185, %177
  %192 = load i32, i32* %12, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %196 = call i32 @FreeDHCPv4Data(%struct.TYPE_18__* %195)
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %198 = call i32 @FreeDHCPv4Data(%struct.TYPE_18__* %197)
  store i32 0, i32* %4, align 4
  br label %209

199:                                              ; preds = %191
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = call i32 @Copy(%struct.TYPE_17__* %200, %struct.TYPE_15__* %203, i32 24)
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %206 = call i32 @FreeDHCPv4Data(%struct.TYPE_18__* %205)
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %208 = call i32 @FreeDHCPv4Data(%struct.TYPE_18__* %207)
  store i32 1, i32* %4, align 4
  br label %209

209:                                              ; preds = %199, %194, %134, %99, %41, %19
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @Rand32(...) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @IPCDhcpSetConditionalUserClass(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @IPCSendDhcpRequest(%struct.TYPE_16__*, i32*, i32, %struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i32 @IsValidUnicastIPAddressUINT4(i64) #1

declare dso_local i32 @FreeDHCPv4Data(%struct.TYPE_18__*) #1

declare dso_local i32 @Copy(%struct.TYPE_17__*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
