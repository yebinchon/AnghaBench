; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_pasv_verbose.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_pasv_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Connecting to %s (%s) port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, i32*, i8*, i32)* @ftp_pasv_verbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftp_pasv_verbose(%struct.connectdata* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %12 = call i32 @Curl_printable_address(i32* %10, i8* %11, i32 256)
  %13 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @infof(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i32 %18)
  ret void
}

declare dso_local i32 @Curl_printable_address(i32*, i8*, i32) #1

declare dso_local i32 @infof(i32, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
