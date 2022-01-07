; ModuleID = '/home/carl/AnghaBench/disque/src/extr_sds.h_sdsinclen.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_sds.h_sdsinclen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SDS_TYPE_MASK = common dso_local global i8 0, align 1
@SDS_TYPE_BITS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @sdsinclen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdsinclen(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 -1
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %5, align 1
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @SDS_TYPE_MASK, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  switch i32 %15, label %61 [
    i32 130, label %16
    i32 128, label %33
    i32 132, label %40
    i32 131, label %47
    i32 129, label %54
  ]

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %6, align 8
  %19 = load i8, i8* %5, align 1
  %20 = call i32 @SDS_TYPE_5_LEN(i8 zeroext %19)
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %21, %22
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %7, align 1
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @SDS_TYPE_BITS, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %26, %28
  %30 = or i32 130, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %6, align 8
  store i8 %31, i8* %32, align 1
  br label %61

33:                                               ; preds = %2
  %34 = load i64, i64* %4, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call %struct.TYPE_2__* @SDS_HDR(i32 8, i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, %34
  store i64 %39, i64* %37, align 8
  br label %61

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call %struct.TYPE_2__* @SDS_HDR(i32 16, i8* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %41
  store i64 %46, i64* %44, align 8
  br label %61

47:                                               ; preds = %2
  %48 = load i64, i64* %4, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call %struct.TYPE_2__* @SDS_HDR(i32 32, i8* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %48
  store i64 %53, i64* %51, align 8
  br label %61

54:                                               ; preds = %2
  %55 = load i64, i64* %4, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = call %struct.TYPE_2__* @SDS_HDR(i32 64, i8* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %55
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %2, %54, %47, %40, %33, %16
  ret void
}

declare dso_local i32 @SDS_TYPE_5_LEN(i8 zeroext) #1

declare dso_local %struct.TYPE_2__* @SDS_HDR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
