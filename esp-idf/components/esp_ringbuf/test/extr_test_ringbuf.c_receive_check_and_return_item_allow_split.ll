; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_receive_check_and_return_item_allow_split.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_receive_check_and_return_item_allow_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pdTRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to receive item\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Item size is incorrect\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Item data is invalid\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Total item size is incorrect\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Head item data is invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64, i32, i32)* @receive_check_and_return_item_allow_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_check_and_return_item_allow_split(i32 %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32, i32* %6, align 4
  %23 = bitcast i64** %13 to i8**
  %24 = bitcast i64** %14 to i8**
  %25 = call i64 @xRingbufferReceiveSplitFromISR(i32 %22, i8** %23, i8** %24, i64* %11, i64* %12)
  store i64 %25, i64* %15, align 8
  br label %32

26:                                               ; preds = %5
  %27 = load i32, i32* %6, align 4
  %28 = bitcast i64** %13 to i8**
  %29 = bitcast i64** %14 to i8**
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @xRingbufferReceiveSplit(i32 %27, i8** %28, i8** %29, i64* %11, i64* %12, i32 %30)
  store i64 %31, i64* %15, align 8
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* @pdTRUE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @TEST_ASSERT_MESSAGE(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = load i64*, i64** %13, align 8
  %39 = icmp ne i64* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @TEST_ASSERT_MESSAGE(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load i64*, i64** %14, align 8
  %43 = icmp eq i64* %42, null
  br i1 %43, label %44, label %86

44:                                               ; preds = %32
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @TEST_ASSERT_MESSAGE(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %69, %44
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %11, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load i64*, i64** %13, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %60, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @TEST_ASSERT_MESSAGE(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %16, align 4
  br label %50

72:                                               ; preds = %50
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = load i64*, i64** %13, align 8
  %78 = bitcast i64* %77 to i8*
  %79 = call i32 @vRingbufferReturnItemFromISR(i32 %76, i8* %78, i32* null)
  br label %85

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = load i64*, i64** %13, align 8
  %83 = bitcast i64* %82 to i8*
  %84 = call i32 @vRingbufferReturnItem(i32 %81, i8* %83)
  br label %85

85:                                               ; preds = %80, %75
  br label %163

86:                                               ; preds = %32
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %87, %88
  %90 = load i64, i64* %8, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @TEST_ASSERT_MESSAGE(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %94

94:                                               ; preds = %113, %86
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %11, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %94
  %100 = load i64*, i64** %13, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %7, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %104, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @TEST_ASSERT_MESSAGE(i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %99
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %94

116:                                              ; preds = %94
  store i32 0, i32* %18, align 4
  br label %117

117:                                              ; preds = %138, %116
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %12, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %117
  %123 = load i64*, i64** %14, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %7, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 %129, %131
  %133 = getelementptr inbounds i64, i64* %128, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %127, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @TEST_ASSERT_MESSAGE(i32 %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %122
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %18, align 4
  br label %117

141:                                              ; preds = %117
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i32, i32* %6, align 4
  %146 = load i64*, i64** %13, align 8
  %147 = bitcast i64* %146 to i8*
  %148 = call i32 @vRingbufferReturnItemFromISR(i32 %145, i8* %147, i32* null)
  %149 = load i32, i32* %6, align 4
  %150 = load i64*, i64** %14, align 8
  %151 = bitcast i64* %150 to i8*
  %152 = call i32 @vRingbufferReturnItemFromISR(i32 %149, i8* %151, i32* null)
  br label %162

153:                                              ; preds = %141
  %154 = load i32, i32* %6, align 4
  %155 = load i64*, i64** %13, align 8
  %156 = bitcast i64* %155 to i8*
  %157 = call i32 @vRingbufferReturnItem(i32 %154, i8* %156)
  %158 = load i32, i32* %6, align 4
  %159 = load i64*, i64** %14, align 8
  %160 = bitcast i64* %159 to i8*
  %161 = call i32 @vRingbufferReturnItem(i32 %158, i8* %160)
  br label %162

162:                                              ; preds = %153, %144
  br label %163

163:                                              ; preds = %162, %85
  ret void
}

declare dso_local i64 @xRingbufferReceiveSplitFromISR(i32, i8**, i8**, i64*, i64*) #1

declare dso_local i64 @xRingbufferReceiveSplit(i32, i8**, i8**, i64*, i64*, i32) #1

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

declare dso_local i32 @vRingbufferReturnItemFromISR(i32, i8*, i32*) #1

declare dso_local i32 @vRingbufferReturnItem(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
