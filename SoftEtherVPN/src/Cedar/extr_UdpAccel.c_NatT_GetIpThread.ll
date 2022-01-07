; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_NatT_GetIpThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_NatT_GetIpThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@NatT_GetIpThread.dummy_ip = internal global %struct.TYPE_11__ zeroinitializer, align 4
@UDP_NAT_T_GET_IP_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"NAT-T IP Address Resolved: %s = %s\0A\00", align 1
@UDP_NAT_T_GET_IP_INTERVAL_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NatT_GetIpThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  store i32 1, i32* %9, align 4
  br label %87

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %5, align 8
  %27 = call i64 @IsZeroIP(%struct.TYPE_11__* @NatT_GetIpThread.dummy_ip)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = call i32 (...) @Rand8()
  %31 = call i32 (...) @Rand8()
  %32 = call i32 (...) @Rand8()
  %33 = call i32 @SetIP(%struct.TYPE_11__* @NatT_GetIpThread.dummy_ip, i32 11, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = trunc i64 %15 to i32
  %36 = call i32 @RUDPGetRegisterHostNameByIP(i8* %17, i32 %35, %struct.TYPE_11__* @NatT_GetIpThread.dummy_ip)
  br label %37

37:                                               ; preds = %70, %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %37
  %43 = load i64, i64* @UDP_NAT_T_GET_IP_INTERVAL, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = call i32 @GetIP4Ex(%struct.TYPE_11__* %10, i8* %17, i32 0, i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %42
  %50 = call i32 @IsZeroIp(%struct.TYPE_11__* %10)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @Lock(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  %59 = call i32 @Copy(i32* %58, %struct.TYPE_11__* %10, i32 4)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @Unlock(i32 %62)
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %65 = call i32 @IPToStr(i8* %64, i32 128, %struct.TYPE_11__* %10)
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %67 = call i32 @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %86

70:                                               ; preds = %49, %42
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* @UDP_NAT_T_GET_IP_INTERVAL, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %8, align 8
  %76 = trunc i64 %75 to i32
  %77 = mul nsw i32 %74, %76
  %78 = load i64, i64* @UDP_NAT_T_GET_IP_INTERVAL_MAX, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @MIN(i32 %77, i32 %79)
  store i64 %80, i64* %11, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @Wait(i32 %83, i64 %84)
  br label %37

86:                                               ; preds = %52, %37
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %23
  %88 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %9, align 4
  switch i32 %89, label %91 [
    i32 0, label %90
    i32 1, label %90
  ]

90:                                               ; preds = %87, %87
  ret void

91:                                               ; preds = %87
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsZeroIP(%struct.TYPE_11__*) #2

declare dso_local i32 @SetIP(%struct.TYPE_11__*, i32, i32, i32, i32) #2

declare dso_local i32 @Rand8(...) #2

declare dso_local i32 @RUDPGetRegisterHostNameByIP(i8*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @GetIP4Ex(%struct.TYPE_11__*, i8*, i32, i32*) #2

declare dso_local i32 @IsZeroIp(%struct.TYPE_11__*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @Copy(i32*, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @IPToStr(i8*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @Debug(i8*, i8*, i8*) #2

declare dso_local i64 @MIN(i32, i32) #2

declare dso_local i32 @Wait(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
