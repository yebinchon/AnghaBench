; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_tx_all.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_tx_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@p_uart_obj = common dso_local global %struct.TYPE_6__** null, align 8
@portMAX_DELAY = common dso_local global i64 0, align 8
@UART_DATA_BREAK = common dso_local global i32 0, align 4
@UART_DATA = common dso_local global i32 0, align 4
@UART_EMPTY_THRESH_DEFAULT = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i64, i32, i32)* @uart_tx_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_tx_all(i64 %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %9, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %193

21:                                               ; preds = %5
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %12, align 8
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @portMAX_DELAY, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @xSemaphoreTake(i32 %28, i32 %30)
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %32, i64 %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %118

44:                                               ; preds = %21
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @xRingbufferGetMaxItemSize(i32 %50)
  store i32 %51, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load i32, i32* @UART_DATA_BREAK, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  br label %66

63:                                               ; preds = %44
  %64 = load i32, i32* @UART_DATA, align 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %67, i64 %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = bitcast %struct.TYPE_5__* %15 to i8*
  %74 = load i64, i64* @portMAX_DELAY, align 8
  %75 = call i32 @xRingbufferSend(i32 %72, i8* %73, i32 24, i64 %74)
  br label %76

76:                                               ; preds = %91, %66
  %77 = load i64, i64* %9, align 8
  %78 = icmp ugt i64 %77, 0
  br i1 %78, label %79, label %117

79:                                               ; preds = %76
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sdiv i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = icmp ugt i64 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = sdiv i32 %86, 2
  %88 = sext i32 %87 to i64
  br label %91

89:                                               ; preds = %79
  %90 = load i64, i64* %9, align 8
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i64 [ %88, %85 ], [ %90, %89 ]
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %16, align 4
  %94 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %94, i64 %95
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %16, align 4
  %105 = load i64, i64* @portMAX_DELAY, align 8
  %106 = call i32 @xRingbufferSend(i32 %99, i8* %103, i32 %104, i64 %105)
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %9, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %9, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %14, align 4
  %114 = load i64, i64* %7, align 8
  %115 = load i32, i32* @UART_EMPTY_THRESH_DEFAULT, align 4
  %116 = call i32 @uart_enable_tx_intr(i64 %114, i32 1, i32 %115)
  br label %76

117:                                              ; preds = %76
  br label %183

118:                                              ; preds = %21
  br label %119

119:                                              ; preds = %158, %118
  %120 = load i64, i64* %9, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %159

122:                                              ; preds = %119
  %123 = load i64, i64* @pdTRUE, align 8
  %124 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %124, i64 %125
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* @portMAX_DELAY, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i64 @xSemaphoreTake(i32 %129, i32 %131)
  %133 = icmp eq i64 %123, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %122
  %135 = load i64, i64* %7, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i64 @uart_fill_fifo(i64 %135, i8* %136, i64 %137)
  store i64 %138, i64* %17, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* %9, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %143, i64 %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  %148 = load i64, i64* %7, align 8
  %149 = load i32, i32* @UART_EMPTY_THRESH_DEFAULT, align 4
  %150 = call i32 @uart_enable_tx_intr(i64 %148, i32 1, i32 %149)
  br label %151

151:                                              ; preds = %142, %134
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %9, align 8
  %154 = sub i64 %153, %152
  store i64 %154, i64* %9, align 8
  %155 = load i64, i64* %17, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 %155
  store i8* %157, i8** %8, align 8
  br label %158

158:                                              ; preds = %151, %122
  br label %119

159:                                              ; preds = %119
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %159
  %163 = load i64, i64* %7, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @uart_set_break(i64 %163, i32 %164)
  %166 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %167 = load i64, i64* %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %166, i64 %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load i64, i64* @portMAX_DELAY, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i64 @xSemaphoreTake(i32 %171, i32 %173)
  br label %175

175:                                              ; preds = %162, %159
  %176 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %176, i64 %177
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @xSemaphoreGive(i32 %181)
  br label %183

183:                                              ; preds = %175, %117
  %184 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @p_uart_obj, align 8
  %185 = load i64, i64* %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %184, i64 %185
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @xSemaphoreGive(i32 %189)
  %191 = load i64, i64* %12, align 8
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %183, %20
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i64 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @xRingbufferGetMaxItemSize(i32) #1

declare dso_local i32 @xRingbufferSend(i32, i8*, i32, i64) #1

declare dso_local i32 @uart_enable_tx_intr(i64, i32, i32) #1

declare dso_local i64 @uart_fill_fifo(i64, i8*, i64) #1

declare dso_local i32 @uart_set_break(i64, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
