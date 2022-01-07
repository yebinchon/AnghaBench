; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCBuildDhcpRequestOptions.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCBuildDhcpRequestOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64*, i64* }

@DHCP_ID_MESSAGE_TYPE = common dso_local global i32 0, align 4
@DHCP_ID_SERVER_ADDRESS = common dso_local global i32 0, align 4
@DHCP_ID_REQUEST_IP_ADDRESS = common dso_local global i32 0, align 4
@DHCP_ID_HOST_NAME = common dso_local global i32 0, align 4
@DHCP_ID_CLIENT_ID = common dso_local global i32 0, align 4
@ARP_HARDWARE_TYPE_ETHERNET = common dso_local global i64 0, align 8
@DHCP_ID_USER_CLASS = common dso_local global i32 0, align 4
@DHCP_ID_VENDOR_ID = common dso_local global i32 0, align 4
@IPC_DHCP_VENDOR_ID = common dso_local global i64* null, align 8
@DHCP_DISCOVER = common dso_local global i64 0, align 8
@DHCP_REQUEST = common dso_local global i64 0, align 8
@DHCP_INFORM = common dso_local global i64 0, align 8
@DHCP_ID_REQ_PARAM_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IPCBuildDhcpRequestOptions(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [7 x i64], align 16
  %10 = alloca [12 x i64], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32* null, i32** %3, align 8
  br label %153

17:                                               ; preds = %13
  %18 = call i32* @NewListFast(i32* null)
  store i32* %18, i32** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @DHCP_ID_MESSAGE_TYPE, align 4
  %24 = call i32 @NewDhcpOption(i32 %23, i64* %7, i32 8)
  %25 = call i32 @Add(i32* %22, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @DHCP_ID_SERVER_ADDRESS, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @NewDhcpOption(i32 %32, i64* %34, i32 4)
  %36 = call i32 @Add(i32* %31, i32 %35)
  br label %37

37:                                               ; preds = %30, %17
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @DHCP_ID_REQUEST_IP_ADDRESS, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = call i32 @NewDhcpOption(i32 %44, i64* %46, i32 4)
  %48 = call i32 @Add(i32* %43, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @IsEmptyStr(i64* %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @DHCP_ID_HOST_NAME, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = call i32 @StrLen(i64* %63)
  %65 = call i32 @NewDhcpOption(i32 %57, i64* %60, i32 %64)
  %66 = call i32 @Add(i32* %56, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @DHCP_ID_CLIENT_ID, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i64*, i64** %73, align 8
  %75 = call i32 @StrLen(i64* %74)
  %76 = call i32 @NewDhcpOption(i32 %68, i64* %71, i32 %75)
  %77 = call i32 @Add(i32* %67, i32 %76)
  br label %92

78:                                               ; preds = %49
  %79 = load i64, i64* @ARP_HARDWARE_TYPE_ETHERNET, align 8
  %80 = getelementptr inbounds [7 x i64], [7 x i64]* %9, i64 0, i64 0
  store i64 %79, i64* %80, align 16
  %81 = getelementptr inbounds [7 x i64], [7 x i64]* %9, i64 0, i64 0
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @Copy(i64* %82, i32 %85, i32 6)
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @DHCP_ID_CLIENT_ID, align 4
  %89 = getelementptr inbounds [7 x i64], [7 x i64]* %9, i64 0, i64 0
  %90 = call i32 @NewDhcpOption(i32 %88, i64* %89, i32 56)
  %91 = call i32 @Add(i32* %87, i32 %90)
  br label %92

92:                                               ; preds = %78, %55
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = call i32 @IsEmptyStr(i64* %95)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @DHCP_ID_USER_CLASS, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load i64*, i64** %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = load i64*, i64** %105, align 8
  %107 = call i32 @StrLen(i64* %106)
  %108 = call i32 @NewDhcpOption(i32 %100, i64* %103, i32 %107)
  %109 = call i32 @Add(i32* %99, i32 %108)
  br label %110

110:                                              ; preds = %98, %92
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* @DHCP_ID_VENDOR_ID, align 4
  %113 = load i64*, i64** @IPC_DHCP_VENDOR_ID, align 8
  %114 = load i64*, i64** @IPC_DHCP_VENDOR_ID, align 8
  %115 = call i32 @StrLen(i64* %114)
  %116 = call i32 @NewDhcpOption(i32 %112, i64* %113, i32 %115)
  %117 = call i32 @Add(i32* %111, i32 %116)
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @DHCP_DISCOVER, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %110
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @DHCP_REQUEST, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* @DHCP_INFORM, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %125, %121, %110
  %130 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  store i64 1, i64* %130, align 16
  %131 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 1
  store i64 15, i64* %131, align 8
  %132 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 2
  store i64 3, i64* %132, align 16
  %133 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 3
  store i64 6, i64* %133, align 8
  %134 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 4
  store i64 44, i64* %134, align 16
  %135 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 5
  store i64 46, i64* %135, align 8
  %136 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 6
  store i64 47, i64* %136, align 16
  %137 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 7
  store i64 31, i64* %137, align 8
  %138 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 8
  store i64 33, i64* %138, align 16
  %139 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 9
  store i64 121, i64* %139, align 8
  %140 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 10
  store i64 249, i64* %140, align 16
  %141 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 11
  store i64 43, i64* %141, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* @DHCP_ID_REQ_PARAM_LIST, align 4
  %144 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %145 = call i32 @NewDhcpOption(i32 %143, i64* %144, i32 96)
  %146 = call i32 @Add(i32* %142, i32 %145)
  br label %147

147:                                              ; preds = %129, %125
  %148 = load i32*, i32** %6, align 8
  %149 = call i32* @BuildDhcpOptionsBuf(i32* %148)
  store i32* %149, i32** %8, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @FreeDhcpOptions(i32* %150)
  %152 = load i32*, i32** %8, align 8
  store i32* %152, i32** %3, align 8
  br label %153

153:                                              ; preds = %147, %16
  %154 = load i32*, i32** %3, align 8
  ret i32* %154
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, i32) #1

declare dso_local i32 @NewDhcpOption(i32, i64*, i32) #1

declare dso_local i32 @IsEmptyStr(i64*) #1

declare dso_local i32 @StrLen(i64*) #1

declare dso_local i32 @Copy(i64*, i32, i32) #1

declare dso_local i32* @BuildDhcpOptionsBuf(i32*) #1

declare dso_local i32 @FreeDhcpOptions(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
