; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1533.c_read_callback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1533.c_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_data = type { i64, i32, i64 }

@CURL_READFUNC_PAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_callback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cb_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.cb_data*
  store %struct.cb_data* %14, %struct.cb_data** %10, align 8
  %15 = load %struct.cb_data*, %struct.cb_data** %10, align 8
  %16 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %20, %21
  store i64 %22, i64* %11, align 8
  %23 = load %struct.cb_data*, %struct.cb_data** %10, align 8
  %24 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %12, align 8
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @memset(i8* %32, i8 signext 97, i64 %33)
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.cb_data*, %struct.cb_data** %10, align 8
  %37 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %5, align 8
  br label %45

41:                                               ; preds = %4
  %42 = load %struct.cb_data*, %struct.cb_data** %10, align 8
  %43 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load i64, i64* @CURL_READFUNC_PAUSE, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %41, %31
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
