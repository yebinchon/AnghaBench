; ModuleID = '/home/carl/AnghaBench/curl/tests/unit/extr_unit1399.c_expect_timer_seconds.c'
source_filename = "/home/carl/AnghaBench/curl/tests/unit/extr_unit1399.c_expect_timer_seconds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"about %d seconds should have passed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_easy*, i32)* @expect_timer_seconds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect_timer_seconds(%struct.Curl_easy* %0, i32 %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @msnprintf(i8* %6, i32 64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @usec_matches_seconds(i32 %12, i32 %13)
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %16 = call i32 @fail_unless(i32 %14, i8* %15)
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @usec_matches_seconds(i32 %20, i32 %21)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %24 = call i32 @fail_unless(i32 %22, i8* %23)
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @usec_matches_seconds(i32 %28, i32 %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %32 = call i32 @fail_unless(i32 %30, i8* %31)
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @usec_matches_seconds(i32 %36, i32 %37)
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %40 = call i32 @fail_unless(i32 %38, i8* %39)
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %42 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @usec_matches_seconds(i32 %44, i32 %45)
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %48 = call i32 @fail_unless(i32 %46, i8* %47)
  ret void
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fail_unless(i32, i8*) #1

declare dso_local i32 @usec_matches_seconds(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
