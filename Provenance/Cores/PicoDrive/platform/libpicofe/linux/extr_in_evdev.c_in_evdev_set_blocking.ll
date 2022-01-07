; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_set_blocking.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_set_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.input_event = type { i32 }

@F_GETFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"in_evdev: F_GETFL fcntl failed\00", align 1
@O_NONBLOCK = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"in_evdev: F_SETFL fcntl failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @in_evdev_set_blocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_evdev_set_blocking(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.input_event, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @F_GETFL, align 4
  %13 = call i32 (i32, i32, ...) @fcntl(i32 %11, i32 %12)
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @O_NONBLOCK, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %31, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @read(i32 %29, %struct.input_event* %8, i32 4)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %26, label %35

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i64, i64* @O_NONBLOCK, align 8
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %6, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %48

44:                                               ; preds = %36
  %45 = load i64, i64* @O_NONBLOCK, align 8
  %46 = load i64, i64* %6, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @F_SETFL, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i32, i32, ...) @fcntl(i32 %51, i32 %52, i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %60

59:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read(i32, %struct.input_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
