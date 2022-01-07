; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_curlTimerCallback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_curlTimerCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @curlTimerCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curlTimerCallback(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca %struct.timeval, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.timeval*
  store %struct.timeval* %10, %struct.timeval** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, -1
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load %struct.timeval*, %struct.timeval** %7, align 8
  %16 = call { i64, i32 } (...) @tutil_tvnow()
  %17 = bitcast %struct.timeval* %8 to { i64, i32 }*
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %19 = extractvalue { i64, i32 } %16, 0
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %21 = extractvalue { i64, i32 } %16, 1
  store i32 %21, i32* %20, align 8
  %22 = bitcast %struct.timeval* %15 to i8*
  %23 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load i64, i64* %5, align 8
  %25 = mul nsw i64 %24, 1000
  %26 = load %struct.timeval*, %struct.timeval** %7, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  br label %33

30:                                               ; preds = %3
  %31 = load %struct.timeval*, %struct.timeval** %7, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %14
  ret i32 0
}

declare dso_local { i64, i32 } @tutil_tvnow(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
