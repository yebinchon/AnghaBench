; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiu_hid.c_wiiu_hid_send_control.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiu_hid.c_wiiu_hid_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"[hid]: send_control: bad adapter.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"[hid]: write failed: %08x (%d:%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @wiiu_hid_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiu_hid_send_control(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %7, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %53

17:                                               ; preds = %3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %20, i32 0, i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @memcpy(i32 %27, i32* %28, i64 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @HIDWrite(i32 %33, i32 %36, i32 %39, i32* null, i32* null)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %17
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 65535
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, -65536
  %48 = lshr i32 %47, 16
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %15, %43, %17
  ret void
}

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @HIDWrite(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
