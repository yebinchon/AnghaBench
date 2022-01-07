; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_DnsProxy.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_DnsProxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@SPECIAL_UDP_PORT_LLMNR = common dso_local global i64 0, align 8
@v_vgs_hostname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"254.254.211.10.in-addr.arpa\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DnsProxy(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %7
  %20 = load i8*, i8** %13, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %14, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %7
  br label %92

26:                                               ; preds = %22
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @SPECIAL_UDP_PORT_LLMNR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @ParseDnsPacket(i32* %31, i64 %32, i64 %33, i64 %34, i64 %35, i8* %36, i64 %37)
  br label %92

39:                                               ; preds = %26
  %40 = load i32, i32* @v_vgs_hostname, align 4
  %41 = call i32 @IsEmptyStr(i32 %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = call i32 @Zero(%struct.TYPE_6__* %15, i32 64)
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @ParseDnsPacketEx(i32* %45, i64 %46, i64 %47, i64 %48, i64 %49, i8* %50, i64 %51, %struct.TYPE_6__* %15)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @StrCmpi(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %54
  %60 = call i32 @Zero(%struct.TYPE_6__* %16, i32 64)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 10
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @v_vgs_hostname, align 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 8
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 7
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i64 %77, i64* %78, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @SendNatDnsResponse(i32* %79, %struct.TYPE_6__* %16)
  br label %92

81:                                               ; preds = %54
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %82, %39
  %84 = load i32*, i32** %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @UdpRecvForInternet(i32* %84, i64 %85, i64 %86, i64 %87, i64 %88, i8* %89, i64 %90, i32 1)
  br label %92

92:                                               ; preds = %25, %59, %83, %30
  ret void
}

declare dso_local i32 @ParseDnsPacket(i32*, i64, i64, i64, i64, i8*, i64) #1

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ParseDnsPacketEx(i32*, i64, i64, i64, i64, i8*, i64, %struct.TYPE_6__*) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @SendNatDnsResponse(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @UdpRecvForInternet(i32*, i64, i64, i64, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
