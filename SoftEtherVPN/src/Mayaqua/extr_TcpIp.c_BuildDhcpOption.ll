; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildDhcpOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildDhcpOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64*, i64, i64, %struct.TYPE_11__, i32, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64* }

@DHCP_ID_MESSAGE_TYPE = common dso_local global i32 0, align 4
@DHCP_ID_SERVER_ADDRESS = common dso_local global i32 0, align 4
@DHCP_ID_LEASE_TIME = common dso_local global i32 0, align 4
@DHCP_ID_DOMAIN_NAME = common dso_local global i32 0, align 4
@DHCP_ID_SUBNET_MASK = common dso_local global i32 0, align 4
@DHCP_ID_GATEWAY_ADDR = common dso_local global i32 0, align 4
@DHCP_ID_DNS_ADDR = common dso_local global i32 0, align 4
@DHCP_ID_CLASSLESS_ROUTE = common dso_local global i32 0, align 4
@DHCP_ID_MS_CLASSLESS_ROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BuildDhcpOption(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %161

11:                                               ; preds = %1
  %12 = call i32* @NewListFast(i32* null)
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @DHCP_ID_MESSAGE_TYPE, align 4
  %18 = call i32 @NewDhcpOption(i32 %17, i64* %5, i32 8)
  %19 = call i32 @Add(i32* %16, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @DHCP_ID_SERVER_ADDRESS, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = call i32 @NewDhcpOption(i32 %21, i64* %23, i32 8)
  %25 = call i32 @Add(i32* %20, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %11
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @DHCP_ID_LEASE_TIME, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = call i32 @NewDhcpOption(i32 %32, i64* %34, i32 8)
  %36 = call i32 @Add(i32* %31, i32 %35)
  br label %37

37:                                               ; preds = %30, %11
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @StrLen(i64* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @DHCP_ID_DOMAIN_NAME, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 @StrLen(i64* %56)
  %58 = call i32 @NewDhcpOption(i32 %50, i64* %53, i32 %57)
  %59 = call i32 @Add(i32* %49, i32 %58)
  br label %60

60:                                               ; preds = %48, %43, %37
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @DHCP_ID_SUBNET_MASK, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = call i32 @NewDhcpOption(i32 %67, i64* %69, i32 8)
  %71 = call i32 @Add(i32* %66, i32 %70)
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @DHCP_ID_GATEWAY_ADDR, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = call i32 @NewDhcpOption(i32 %79, i64* %81, i32 8)
  %83 = call i32 @Add(i32* %78, i32 %82)
  br label %84

84:                                               ; preds = %77, %72
  %85 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %6, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 7
  %94 = call i32 @WriteBuf(%struct.TYPE_10__* %91, i32* %93, i32 4)
  br label %95

95:                                               ; preds = %90, %84
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 6
  %104 = call i32 @WriteBuf(%struct.TYPE_10__* %101, i32* %103, i32 4)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, 1
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* @DHCP_ID_DNS_ADDR, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @NewDhcpOption(i32 %112, i64* %115, i32 %118)
  %120 = call i32 @Add(i32* %111, i32 %119)
  br label %121

121:                                              ; preds = %110, %105
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = call i32 @FreeBuf(%struct.TYPE_10__* %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %127, 1
  br i1 %128, label %129, label %159

129:                                              ; preds = %121
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 5
  %132 = call %struct.TYPE_10__* @DhcpBuildClasslessRouteData(%struct.TYPE_11__* %131)
  store %struct.TYPE_10__* %132, %struct.TYPE_10__** %7, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = icmp ne %struct.TYPE_10__* %133, null
  br i1 %134, label %135, label %158

135:                                              ; preds = %129
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* @DHCP_ID_CLASSLESS_ROUTE, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @NewDhcpOption(i32 %137, i64* %140, i32 %143)
  %145 = call i32 @Add(i32* %136, i32 %144)
  %146 = load i32*, i32** %4, align 8
  %147 = load i32, i32* @DHCP_ID_MS_CLASSLESS_ROUTE, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @NewDhcpOption(i32 %147, i64* %150, i32 %153)
  %155 = call i32 @Add(i32* %146, i32 %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = call i32 @FreeBuf(%struct.TYPE_10__* %156)
  br label %158

158:                                              ; preds = %135, %129
  br label %159

159:                                              ; preds = %158, %121
  %160 = load i32*, i32** %4, align 8
  store i32* %160, i32** %2, align 8
  br label %161

161:                                              ; preds = %159, %10
  %162 = load i32*, i32** %2, align 8
  ret i32* %162
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, i32) #1

declare dso_local i32 @NewDhcpOption(i32, i64*, i32) #1

declare dso_local i32 @StrLen(i64*) #1

declare dso_local %struct.TYPE_10__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @DhcpBuildClasslessRouteData(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
