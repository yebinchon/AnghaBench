; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_wc_data_dtor.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_wc_data_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftp_wc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wc_data_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wc_data_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ftp_wc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ftp_wc*
  store %struct.ftp_wc* %5, %struct.ftp_wc** %3, align 8
  %6 = load %struct.ftp_wc*, %struct.ftp_wc** %3, align 8
  %7 = icmp ne %struct.ftp_wc* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.ftp_wc*, %struct.ftp_wc** %3, align 8
  %10 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.ftp_wc*, %struct.ftp_wc** %3, align 8
  %15 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %14, i32 0, i32 0
  %16 = call i32 @Curl_ftp_parselist_data_free(i64* %15)
  br label %17

17:                                               ; preds = %13, %8, %1
  %18 = load %struct.ftp_wc*, %struct.ftp_wc** %3, align 8
  %19 = call i32 @free(%struct.ftp_wc* %18)
  ret void
}

declare dso_local i32 @Curl_ftp_parselist_data_free(i64*) #1

declare dso_local i32 @free(%struct.ftp_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
