; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pool_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32, i32, i8*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@Z_EXPAND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Z_CALLERACCT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pool_init(%struct.pool* %0, i64 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.pool*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.pool* %0, %struct.pool** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load %struct.pool*, %struct.pool** %8, align 8
  %16 = call i32 @bzero(%struct.pool* %15, i32 24)
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = mul i64 1024, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = call i32* @zinit(i64 %17, i32 %20, i32 %21, i8* %22)
  %24 = load %struct.pool*, %struct.pool** %8, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.pool*, %struct.pool** %8, align 8
  %27 = getelementptr inbounds %struct.pool, %struct.pool* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %7
  %31 = load %struct.pool*, %struct.pool** %8, align 8
  %32 = getelementptr inbounds %struct.pool, %struct.pool* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @Z_EXPAND, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @zone_change(i32* %33, i32 %34, i32 %35)
  %37 = load %struct.pool*, %struct.pool** %8, align 8
  %38 = getelementptr inbounds %struct.pool, %struct.pool* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @Z_CALLERACCT, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @zone_change(i32* %39, i32 %40, i32 %41)
  %43 = load %struct.pool*, %struct.pool** %8, align 8
  %44 = getelementptr inbounds %struct.pool, %struct.pool* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load %struct.pool*, %struct.pool** %8, align 8
  %46 = getelementptr inbounds %struct.pool, %struct.pool* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.pool*, %struct.pool** %8, align 8
  %49 = getelementptr inbounds %struct.pool, %struct.pool* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %30, %7
  ret void
}

declare dso_local i32 @bzero(%struct.pool*, i32) #1

declare dso_local i32* @zinit(i64, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
