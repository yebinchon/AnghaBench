; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/test_afl_host/extr_network_mock.c_pbuf_realloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/test_afl_host/extr_network_mock.c_pbuf_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i8*, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbuf_realloc(%struct.pbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %7 = icmp ne %struct.pbuf* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @malloc(i8* %9)
  store i32* %10, i32** %5, align 8
  %11 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @free(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32* @malloc(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
