; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_curlSocketCallback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_curlSocketCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ReadWriteSockets = type { i32, i32 }

@CURL_POLL_IN = common dso_local global i32 0, align 4
@CURL_POLL_INOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@CURL_POLL_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@CURL_POLL_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*)* @curlSocketCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curlSocketCallback(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ReadWriteSockets*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.ReadWriteSockets*
  store %struct.ReadWriteSockets* %13, %struct.ReadWriteSockets** %11, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @CURL_POLL_IN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CURL_POLL_INOUT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %5
  %24 = load %struct.ReadWriteSockets*, %struct.ReadWriteSockets** %11, align 8
  %25 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %24, i32 0, i32 1
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @addFd(i32* %25, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @CURL_POLL_OUT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CURL_POLL_INOUT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %28
  %37 = load %struct.ReadWriteSockets*, %struct.ReadWriteSockets** %11, align 8
  %38 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @addFd(i32* %38, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CURL_POLL_REMOVE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.ReadWriteSockets*, %struct.ReadWriteSockets** %11, align 8
  %47 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %46, i32 0, i32 1
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @removeFd(i32* %47, i32 %48, i32 1)
  %50 = load %struct.ReadWriteSockets*, %struct.ReadWriteSockets** %11, align 8
  %51 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %50, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @removeFd(i32* %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %45, %41
  ret i32 0
}

declare dso_local i32 @addFd(i32*, i32, i8*) #1

declare dso_local i32 @removeFd(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
