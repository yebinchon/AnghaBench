; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mprintf.c_curl_mvsnprintf.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mprintf.c_curl_mvsnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsprintf = type { i8*, i64, i64 }

@addbyter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_mvsnprintf(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nsprintf, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %10, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %10, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %10, i32 0, i32 2
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* @addbyter, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @dprintf_formatf(%struct.nsprintf* %10, i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %41

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %10, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %10, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %10, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %10, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  store i8 0, i8* %35, align 1
  br label %40

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %10, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %22, %4
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @dprintf_formatf(%struct.nsprintf*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
