; ModuleID = '/home/carl/AnghaBench/disque/src/extr_rio.h_rioRead.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_rio.h_rioRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 (%struct.TYPE_5__*, i8*, i64)*, i64, i32 (%struct.TYPE_5__*, i8*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*, i64)* @rioRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rioRead(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %53, %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %29

27:                                               ; preds = %17, %12
  %28 = load i64, i64* %7, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i64 [ %26, %23 ], [ %28, %27 ]
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64 (%struct.TYPE_5__*, i8*, i64)*, i64 (%struct.TYPE_5__*, i8*, i64)** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 %33(%struct.TYPE_5__* %34, i8* %35, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i64 0, i64* %4, align 8
  br label %66

40:                                               ; preds = %29
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32 (%struct.TYPE_5__*, i8*, i64)*, i32 (%struct.TYPE_5__*, i8*, i64)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_5__*, i8*, i64)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32 (%struct.TYPE_5__*, i8*, i64)*, i32 (%struct.TYPE_5__*, i8*, i64)** %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 %48(%struct.TYPE_5__* %49, i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %9

65:                                               ; preds = %9
  store i64 1, i64* %4, align 8
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
