; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_getMicroSecondTimeout.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_getMicroSecondTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*)* @getMicroSecondTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getMicroSecondTimeout(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timeval, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %6 = call { i32, i64 } (...) @tutil_tvnow()
  %7 = bitcast %struct.timeval* %5 to { i32, i64 }*
  %8 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %7, i32 0, i32 0
  %9 = extractvalue { i32, i64 } %6, 0
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %7, i32 0, i32 1
  %11 = extractvalue { i32, i64 } %6, 1
  store i64 %11, i64* %10, align 8
  %12 = bitcast %struct.timeval* %3 to i8*
  %13 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct.timeval*, %struct.timeval** %2, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %16, %18
  %20 = mul nsw i32 %19, 1000000
  %21 = sext i32 %20 to i64
  %22 = load %struct.timeval*, %struct.timeval** %2, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %25, %27
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @curlx_sztosi(i64 %33)
  ret i32 %34
}

declare dso_local { i32, i64 } @tutil_tvnow(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @curlx_sztosi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
