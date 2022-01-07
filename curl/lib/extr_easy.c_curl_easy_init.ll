; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_init.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@initialized = common dso_local global i32 0, align 4
@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error: curl_global_init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error: Curl_open failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Curl_easy* @curl_easy_init() #0 {
  %1 = alloca %struct.Curl_easy*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = load i32, i32* @initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %8 = call i64 @curl_global_init(i32 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @DEBUGF(i32 %13)
  store %struct.Curl_easy* null, %struct.Curl_easy** %1, align 8
  br label %26

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15, %0
  %17 = call i64 @Curl_open(%struct.Curl_easy** %3)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @DEBUGF(i32 %22)
  store %struct.Curl_easy* null, %struct.Curl_easy** %1, align 8
  br label %26

24:                                               ; preds = %16
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  store %struct.Curl_easy* %25, %struct.Curl_easy** %1, align 8
  br label %26

26:                                               ; preds = %24, %20, %11
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %1, align 8
  ret %struct.Curl_easy* %27
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @Curl_open(%struct.Curl_easy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
