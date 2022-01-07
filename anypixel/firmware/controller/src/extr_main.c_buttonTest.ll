; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_buttonTest.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_buttonTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@USART_NW = common dso_local global i32 0, align 4
@PANEL_NW = common dso_local global i64 0, align 8
@USART_SW = common dso_local global i32 0, align 4
@PANEL_SW = common dso_local global i64 0, align 8
@USART_SE = common dso_local global i32 0, align 4
@PANEL_SE = common dso_local global i64 0, align 8
@USART_NE = common dso_local global i32 0, align 4
@PANEL_NE = common dso_local global i64 0, align 8
@ledpackets = common dso_local global %struct.TYPE_4__* null, align 8
@panelLEDmap = common dso_local global i32* null, align 8
@usarts = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buttonTest(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @USART_NW, align 4
  %5 = load i64, i64* @PANEL_NW, align 8
  %6 = call i32 @handle_feedback(i32 %4, i64 %5)
  %7 = load i32, i32* @USART_SW, align 4
  %8 = load i64, i64* @PANEL_SW, align 8
  %9 = call i32 @handle_feedback(i32 %7, i64 %8)
  %10 = load i32, i32* @USART_SE, align 4
  %11 = load i64, i64* @PANEL_SE, align 8
  %12 = call i32 @handle_feedback(i32 %10, i64 %11)
  %13 = load i32, i32* @USART_NE, align 4
  %14 = load i64, i64* @PANEL_NE, align 8
  %15 = call i32 @handle_feedback(i32 %13, i64 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %98, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 49
  br i1 %18, label %19, label %101

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i64, i64* @PANEL_NE, align 8
  %22 = call i64 @globalGetButtonState(i32 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %26 = load i64, i64* @PANEL_NW, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @panelLEDmap, align 8
  %32 = load i32, i32* %3, align 4
  %33 = mul nsw i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @pack12bit(i32 %30, i32 %36, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %40 = load i64, i64* @PANEL_NW, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @panelLEDmap, align 8
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 %46, 3
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @pack12bit(i32 %44, i32 %51, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %55 = load i64, i64* @PANEL_NW, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @panelLEDmap, align 8
  %61 = load i32, i32* %3, align 4
  %62 = mul nsw i32 %61, 3
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pack12bit(i32 %59, i32 %66, i32 0)
  br label %97

68:                                               ; preds = %19
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %70 = load i64, i64* @PANEL_NW, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** @panelLEDmap, align 8
  %76 = load i32, i32* %3, align 4
  %77 = mul nsw i32 %76, 3
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @pack12bit(i32 %74, i32 %81, i32 0)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %84 = load i64, i64* @PANEL_NW, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** @panelLEDmap, align 8
  %90 = load i32, i32* %3, align 4
  %91 = mul nsw i32 %90, 3
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pack12bit(i32 %88, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %68, %24
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %16

101:                                              ; preds = %16
  %102 = load i32*, i32** @usarts, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %105 = load i64, i64* @PANEL_NW, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @UART_SendBytes(i32* %103, i32 %108, i32 4)
  %110 = load i32*, i32** @usarts, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %113 = load i64, i64* @PANEL_NW, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @UART_SendBytes(i32* %111, i32 %116, i32 4)
  %118 = load i32*, i32** @usarts, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %121 = load i64, i64* @PANEL_NW, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @UART_SendBytes(i32* %119, i32 %124, i32 4)
  %126 = load i32*, i32** @usarts, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %129 = load i64, i64* @PANEL_NW, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @UART_SendBytes(i32* %127, i32 %132, i32 4)
  %134 = call i32 @Delay(i32 10)
  ret void
}

declare dso_local i32 @handle_feedback(i32, i64) #1

declare dso_local i64 @globalGetButtonState(i32, i64) #1

declare dso_local i32 @pack12bit(i32, i32, i32) #1

declare dso_local i32 @UART_SendBytes(i32*, i32, i32) #1

declare dso_local i32 @Delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
