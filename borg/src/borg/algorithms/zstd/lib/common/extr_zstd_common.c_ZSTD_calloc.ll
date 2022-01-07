; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/common/extr_zstd_common.c_ZSTD_calloc.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/common/extr_zstd_common.c_ZSTD_calloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* (i32, i64)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ZSTD_calloc(i64 %0, i8* (i32, i64)* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = bitcast %struct.TYPE_3__* %5 to { i8* (i32, i64)*, i32 }*
  %9 = getelementptr inbounds { i8* (i32, i64)*, i32 }, { i8* (i32, i64)*, i32 }* %8, i32 0, i32 0
  store i8* (i32, i64)* %1, i8* (i32, i64)** %9, align 8
  %10 = getelementptr inbounds { i8* (i32, i64)*, i32 }, { i8* (i32, i64)*, i32 }* %8, i32 0, i32 1
  store i32 %2, i32* %10, align 8
  store i64 %0, i64* %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %12 = load i8* (i32, i64)*, i8* (i32, i64)** %11, align 8
  %13 = icmp ne i8* (i32, i64)* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %16 = load i8* (i32, i64)*, i8* (i32, i64)** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i8* %16(i32 %18, i64 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @memset(i8* %21, i32 0, i64 %22)
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %4, align 8
  br label %28

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = call i8* @calloc(i32 1, i64 %26)
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %25, %14
  %29 = load i8*, i8** %4, align 8
  ret i8* %29
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @calloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
