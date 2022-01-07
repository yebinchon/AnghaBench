; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_uart_start_select.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_uart_start_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i8**, i8**, i32, i8*, i8*, i8* }

@UART_NUM = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@select_notif_callback_isr = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8**, i8**, i8**, i32, i8**)* @uart_start_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uart_start_select(i32 %0, i8** %1, i8** %2, i8** %3, i32 %4, i8** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @UART_NUM, align 4
  %22 = call i32 @MIN(i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i8**, i8*** %13, align 8
  store i8* null, i8** %23, align 8
  %24 = call %struct.TYPE_5__* @malloc(i32 56)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %15, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %28, i64* %7, align 8
  br label %143

29:                                               ; preds = %6
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i8**, i8*** %9, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8** %33, i8*** %35, align 8
  %36 = load i8**, i8*** %10, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i8** %36, i8*** %38, align 8
  %39 = load i8**, i8*** %11, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i8** %39, i8*** %41, align 8
  %42 = load i8**, i8*** %9, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i8**, i8*** %10, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i8**, i8*** %11, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i8**, i8*** %9, align 8
  %55 = call i32 @FD_ZERO(i8** %54)
  %56 = load i8**, i8*** %10, align 8
  %57 = call i32 @FD_ZERO(i8** %56)
  %58 = load i8**, i8*** %11, align 8
  %59 = call i32 @FD_ZERO(i8** %58)
  %60 = call i32 (...) @uart_get_selectlock()
  %61 = call i32 @portENTER_CRITICAL(i32 %60)
  store i32 0, i32* %16, align 4
  br label %62

62:                                               ; preds = %89, %29
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = call i64 @FD_ISSET(i32 %67, i8** %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 6
  %76 = call i64 @FD_ISSET(i32 %73, i8** %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = call i64 @FD_ISSET(i32 %79, i8** %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78, %72, %66
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @select_notif_callback_isr, align 4
  %87 = call i32 @uart_set_select_notif_callback(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %62

92:                                               ; preds = %62
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %121, %92
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %93
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = call i64 @FD_ISSET(i32 %98, i8** %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load i32, i32* %17, align 4
  %105 = call i64 @uart_get_buffered_data_len(i32 %104, i64* %18)
  %106 = load i64, i64* @ESP_OK, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load i64, i64* %18, align 8
  %110 = icmp ugt i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* %17, align 4
  %113 = load i8**, i8*** %9, align 8
  %114 = call i32 @FD_SET(i32 %112, i8** %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @esp_vfs_select_triggered(i32 %117)
  br label %119

119:                                              ; preds = %111, %108, %103
  br label %120

120:                                              ; preds = %119, %97
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %93

124:                                              ; preds = %93
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %126 = call i64 @register_select(%struct.TYPE_5__* %125)
  store i64 %126, i64* %19, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* @ESP_OK, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = call i32 (...) @uart_get_selectlock()
  %132 = call i32 @portEXIT_CRITICAL(i32 %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %134 = call i32 @free(%struct.TYPE_5__* %133)
  %135 = load i64, i64* %19, align 8
  store i64 %135, i64* %7, align 8
  br label %143

136:                                              ; preds = %124
  %137 = call i32 (...) @uart_get_selectlock()
  %138 = call i32 @portEXIT_CRITICAL(i32 %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %140 = bitcast %struct.TYPE_5__* %139 to i8*
  %141 = load i8**, i8*** %13, align 8
  store i8* %140, i8** %141, align 8
  %142 = load i64, i64* @ESP_OK, align 8
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %136, %130, %27
  %144 = load i64, i64* %7, align 8
  ret i64 %144
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @FD_ZERO(i8**) #1

declare dso_local i32 @portENTER_CRITICAL(i32) #1

declare dso_local i32 @uart_get_selectlock(...) #1

declare dso_local i64 @FD_ISSET(i32, i8**) #1

declare dso_local i32 @uart_set_select_notif_callback(i32, i32) #1

declare dso_local i64 @uart_get_buffered_data_len(i32, i64*) #1

declare dso_local i32 @FD_SET(i32, i8**) #1

declare dso_local i32 @esp_vfs_select_triggered(i32) #1

declare dso_local i64 @register_select(%struct.TYPE_5__*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
