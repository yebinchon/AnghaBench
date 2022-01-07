; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_get_ip_parameters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_get_ip_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.dhcp = type { %struct.in_addr }

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DHCP_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"netboot: retrieving IP information from DHCP response\0A\00", align 1
@BOOTP_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"netboot: retrieving IP information from BOOTP response\0A\00", align 1
@dhcptag_subnet_mask_e = common dso_local global i32 0, align 4
@dhcptag_router_e = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_addr*, %struct.in_addr*, %struct.in_addr*)* @get_ip_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ip_parameters(%struct.in_addr* %0, %struct.in_addr* %1, %struct.in_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dhcp*, align 8
  store %struct.in_addr* %0, %struct.in_addr** %5, align 8
  store %struct.in_addr* %1, %struct.in_addr** %6, align 8
  store %struct.in_addr* %2, %struct.in_addr** %7, align 8
  %15 = call i8* @IOBSDRegistryEntryForDeviceTree(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @DHCP_RESPONSE, align 4
  %23 = call i8* @IOBSDRegistryEntryGetData(i8* %21, i32 %22, i32* %10)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = icmp sge i32 %27, 4
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %43

31:                                               ; preds = %26, %20
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @BOOTP_RESPONSE, align 4
  %34 = call i8* @IOBSDRegistryEntryGetData(i8* %32, i32 %33, i32* %10)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = icmp sge i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37, %31
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to %struct.dhcp*
  store %struct.dhcp* %48, %struct.dhcp** %14, align 8
  %49 = load %struct.dhcp*, %struct.dhcp** %14, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @dhcpol_parse_packet(i32* %13, %struct.dhcp* %49, i32 %50)
  %52 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %53 = load %struct.dhcp*, %struct.dhcp** %14, align 8
  %54 = getelementptr inbounds %struct.dhcp, %struct.dhcp* %53, i32 0, i32 0
  %55 = bitcast %struct.in_addr* %52 to i8*
  %56 = bitcast %struct.in_addr* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  %57 = load i32, i32* @dhcptag_subnet_mask_e, align 4
  %58 = call i64 @dhcpol_find(i32* %13, i32 %57, i32* %12, i32* null)
  %59 = inttoptr i64 %58 to %struct.in_addr*
  store %struct.in_addr* %59, %struct.in_addr** %11, align 8
  %60 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %61 = icmp ne %struct.in_addr* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %46
  %63 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %64 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %65 = bitcast %struct.in_addr* %63 to i8*
  %66 = bitcast %struct.in_addr* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  br label %67

67:                                               ; preds = %62, %46
  %68 = load i32, i32* @dhcptag_router_e, align 4
  %69 = call i64 @dhcpol_find(i32* %13, i32 %68, i32* %12, i32* null)
  %70 = inttoptr i64 %69 to %struct.in_addr*
  store %struct.in_addr* %70, %struct.in_addr** %11, align 8
  %71 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %72 = icmp ne %struct.in_addr* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %75 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %76 = bitcast %struct.in_addr* %74 to i8*
  %77 = bitcast %struct.in_addr* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  br label %78

78:                                               ; preds = %73, %67
  br label %79

79:                                               ; preds = %78, %43
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @IOBSDRegistryEntryRelease(i8* %80)
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %82, null
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %18
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i8* @IOBSDRegistryEntryForDeviceTree(i8*) #1

declare dso_local i8* @IOBSDRegistryEntryGetData(i8*, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dhcpol_parse_packet(i32*, %struct.dhcp*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @dhcpol_find(i32*, i32, i32*, i32*) #1

declare dso_local i32 @IOBSDRegistryEntryRelease(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
