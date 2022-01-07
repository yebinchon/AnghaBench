; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rtime.c_gettime.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rtime.c_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gettime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 @time(i32* null)
  store i32 %6, i32* %4, align 4
  %7 = call %struct.tm* @localtime(i32* %4)
  store %struct.tm* %7, %struct.tm** %5, align 8
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %49 [
    i32 0, label %9
    i32 1, label %14
    i32 2, label %19
    i32 3, label %24
    i32 4, label %29
    i32 5, label %35
    i32 6, label %41
  ]

9:                                                ; preds = %1
  %10 = load %struct.tm*, %struct.tm** %5, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hex2bcd(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.tm*, %struct.tm** %5, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hex2bcd(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %1
  %20 = load %struct.tm*, %struct.tm** %5, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @hex2bcd(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %1
  %25 = load %struct.tm*, %struct.tm** %5, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hex2bcd(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %50

29:                                               ; preds = %1
  %30 = load %struct.tm*, %struct.tm** %5, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @hex2bcd(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %50

35:                                               ; preds = %1
  %36 = load %struct.tm*, %struct.tm** %5, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %38, 100
  %40 = call i32 @hex2bcd(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %50

41:                                               ; preds = %1
  %42 = load %struct.tm*, %struct.tm** %5, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 2
  %46 = srem i32 %45, 7
  %47 = add nsw i32 %46, 1
  %48 = call i32 @hex2bcd(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %41, %35, %29, %24, %19, %14, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @hex2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
