; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_loggedin.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_loggedin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"PBSZ %d\00", align 1
@FTP_PBSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @ftp_state_loggedin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_loggedin(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %4 = load i32, i32* @CURLE_OK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %6 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load i64, i64* @FIRSTSOCKET, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @PPSENDF(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %19 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %20 = load i32, i32* @FTP_PBSZ, align 4
  %21 = call i32 @state(%struct.connectdata* %19, i32 %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %24 = call i32 @ftp_state_pwd(%struct.connectdata* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @PPSENDF(i32*, i8*, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @ftp_state_pwd(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
