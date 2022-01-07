; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_closesocket.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_closesocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32 (i32, i64)*, i64*, i32, i32, i64* }

@SECONDARYSOCKET = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_closesocket(%struct.connectdata* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %8 = icmp ne %struct.connectdata* %7, null
  br i1 %8, label %9, label %62

9:                                                ; preds = %2
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = load i32 (i32, i64)*, i32 (i32, i64)** %11, align 8
  %13 = icmp ne i32 (i32, i64)* %12, null
  br i1 %13, label %14, label %62

14:                                               ; preds = %9
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @SECONDARYSOCKET, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %15, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 4
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @SECONDARYSOCKET, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i64, i64* @FALSE, align 8
  %33 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %34 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @SECONDARYSOCKET, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 %32, i64* %37, align 8
  br label %61

38:                                               ; preds = %23, %14
  %39 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %40 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @Curl_multi_closed(i32 %41, i64 %42)
  %44 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %45 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @Curl_set_in_callback(i32 %46, i32 1)
  %48 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %49 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %48, i32 0, i32 0
  %50 = load i32 (i32, i64)*, i32 (i32, i64)** %49, align 8
  %51 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %52 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 %50(i32 %53, i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %57 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @Curl_set_in_callback(i32 %58, i32 0)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %31
  br label %62

62:                                               ; preds = %61, %9, %2
  %63 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %64 = icmp ne %struct.connectdata* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %67 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @Curl_multi_closed(i32 %68, i64 %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @sclose(i64 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %38
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @Curl_multi_closed(i32, i64) #1

declare dso_local i32 @Curl_set_in_callback(i32, i32) #1

declare dso_local i32 @sclose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
