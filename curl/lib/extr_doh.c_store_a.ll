; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_store_a.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_store_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dohentry = type { i64, %struct.dohaddr* }
%struct.dohaddr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@DOH_MAX_ADDR = common dso_local global i64 0, align 8
@DNS_TYPE_A = common dso_local global i32 0, align 4
@DOH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dohentry*)* @store_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_a(i8* %0, i32 %1, %struct.dohentry* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dohentry*, align 8
  %7 = alloca %struct.dohaddr*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dohentry* %2, %struct.dohentry** %6, align 8
  %8 = load %struct.dohentry*, %struct.dohentry** %6, align 8
  %9 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DOH_MAX_ADDR, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load %struct.dohentry*, %struct.dohentry** %6, align 8
  %15 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %14, i32 0, i32 1
  %16 = load %struct.dohaddr*, %struct.dohaddr** %15, align 8
  %17 = load %struct.dohentry*, %struct.dohentry** %6, align 8
  %18 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %16, i64 %19
  store %struct.dohaddr* %20, %struct.dohaddr** %7, align 8
  %21 = load i32, i32* @DNS_TYPE_A, align 4
  %22 = load %struct.dohaddr*, %struct.dohaddr** %7, align 8
  %23 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.dohaddr*, %struct.dohaddr** %7, align 8
  %25 = getelementptr inbounds %struct.dohaddr, %struct.dohaddr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = call i32 @memcpy(i32* %26, i8* %30, i32 4)
  %32 = load %struct.dohentry*, %struct.dohentry** %6, align 8
  %33 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %13, %3
  %37 = load i32, i32* @DOH_OK, align 4
  ret i32 %37
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
