; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_host_dasm.c_lookup_name.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_host_dasm.c_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@symbols = common dso_local global %struct.TYPE_5__** null, align 8
@symcount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @lookup_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_name(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @symbols, align 8
  store %struct.TYPE_5__** %7, %struct.TYPE_5__*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @symcount, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i32 1
  store %struct.TYPE_5__** %14, %struct.TYPE_5__*** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %19, %24
  %26 = icmp eq i64 %16, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %2, align 8
  br label %36

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %8

35:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
