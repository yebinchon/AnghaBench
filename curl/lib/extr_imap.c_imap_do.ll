; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_do.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @imap_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imap_do(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i64, i64* @CURLE_OK, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* @FALSE, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = call i64 @imap_parse_url_path(%struct.connectdata* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %3, align 8
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %18 = call i64 @imap_parse_custom_request(%struct.connectdata* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %3, align 8
  br label %28

23:                                               ; preds = %16
  %24 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @imap_regular_transfer(%struct.connectdata* %24, i32* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %23, %21, %14
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i64 @imap_parse_url_path(%struct.connectdata*) #1

declare dso_local i64 @imap_parse_custom_request(%struct.connectdata*) #1

declare dso_local i64 @imap_regular_transfer(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
