; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkdd/extr_kcdata.h_kcdata_iter_valid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkdd/extr_kcdata.h_kcdata_iter_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_4__*)* @kcdata_iter_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcdata_iter_valid(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = bitcast %struct.TYPE_5__* %3 to { i64, %struct.TYPE_4__* }*
  %5 = getelementptr inbounds { i64, %struct.TYPE_4__* }, { i64, %struct.TYPE_4__* }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, %struct.TYPE_4__* }, { i64, %struct.TYPE_4__* }* %4, i32 0, i32 1
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = ptrtoint %struct.TYPE_4__* %8 to i64
  %10 = add i64 %9, 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ule i64 %10, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = ptrtoint %struct.TYPE_4__* %16 to i64
  %18 = add i64 %17, 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %18, %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ule i64 %23, %25
  br label %27

27:                                               ; preds = %14, %2
  %28 = phi i1 [ false, %2 ], [ %26, %14 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
