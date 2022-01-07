; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_dophase_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_dophase_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.IMAP* }
%struct.IMAP = type { i64 }

@FTPTRANSFER_BODY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32)* @imap_dophase_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_dophase_done(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.IMAP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  store %struct.IMAP* %11, %struct.IMAP** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %14 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FTPTRANSFER_BODY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @Curl_setup_transfer(%struct.TYPE_4__* %21, i32 -1, i32 -1, i32 %22, i32 -1)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @CURLE_OK, align 4
  ret i32 %25
}

declare dso_local i32 @Curl_setup_transfer(%struct.TYPE_4__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
