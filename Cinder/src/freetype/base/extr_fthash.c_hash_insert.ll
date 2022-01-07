; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fthash.c_hash_insert.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fthash.c_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i32 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, %struct.TYPE_9__*, i32)* @hash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hash_insert(i32 %0, i64 %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = call %struct.TYPE_8__** @hash_bucket(i32 %12, %struct.TYPE_9__* %13)
  store %struct.TYPE_8__** %14, %struct.TYPE_8__*** %10, align 8
  %15 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %15, i64* %11, align 8
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %9, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %54, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = call i64 @FT_NEW(%struct.TYPE_8__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %59

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %25
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @hash_rehash(%struct.TYPE_9__* %42, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %59

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %58

54:                                               ; preds = %4
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  br label %59

59:                                               ; preds = %58, %47, %24
  %60 = load i64, i64* %11, align 8
  ret i64 %60
}

declare dso_local %struct.TYPE_8__** @hash_bucket(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @FT_NEW(%struct.TYPE_8__*) #1

declare dso_local i64 @hash_rehash(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
