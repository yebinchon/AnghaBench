; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_cb_rea.c_tool_read_cb.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_cb_rea.c_tool_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InStruct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CURL_READFUNC_PAUSE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tool_read_cb(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.InStruct*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.InStruct*
  store %struct.InStruct* %13, %struct.InStruct** %11, align 8
  %14 = load %struct.InStruct*, %struct.InStruct** %11, align 8
  %15 = getelementptr inbounds %struct.InStruct, %struct.InStruct* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = mul i64 %18, %19
  %21 = call i64 @read(i32 %16, i8* %17, i64 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EAGAIN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  store i64 0, i64* @errno, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = load %struct.InStruct*, %struct.InStruct** %11, align 8
  %31 = getelementptr inbounds %struct.InStruct, %struct.InStruct* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load i64, i64* @CURL_READFUNC_PAUSE, align 8
  store i64 %34, i64* %5, align 8
  br label %43

35:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i32, i32* @FALSE, align 4
  %38 = load %struct.InStruct*, %struct.InStruct** %11, align 8
  %39 = getelementptr inbounds %struct.InStruct, %struct.InStruct* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %36, %28
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
