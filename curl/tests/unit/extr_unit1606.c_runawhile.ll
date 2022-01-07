; ModuleID = '/home/carl/AnghaBench/curl/tests/unit/extr_unit1606.c_runawhile.c'
source_filename = "/home/carl/AnghaBench/curl/tests/unit/extr_unit1606.c_runawhile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curltime = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@__const.runawhile.now = private unnamed_addr constant %struct.curltime { i32 1, i32 0, i32 0 }, align 4
@easy = common dso_local global %struct.TYPE_7__* null, align 8
@CURLOPT_LOW_SPEED_LIMIT = common dso_local global i32 0, align 4
@CURLOPT_LOW_SPEED_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32)* @runawhile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runawhile(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.curltime, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca { i64, i32 }, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %14 = bitcast %struct.curltime* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.curltime* @__const.runawhile.now to i8*), i64 12, i1 false)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @easy, align 8
  %16 = load i32, i32* @CURLOPT_LOW_SPEED_LIMIT, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @curl_easy_setopt(%struct.TYPE_7__* %15, i32 %16, i64 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @easy, align 8
  %20 = load i32, i32* @CURLOPT_LOW_SPEED_TIME, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @curl_easy_setopt(%struct.TYPE_7__* %19, i32 %20, i64 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @easy, align 8
  %24 = call i32 @Curl_speedinit(%struct.TYPE_7__* %23)
  br label %25

25:                                               ; preds = %48, %4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @easy, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @easy, align 8
  %31 = bitcast { i64, i32 }* %13 to i8*
  %32 = bitcast %struct.curltime* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 12, i1 false)
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %34 = load i64, i64* %33, align 4
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @Curl_speedcheck(%struct.TYPE_7__* %30, i64 %34, i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %51

41:                                               ; preds = %25
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = getelementptr inbounds %struct.curltime, %struct.curltime* %10, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 100
  br i1 %50, label %25, label %51

51:                                               ; preds = %48, %40
  %52 = getelementptr inbounds %struct.curltime, %struct.curltime* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @curl_easy_setopt(%struct.TYPE_7__*, i32, i64) #2

declare dso_local i32 @Curl_speedinit(%struct.TYPE_7__*) #2

declare dso_local i64 @Curl_speedcheck(%struct.TYPE_7__*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
