; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_sds.h_sdssetalloc.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_sds.h_sdssetalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SDS_TYPE_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @sdssetalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdssetalloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 -1
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @SDS_TYPE_MASK, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %10, %12
  switch i32 %13, label %35 [
    i32 130, label %14
    i32 128, label %15
    i32 132, label %20
    i32 131, label %25
    i32 129, label %30
  ]

14:                                               ; preds = %2
  br label %35

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call %struct.TYPE_2__* @SDS_HDR(i32 8, i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  br label %35

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call %struct.TYPE_2__* @SDS_HDR(i32 16, i8* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  br label %35

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call %struct.TYPE_2__* @SDS_HDR(i32 32, i8* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  br label %35

30:                                               ; preds = %2
  %31 = load i64, i64* %4, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call %struct.TYPE_2__* @SDS_HDR(i32 64, i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %2, %30, %25, %20, %15, %14
  ret void
}

declare dso_local %struct.TYPE_2__* @SDS_HDR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
