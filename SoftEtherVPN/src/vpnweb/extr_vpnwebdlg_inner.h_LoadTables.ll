; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpnweb/extr_vpnwebdlg_inner.h_LoadTables.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpnweb/extr_vpnwebdlg_inner.h_LoadTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"JP\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"JA\00", align 1
@MESSAGE_OFFSET_JP = common dso_local global i32 0, align 4
@currentPage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@MESSAGE_OFFSET_EN = common dso_local global i32 0, align 4
@_e_msgAppTitle = common dso_local global i32 0, align 4
@msgAppTitle = common dso_local global i8* null, align 8
@_e_msgNotSupported = common dso_local global i32 0, align 4
@msgNotSupported = common dso_local global i8* null, align 8
@_e_msgInfDownload = common dso_local global i32 0, align 4
@msgInfDownload = common dso_local global i8* null, align 8
@_e_msgInfDownloadFailed = common dso_local global i32 0, align 4
@msgInfDownloadFailed = common dso_local global i8* null, align 8
@_e_msgBadInfFile = common dso_local global i32 0, align 4
@msgBadInfFile = common dso_local global i8* null, align 8
@_e_msgWriteFailed = common dso_local global i32 0, align 4
@msgWriteFailed = common dso_local global i8* null, align 8
@_e_msgDownloading = common dso_local global i32 0, align 4
@msgDownloading = common dso_local global i8* null, align 8
@_e_msgProcessFailed = common dso_local global i32 0, align 4
@msgProcessFailed = common dso_local global i8* null, align 8
@_e_msgProcessCreating = common dso_local global i32 0, align 4
@msgProcessCreating = common dso_local global i8* null, align 8
@_e_msgProcessCreated = common dso_local global i32 0, align 4
@msgProcessCreated = common dso_local global i8* null, align 8
@_e_msgWarning = common dso_local global i32 0, align 4
@msgWarning = common dso_local global i8* null, align 8
@_e_msgWarningTitle = common dso_local global i32 0, align 4
@msgWarningTitle = common dso_local global i8* null, align 8
@_e_msgUserCancel = common dso_local global i32 0, align 4
@msgUserCancel = common dso_local global i8* null, align 8
@_e_msgStartTextForVpnServer = common dso_local global i32 0, align 4
@msgStartTextForVpnServer = common dso_local global i8* null, align 8
@_e_msgButtonForVpnServer = common dso_local global i32 0, align 4
@msgButtonForVpnServer = common dso_local global i8* null, align 8
@_e_msgProcessCreatedForVpnServer = common dso_local global i32 0, align 4
@msgProcessCreatedForVpnServer = common dso_local global i8* null, align 8
@_e_msgNoParam = common dso_local global i32 0, align 4
@msgNoParam = common dso_local global i8* null, align 8
@_e_msgStartTextForVpnClient = common dso_local global i32 0, align 4
@msgStartTextForVpnClient = common dso_local global i8* null, align 8
@_e_msgButtonForVpnClient = common dso_local global i32 0, align 4
@msgButtonForVpnClient = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadTables(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @stricmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @stricmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @MESSAGE_OFFSET_JP, align 4
  store i32 %11, i32* @currentPage, align 4
  br label %19

12:                                               ; preds = %6
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @stricmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @MESSAGE_OFFSET_EN, align 4
  store i32 %17, i32* @currentPage, align 4
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i32, i32* @_e_msgAppTitle, align 4
  %21 = call i8* @LoadMessageW(i32 %20)
  store i8* %21, i8** @msgAppTitle, align 8
  %22 = load i32, i32* @_e_msgNotSupported, align 4
  %23 = call i8* @LoadMessageA(i32 %22)
  store i8* %23, i8** @msgNotSupported, align 8
  %24 = load i32, i32* @_e_msgInfDownload, align 4
  %25 = call i8* @LoadMessageW(i32 %24)
  store i8* %25, i8** @msgInfDownload, align 8
  %26 = load i32, i32* @_e_msgInfDownloadFailed, align 4
  %27 = call i8* @LoadMessageW(i32 %26)
  store i8* %27, i8** @msgInfDownloadFailed, align 8
  %28 = load i32, i32* @_e_msgBadInfFile, align 4
  %29 = call i8* @LoadMessageW(i32 %28)
  store i8* %29, i8** @msgBadInfFile, align 8
  %30 = load i32, i32* @_e_msgWriteFailed, align 4
  %31 = call i8* @LoadMessageW(i32 %30)
  store i8* %31, i8** @msgWriteFailed, align 8
  %32 = load i32, i32* @_e_msgDownloading, align 4
  %33 = call i8* @LoadMessageW(i32 %32)
  store i8* %33, i8** @msgDownloading, align 8
  %34 = load i32, i32* @_e_msgProcessFailed, align 4
  %35 = call i8* @LoadMessageW(i32 %34)
  store i8* %35, i8** @msgProcessFailed, align 8
  %36 = load i32, i32* @_e_msgProcessCreating, align 4
  %37 = call i8* @LoadMessageW(i32 %36)
  store i8* %37, i8** @msgProcessCreating, align 8
  %38 = load i32, i32* @_e_msgProcessCreated, align 4
  %39 = call i8* @LoadMessageW(i32 %38)
  store i8* %39, i8** @msgProcessCreated, align 8
  %40 = load i32, i32* @_e_msgWarning, align 4
  %41 = call i8* @LoadMessageW(i32 %40)
  store i8* %41, i8** @msgWarning, align 8
  %42 = load i32, i32* @_e_msgWarningTitle, align 4
  %43 = call i8* @LoadMessageW(i32 %42)
  store i8* %43, i8** @msgWarningTitle, align 8
  %44 = load i32, i32* @_e_msgUserCancel, align 4
  %45 = call i8* @LoadMessageW(i32 %44)
  store i8* %45, i8** @msgUserCancel, align 8
  %46 = load i32, i32* @_e_msgStartTextForVpnServer, align 4
  %47 = call i8* @LoadMessageW(i32 %46)
  store i8* %47, i8** @msgStartTextForVpnServer, align 8
  %48 = load i32, i32* @_e_msgButtonForVpnServer, align 4
  %49 = call i8* @LoadMessageW(i32 %48)
  store i8* %49, i8** @msgButtonForVpnServer, align 8
  %50 = load i32, i32* @_e_msgProcessCreatedForVpnServer, align 4
  %51 = call i8* @LoadMessageW(i32 %50)
  store i8* %51, i8** @msgProcessCreatedForVpnServer, align 8
  %52 = load i32, i32* @_e_msgNoParam, align 4
  %53 = call i8* @LoadMessageA(i32 %52)
  store i8* %53, i8** @msgNoParam, align 8
  %54 = load i32, i32* @_e_msgStartTextForVpnClient, align 4
  %55 = call i8* @LoadMessageW(i32 %54)
  store i8* %55, i8** @msgStartTextForVpnClient, align 8
  %56 = load i32, i32* @_e_msgButtonForVpnClient, align 4
  %57 = call i8* @LoadMessageW(i32 %56)
  store i8* %57, i8** @msgButtonForVpnClient, align 8
  ret i32 0
}

declare dso_local i64 @stricmp(i8*, i8*) #1

declare dso_local i8* @LoadMessageW(i32) #1

declare dso_local i8* @LoadMessageA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
