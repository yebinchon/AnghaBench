; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1540.c_write_callback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1540.c_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transfer_status = type { i32, i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Got %d bytes but pausing!\0A\00", align 1
@CURL_WRITEFUNC_PAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_callback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.transfer_status*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.transfer_status*
  store %struct.transfer_status* %13, %struct.transfer_status** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load %struct.transfer_status*, %struct.transfer_status** %10, align 8
  %18 = getelementptr inbounds %struct.transfer_status, %struct.transfer_status* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.transfer_status*, %struct.transfer_status** %10, align 8
  %22 = getelementptr inbounds %struct.transfer_status, %struct.transfer_status* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fwrite(i8* %26, i64 %27, i64 %28, i32 %29)
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %5, align 8
  br label %39

32:                                               ; preds = %4
  %33 = load i64, i64* %11, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.transfer_status*, %struct.transfer_status** %10, align 8
  %37 = getelementptr inbounds %struct.transfer_status, %struct.transfer_status* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load i64, i64* @CURL_WRITEFUNC_PAUSE, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

declare dso_local i32 @fwrite(i8*, i64, i64, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
