; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_user.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.FTP* }
%struct.FTP = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FTP_USER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @ftp_state_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_user(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.FTP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %5 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %6 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %5, i32 0, i32 0
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.FTP*, %struct.FTP** %9, align 8
  store %struct.FTP* %10, %struct.FTP** %4, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.FTP*, %struct.FTP** %4, align 8
  %16 = getelementptr inbounds %struct.FTP, %struct.FTP* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.FTP*, %struct.FTP** %4, align 8
  %21 = getelementptr inbounds %struct.FTP, %struct.FTP* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i8* [ %22, %19 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %23 ]
  %26 = call i32 @PPSENDF(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %28 = load i32, i32* @FTP_USER, align 4
  %29 = call i32 @state(%struct.connectdata* %27, i32 %28)
  %30 = load i32, i32* @FALSE, align 4
  %31 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %32 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 8
  %36 = load i32, i32* @CURLE_OK, align 4
  ret i32 %36
}

declare dso_local i32 @PPSENDF(i32*, i8*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
