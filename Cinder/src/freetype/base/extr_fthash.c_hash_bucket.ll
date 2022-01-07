; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fthash.c_hash_bucket.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fthash.c_hash_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32*)*, i32, i64 (i32*, i32*)*, %struct.TYPE_5__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__** (i32, %struct.TYPE_6__*)* @hash_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__** @hash_bucket(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__** %10, %struct.TYPE_5__*** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32 (i32*)*, i32 (i32*)** %12, align 8
  %14 = call i32 %13(i32* %3)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = srem i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %15, i64 %21
  store %struct.TYPE_5__** %22, %struct.TYPE_5__*** %7, align 8
  br label %23

23:                                               ; preds = %51, %2
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %29, align 8
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i64 %30(i32* %33, i32* %3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %52

37:                                               ; preds = %27
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i32 -1
  store %struct.TYPE_5__** %39, %struct.TYPE_5__*** %7, align 8
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %42 = icmp ult %struct.TYPE_5__** %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 %49
  store %struct.TYPE_5__** %50, %struct.TYPE_5__*** %7, align 8
  br label %51

51:                                               ; preds = %43, %37
  br label %23

52:                                               ; preds = %36, %23
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  ret %struct.TYPE_5__** %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
