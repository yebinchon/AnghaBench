; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_doBootloaderTest.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_doBootloaderTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@ledpackets = common dso_local global %struct.TYPE_4__* null, align 8
@PANEL_NW = common dso_local global i64 0, align 8
@PKT_TYPE_BL_UNLOCK_FLASH = common dso_local global i32 0, align 4
@PKT_TYPE_BL_ERASE_FLASH = common dso_local global i32 0, align 4
@PKT_TYPE_BL_WRITE_BLOCK = common dso_local global i32 0, align 4
@PKT_TYPE_BL_READ_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doBootloaderTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %5 = load i64, i64* @PANEL_NW, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* @PKT_TYPE_BL_UNLOCK_FLASH, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %13 = load i64, i64* @PANEL_NW, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %11, i32* %16, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 1164378403, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 -839939669, i32* %20, align 4
  %21 = call i32 (...) @BLhelper_dup()
  %22 = call i32 (...) @BLhelper_send()
  %23 = load i32, i32* @PKT_TYPE_BL_ERASE_FLASH, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %25 = load i64, i64* @PANEL_NW, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 -1393945053, i32* %30, align 4
  %31 = call i32 (...) @BLhelper_dup()
  %32 = call i32 (...) @BLhelper_send()
  %33 = call i32 @Delay(i32 5000)
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %70, %0
  %35 = load i32, i32* %1, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load i32, i32* @PKT_TYPE_BL_WRITE_BLOCK, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %40 = load i64, i64* @PANEL_NW, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 8
  %44 = load i32, i32* %1, align 4
  %45 = mul nsw i32 32, %44
  %46 = add nsw i32 134225920, %45
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 8, i32* %50, align 4
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %64, %37
  %52 = load i32, i32* %2, align 4
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* %1, align 4
  %56 = mul nsw i32 8, %55
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 2, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %51

67:                                               ; preds = %51
  %68 = call i32 (...) @BLhelper_dup()
  %69 = call i32 (...) @BLhelper_send()
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %34

73:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %1, align 4
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load i32, i32* @PKT_TYPE_BL_READ_BLOCK, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %80 = load i64, i64* @PANEL_NW, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  %84 = load i32, i32* %1, align 4
  %85 = mul nsw i32 32, %84
  %86 = add nsw i32 134225920, %85
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 8, i32* %90, align 4
  %91 = call i32 (...) @BLhelper_dup()
  %92 = call i32 (...) @BLhelper_send()
  br label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %74

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %97
  br label %97
}

declare dso_local i32 @BLhelper_dup(...) #1

declare dso_local i32 @BLhelper_send(...) #1

declare dso_local i32 @Delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
