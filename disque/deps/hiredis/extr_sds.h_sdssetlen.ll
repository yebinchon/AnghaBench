; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_sds.h_sdssetlen.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_sds.h_sdssetlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SDS_TYPE_MASK = common dso_local global i8 0, align 1
@SDS_TYPE_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @sdssetlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdssetlen(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 -1
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @SDS_TYPE_MASK, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %11, %13
  switch i32 %14, label %44 [
    i32 130, label %15
    i32 128, label %24
    i32 132, label %29
    i32 131, label %34
    i32 129, label %39
  ]

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @SDS_TYPE_BITS, align 8
  %20 = shl i64 %18, %19
  %21 = or i64 130, %20
  %22 = trunc i64 %21 to i8
  %23 = load i8*, i8** %6, align 8
  store i8 %22, i8* %23, align 1
  br label %44

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call %struct.TYPE_2__* @SDS_HDR(i32 8, i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  br label %44

29:                                               ; preds = %2
  %30 = load i64, i64* %4, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call %struct.TYPE_2__* @SDS_HDR(i32 16, i8* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  br label %44

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call %struct.TYPE_2__* @SDS_HDR(i32 32, i8* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  br label %44

39:                                               ; preds = %2
  %40 = load i64, i64* %4, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call %struct.TYPE_2__* @SDS_HDR(i32 64, i8* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %2, %39, %34, %29, %24, %15
  ret void
}

declare dso_local %struct.TYPE_2__* @SDS_HDR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
