; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_optimizejumps.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_optimizejumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@IEnd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @optimizejumps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimizejumps(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %37, %1
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IEnd, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %17
  %19 = call i64 @isjmp(%struct.TYPE_9__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @dest(%struct.TYPE_9__* %23, i32 %24)
  %26 = call i64 @target(%struct.TYPE_9__* %22, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %26, %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i64 %29, i64* %35, align 8
  br label %36

36:                                               ; preds = %21, %14
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = call i64 @sizei(%struct.TYPE_9__* %41)
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %4

47:                                               ; preds = %4
  ret void
}

declare dso_local i64 @isjmp(%struct.TYPE_9__*) #1

declare dso_local i64 @target(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dest(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @sizei(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
