; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_capability.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.imap_conn }
%struct.imap_conn = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@SASL_AUTH_NONE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1
@IMAP_CAPABILITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @imap_perform_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_perform_capability(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.imap_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %5 = load i32, i32* @CURLE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.imap_conn* %8, %struct.imap_conn** %4, align 8
  %9 = load i8*, i8** @SASL_AUTH_NONE, align 8
  %10 = load %struct.imap_conn*, %struct.imap_conn** %4, align 8
  %11 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load i8*, i8** @SASL_AUTH_NONE, align 8
  %14 = load %struct.imap_conn*, %struct.imap_conn** %4, align 8
  %15 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = load %struct.imap_conn*, %struct.imap_conn** %4, align 8
  %19 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %21 = call i32 @imap_sendf(%struct.connectdata* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %26 = load i32, i32* @IMAP_CAPABILITY, align 4
  %27 = call i32 @state(%struct.connectdata* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @imap_sendf(%struct.connectdata*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
