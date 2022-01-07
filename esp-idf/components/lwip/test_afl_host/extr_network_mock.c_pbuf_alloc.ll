; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/test_afl_host/extr_network_mock.c_pbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/test_afl_host/extr_network_mock.c_pbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i8*, i32, i32*, i8* }

@MEMP_PBUF_POOL = common dso_local global i8* null, align 8
@PBUF_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @pbuf_alloc(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pbuf*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** @MEMP_PBUF_POOL, align 8
  %9 = call i64 @malloc(i8* %8)
  %10 = inttoptr i64 %9 to %struct.pbuf*
  store %struct.pbuf* %10, %struct.pbuf** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @PBUF_POOL, align 4
  %17 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @malloc(i8* %22)
  %24 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  ret %struct.pbuf* %26
}

declare dso_local i64 @malloc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
