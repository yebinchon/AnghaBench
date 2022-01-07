; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_search.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.IMAP* }
%struct.IMAP = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot SEARCH without a query string.\00", align 1
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"SEARCH %s\00", align 1
@IMAP_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @imap_perform_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_perform_search(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.IMAP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %6 = load i32, i32* @CURLE_OK, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.IMAP*, %struct.IMAP** %11, align 8
  store %struct.IMAP* %12, %struct.IMAP** %5, align 8
  %13 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %14 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @failf(%struct.TYPE_4__* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %1
  %24 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %25 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %26 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @imap_sendf(%struct.connectdata* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %33 = load i32, i32* @IMAP_SEARCH, align 4
  %34 = call i32 @state(%struct.connectdata* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %23
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @failf(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @imap_sendf(%struct.connectdata*, i8*, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
