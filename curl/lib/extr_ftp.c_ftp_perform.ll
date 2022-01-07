; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_perform.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.FTP* }
%struct.FTP = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"DO phase starts\0A\00", align 1
@FTPTRANSFER_INFO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FTP_QUOTE = common dso_local global i32 0, align 4
@SECONDARYSOCKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ftp_perform ends with SECONDARY: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"DO phase is complete1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*, i32*)* @ftp_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_perform(%struct.connectdata* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.FTP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @CURLE_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call i32 (%struct.TYPE_8__*, i8*, ...) @infof(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @DEBUGF(i32 %14)
  %16 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.FTP*, %struct.FTP** %28, align 8
  store %struct.FTP* %29, %struct.FTP** %9, align 8
  %30 = load i32, i32* @FTPTRANSFER_INFO, align 4
  %31 = load %struct.FTP*, %struct.FTP** %9, align 8
  %32 = getelementptr inbounds %struct.FTP, %struct.FTP* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %23, %3
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32, i32* @FTP_QUOTE, align 4
  %39 = call i64 @ftp_state_quote(%struct.connectdata* %36, i32 %37, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %4, align 8
  br label %73

44:                                               ; preds = %33
  %45 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @ftp_multi_statemach(%struct.connectdata* %45, i32* %46)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %49 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @SECONDARYSOCKET, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %57 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.TYPE_8__*, i8*, ...) @infof(%struct.TYPE_8__* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %44
  %66 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %67 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call i32 (%struct.TYPE_8__*, i8*, ...) @infof(%struct.TYPE_8__* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @DEBUGF(i32 %69)
  br label %71

71:                                               ; preds = %65, %44
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %71, %42
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @ftp_state_quote(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @ftp_multi_statemach(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
