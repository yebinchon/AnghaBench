; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_update_kc_async.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_update_kc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32*)* }

@in_dev_count = common dso_local global i32 0, align 4
@in_devices = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @in_update_kc_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_update_kc_async(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = call i32 (...) @plat_get_ticks_ms()
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %3, %72
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %59, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @in_dev_count, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %12, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %59

30:                                               ; preds = %20
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i32*)* @DRV(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 (i32, i32*)* %34, i32 (i32, i32*)** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %37 = load i32 (i32, i32*)*, i32 (i32, i32*)** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %37(i32 %40, i32* %9)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %59

45:                                               ; preds = %30
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %75

59:                                               ; preds = %44, %29
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %16

62:                                               ; preds = %16
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = call i32 (...) @plat_get_ticks_ms()
  %67 = load i32, i32* %11, align 4
  %68 = sub i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %74

72:                                               ; preds = %65, %62
  %73 = call i32 @plat_sleep_ms(i32 10)
  br label %15

74:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @plat_get_ticks_ms(...) #1

declare dso_local i32 (i32, i32*)* @DRV(i32) #1

declare dso_local i32 @plat_sleep_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
