; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___format_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___format_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (i64, i64)*, i64, i64, i64 }

@cardmap = common dso_local global %struct.TYPE_4__* null, align 8
@CARD_SYSAREA = common dso_local global i32 0, align 4
@CARD_SYSDIR = common dso_local global i64 0, align 8
@CARD_SYSDIR_BACK = common dso_local global i64 0, align 8
@CARD_SYSBAT = common dso_local global i64 0, align 8
@CARD_SYSBAT_BACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__format_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__format_callback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i64)*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 (i64, i64)* null, i32 (i64, i64)** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cardmap, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp uge i64 %12, 0
  br i1 %13, label %14, label %98

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* @CARD_SYSAREA, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = call i64 @__card_sectorerase(i64 %22, i32 %29, void (i64, i64)* @__format_callback)
  store i64 %30, i64* %5, align 8
  %31 = icmp uge i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %115

33:                                               ; preds = %21
  br label %99

34:                                               ; preds = %14
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CARD_SYSAREA, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CARD_SYSAREA, align 4
  %57 = sub nsw i32 %55, %56
  %58 = shl i32 %57, 13
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %52, %59
  %61 = call i64 @__card_write(i64 %40, i32 %49, i32 8192, i64 %60, void (i64, i64)* @__format_callback)
  store i64 %61, i64* %5, align 8
  %62 = icmp uge i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %39
  br label %115

64:                                               ; preds = %39
  br label %99

65:                                               ; preds = %34
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CARD_SYSDIR, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CARD_SYSDIR_BACK, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @memcpy(i64 %75, i64 %80, i32 8192)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CARD_SYSBAT, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CARD_SYSBAT_BACK, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @memcpy(i64 %91, i64 %96, i32 8192)
  br label %98

98:                                               ; preds = %65, %2
  br label %99

99:                                               ; preds = %98, %64, %33
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32 (i64, i64)*, i32 (i64, i64)** %101, align 8
  store i32 (i64, i64)* %102, i32 (i64, i64)** %6, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  store i32 (i64, i64)* null, i32 (i64, i64)** %104, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @__card_putcntrlblock(%struct.TYPE_4__* %105, i64 %106)
  %108 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %109 = icmp ne i32 (i64, i64)* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %99
  %111 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %112 = load i64, i64* %3, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i32 %111(i64 %112, i64 %113)
  br label %115

115:                                              ; preds = %32, %63, %110, %99
  ret void
}

declare dso_local i64 @__card_sectorerase(i64, i32, void (i64, i64)*) #1

declare dso_local i64 @__card_write(i64, i32, i32, i64, void (i64, i64)*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
