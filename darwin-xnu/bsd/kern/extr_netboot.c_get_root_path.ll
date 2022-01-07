; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_get_root_path.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_get_root_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dhcp = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@BSDP_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"netboot: retrieving root path from BSDP response\0A\00", align 1
@BOOTP_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"netboot: retrieving root path from BOOTP response\0A\00", align 1
@dhcptag_root_path_e = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_root_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_root_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dhcp*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %5, align 4
  %13 = call i8* @IOBSDRegistryEntryForDeviceTree(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %70

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @BSDP_RESPONSE, align 4
  %21 = call i8* @IOBSDRegistryEntryGetData(i8* %19, i32 %20, i32* %7)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %41

29:                                               ; preds = %24, %18
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @BOOTP_RESPONSE, align 4
  %32 = call i8* @IOBSDRegistryEntryGetData(i8* %30, i32 %31, i32* %7)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 4
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35, %29
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to %struct.dhcp*
  store %struct.dhcp* %46, %struct.dhcp** %11, align 8
  %47 = load %struct.dhcp*, %struct.dhcp** %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dhcpol_parse_packet(i32* %9, %struct.dhcp* %47, i32 %48)
  %50 = load i32, i32* @dhcptag_root_path_e, align 4
  %51 = call i64 @dhcpol_find(i32* %9, i32 %50, i32* %8, i32* null)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %44
  %56 = load i8*, i8** %3, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memcpy(i8* %56, i8* %57, i32 %58)
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %55, %44
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @IOBSDRegistryEntryRelease(i8* %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @IOBSDRegistryEntryForDeviceTree(i8*) #1

declare dso_local i8* @IOBSDRegistryEntryGetData(i8*, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dhcpol_parse_packet(i32*, %struct.dhcp*, i32) #1

declare dso_local i64 @dhcpol_find(i32*, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @IOBSDRegistryEntryRelease(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
