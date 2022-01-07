; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_set_timestamp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_set_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8* }

@commPagePtr = common dso_local global i64 0, align 8
@_COMM_PAGE_NEWTIMEOFDAY_DATA = common dso_local global i64 0, align 8
@_COMM_PAGE_RW_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commpage_set_timestamp(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i64, i64* @commPagePtr, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %38

15:                                               ; preds = %5
  %16 = load i64, i64* @_COMM_PAGE_NEWTIMEOFDAY_DATA, align 8
  %17 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = inttoptr i64 %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %11, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %15, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
