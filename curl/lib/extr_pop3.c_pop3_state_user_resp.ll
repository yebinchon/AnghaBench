; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_user_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_user_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i8*, %struct.TYPE_4__, %struct.Curl_easy* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Access denied. %c\00", align 1
@CURLE_LOGIN_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@POP3_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @pop3_state_user_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_state_user_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @CURLE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 2
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 43
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @failf(%struct.Curl_easy* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @CURLE_LOGIN_DENIED, align 4
  store i32 %20, i32* %7, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %23 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %32 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %34 ]
  %37 = call i32 @Curl_pp_sendf(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %16
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %43 = load i32, i32* @POP3_PASS, align 4
  %44 = call i32 @state(%struct.connectdata* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
