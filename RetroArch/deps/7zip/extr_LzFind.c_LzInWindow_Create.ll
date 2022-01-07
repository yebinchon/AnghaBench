; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_LzInWindow_Create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_LzInWindow_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i8*, i64 }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, %struct.TYPE_8__*)* @LzInWindow_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzInWindow_Create(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  store i32 1, i32* %4, align 4
  br label %59

26:                                               ; preds = %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31, %26
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = call i32 @LzInWindow_Free(%struct.TYPE_9__* %38, %struct.TYPE_8__* %39)
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64 (%struct.TYPE_8__*, i64)*, i64 (%struct.TYPE_8__*, i64)** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 %46(%struct.TYPE_8__* %47, i64 %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %37, %31
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @LzInWindow_Free(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
