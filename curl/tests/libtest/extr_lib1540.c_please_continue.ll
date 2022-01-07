; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1540.c_please_continue.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1540.c_please_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transfer_status = type { i32, i32, i32 }

@CURLPAUSE_CONT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"xferinfo: paused %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32)* @please_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @please_continue(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.transfer_status*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.transfer_status*
  store %struct.transfer_status* %13, %struct.transfer_status** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.transfer_status*, %struct.transfer_status** %11, align 8
  %19 = getelementptr inbounds %struct.transfer_status, %struct.transfer_status* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %5
  %23 = load %struct.transfer_status*, %struct.transfer_status** %11, align 8
  %24 = getelementptr inbounds %struct.transfer_status, %struct.transfer_status* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.transfer_status*, %struct.transfer_status** %11, align 8
  %28 = getelementptr inbounds %struct.transfer_status, %struct.transfer_status* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.transfer_status*, %struct.transfer_status** %11, align 8
  %33 = getelementptr inbounds %struct.transfer_status, %struct.transfer_status* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CURLPAUSE_CONT, align 4
  %36 = call i32 @curl_easy_pause(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %22
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.transfer_status*, %struct.transfer_status** %11, align 8
  %41 = getelementptr inbounds %struct.transfer_status, %struct.transfer_status* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  ret i32 0
}

declare dso_local i32 @curl_easy_pause(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
