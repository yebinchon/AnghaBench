; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsDone.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@PGRS_HIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_pgrsDone(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  store %struct.Curl_easy* %8, %struct.Curl_easy** %5, align 8
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %13 = call i32 @Curl_pgrsUpdate(%struct.connectdata* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PGRS_HIDE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %18
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %32, %26, %18
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %40 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @Curl_pgrsUpdate(%struct.connectdata*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
