; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_read_from_buffer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_read_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMP_TEST_ITERATIONS = common dso_local global i32 0, align 4
@CONT_DATA_LEN = common dso_local global i64 0, align 8
@RINGBUF_TYPE_NOSPLIT = common dso_local global i64 0, align 8
@TIMEOUT_TICKS = common dso_local global i32 0, align 4
@RINGBUF_TYPE_ALLOWSPLIT = common dso_local global i64 0, align 8
@pdTRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to receive any item\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to receive an item\00", align 1
@RINGBUF_TYPE_BYTEBUF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Received data exceeds max size\00", align 1
@continuous_data = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Received data is corrupted\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Received split data is corrupted\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Total length of received data is incorrect\00", align 1
@rx_done = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64)* @read_from_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_from_buffer(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %154, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SMP_TEST_ITERATIONS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %157

20:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %142, %20
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @CONT_DATA_LEN, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %143

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @RINGBUF_TYPE_NOSPLIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TIMEOUT_TICKS, align 4
  %32 = call i64 @xRingbufferReceive(i32 %30, i64* %9, i32 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %11, align 8
  br label %54

34:                                               ; preds = %25
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @RINGBUF_TYPE_ALLOWSPLIT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @TIMEOUT_TICKS, align 4
  %41 = call i64 @xRingbufferReceiveSplit(i32 %39, i8** %11, i8** %12, i64* %9, i64* %10, i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @pdTRUE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT_MESSAGE(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %53

47:                                               ; preds = %34
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TIMEOUT_TICKS, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @xRingbufferReceiveUpTo(i32 %48, i64* %9, i32 %49, i64 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %11, align 8
  br label %53

53:                                               ; preds = %47, %38
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @TEST_ASSERT_MESSAGE(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @RINGBUF_TYPE_BYTEBUF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ule i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST_ASSERT_MESSAGE(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %54
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %92, %68
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8*, i8** @continuous_data, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %80, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @TEST_ASSERT_MESSAGE(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %69

95:                                               ; preds = %69
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %8, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @vRingbufferReturnItem(i32 %99, i8* %100)
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @RINGBUF_TYPE_ALLOWSPLIT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %142

105:                                              ; preds = %95
  %106 = load i8*, i8** %12, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %132, %108
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %10, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %109
  %115 = load i8*, i8** %12, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8*, i8** @continuous_data, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %122, %124
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %120, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @TEST_ASSERT_MESSAGE(i32 %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %132

132:                                              ; preds = %114
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %109

135:                                              ; preds = %109
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %8, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i8*, i8** %12, align 8
  %141 = call i32 @vRingbufferReturnItem(i32 %139, i8* %140)
  br label %142

142:                                              ; preds = %135, %105, %95
  br label %21

143:                                              ; preds = %21
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* @CONT_DATA_LEN, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @TEST_ASSERT_MESSAGE(i32 %147, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i32, i32* @rx_done, align 4
  %150 = call i32 @xSemaphoreGive(i32 %149)
  %151 = load i32, i32* @tx_done, align 4
  %152 = load i32, i32* @portMAX_DELAY, align 4
  %153 = call i32 @xSemaphoreTake(i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %16

157:                                              ; preds = %16
  ret void
}

declare dso_local i64 @xRingbufferReceive(i32, i64*, i32) #1

declare dso_local i64 @xRingbufferReceiveSplit(i32, i8**, i8**, i64*, i64*, i32) #1

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

declare dso_local i64 @xRingbufferReceiveUpTo(i32, i64*, i32, i64) #1

declare dso_local i32 @vRingbufferReturnItem(i32, i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
