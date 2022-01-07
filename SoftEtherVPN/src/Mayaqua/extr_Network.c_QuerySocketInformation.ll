; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_QuerySocketInformation.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_QuerySocketInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i64, i32, i64, i32, i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in = type { %struct.in_addr, i32 }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i32 }

@SOCK_TCP = common dso_local global i64 0, align 8
@SOCK_UDP = common dso_local global i64 0, align 8
@UDP_MAX_MSG_SIZE_DEFAULT = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPV6_UNICAST_HOPS = common dso_local global i64 0, align 8
@IP_TTL = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_MAX_MSG_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @QuerySocketInformation(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.sockaddr_in6, align 4
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.in_addr*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.in_addr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %176

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @Lock(i32 %18)
  store i64 0, i64* %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOCK_TCP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %15
  store i32 12, i32* %5, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = bitcast %struct.sockaddr_in6* %3 to %struct.sockaddr*
  %30 = call i64 @getpeername(i32 %28, %struct.sockaddr* %29, i32* %5)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp uge i64 %34, 12
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 8
  store i64 %39, i64* %41, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 1
  store %struct.in6_addr* %42, %struct.in6_addr** %4, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 12
  %45 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %46 = call i32 @InAddrToIP6(%struct.TYPE_6__* %44, %struct.in6_addr* %45)
  %47 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 12
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %66

52:                                               ; preds = %32
  %53 = bitcast %struct.sockaddr_in6* %3 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %53, %struct.sockaddr_in** %8, align 8
  %54 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ntohs(i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  store i64 %57, i64* %59, align 8
  %60 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 0
  store %struct.in_addr* %61, %struct.in_addr** %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 12
  %64 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %65 = call i32 @InAddrToIP(%struct.TYPE_6__* %63, %struct.in_addr* %64)
  br label %66

66:                                               ; preds = %52, %36
  br label %67

67:                                               ; preds = %66, %25
  br label %68

68:                                               ; preds = %67, %15
  store i32 12, i32* %5, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = bitcast %struct.sockaddr_in6* %3 to %struct.sockaddr*
  %73 = call i64 @getsockname(i32 %71, %struct.sockaddr* %72, i32* %5)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp uge i64 %77, 12
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ntohs(i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 9
  store i64 %82, i64* %84, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 1
  store %struct.in6_addr* %85, %struct.in6_addr** %4, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 11
  %88 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %89 = call i32 @InAddrToIP6(%struct.TYPE_6__* %87, %struct.in6_addr* %88)
  %90 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 11
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %109

95:                                               ; preds = %75
  %96 = bitcast %struct.sockaddr_in6* %3 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %96, %struct.sockaddr_in** %10, align 8
  %97 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @ntohs(i32 %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 9
  store i64 %100, i64* %102, align 8
  %103 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %104 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %103, i32 0, i32 0
  store %struct.in_addr* %104, %struct.in_addr** %11, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 11
  %107 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %108 = call i32 @InAddrToIP(%struct.TYPE_6__* %106, %struct.in_addr* %107)
  br label %109

109:                                              ; preds = %95, %79
  br label %110

110:                                              ; preds = %109, %68
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 10
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @MAKE_SPECIAL_PORT(i32 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 8
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 9
  store i64 %119, i64* %123, align 8
  br label %124

124:                                              ; preds = %115, %110
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SOCK_UDP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i64, i64* @UDP_MAX_MSG_SIZE_DEFAULT, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 6
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %124
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %141

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %139
  store i32 8, i32* %5, align 4
  %142 = load i64, i64* %7, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* @IPPROTO_IPV6, align 4
  br label %156

154:                                              ; preds = %144
  %155 = load i32, i32* @IPPROTO_IP, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load i64, i64* %7, align 8
  %159 = bitcast i64* %6 to i8*
  %160 = call i64 @getsockopt(i32 %147, i32 %157, i64 %158, i8* %159, i32* %5)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156, %141
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  store i32 0, i32* %164, align 8
  br label %171

165:                                              ; preds = %156
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  store i32 1, i32* %167, align 8
  %168 = load i64, i64* %6, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %165, %162
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @Unlock(i32 %174)
  br label %176

176:                                              ; preds = %171, %14
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @InAddrToIP6(%struct.TYPE_6__*, %struct.in6_addr*) #1

declare dso_local i32 @InAddrToIP(%struct.TYPE_6__*, %struct.in_addr*) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @MAKE_SPECIAL_PORT(i32) #1

declare dso_local i64 @getsockopt(i32, i32, i64, i8*, i32*) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
