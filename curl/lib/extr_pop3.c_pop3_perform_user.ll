; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_user.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i8*, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@POP3_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@POP3_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @pop3_perform_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_perform_user(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %5 = load i32, i32* @CURLE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %13 = load i32, i32* @POP3_STOP, align 4
  %14 = call i32 @state(%struct.connectdata* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = call i32 @Curl_pp_sendf(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %37 = load i32, i32* @POP3_USER, align 4
  %38 = call i32 @state(%struct.connectdata* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
