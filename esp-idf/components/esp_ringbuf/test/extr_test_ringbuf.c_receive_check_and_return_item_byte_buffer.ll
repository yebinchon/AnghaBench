; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_receive_check_and_return_item_byte_buffer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_receive_check_and_return_item_byte_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Failed to receive item\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Item data is invalid\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Total item size is incorrect\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Item size is incorrect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64, i32, i32)* @receive_check_and_return_item_byte_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_check_and_return_item_byte_buffer(i32 %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @xRingbufferReceiveUpToFromISR(i32 %20, i64* %11, i64 %21)
  %23 = inttoptr i64 %22 to i64*
  store i64* %23, i64** %12, align 8
  br label %30

24:                                               ; preds = %5
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @xRingbufferReceiveUpTo(i32 %25, i64* %11, i32 %26, i64 %27)
  %29 = inttoptr i64 %28 to i64*
  store i64* %29, i64** %12, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i64*, i64** %12, align 8
  %32 = icmp ne i64* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST_ASSERT_MESSAGE(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %54, %30
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i64*, i64** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %45, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @TEST_ASSERT_MESSAGE(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = load i64*, i64** %12, align 8
  %63 = bitcast i64* %62 to i8*
  %64 = call i32 @vRingbufferReturnItemFromISR(i32 %61, i8* %63, i32* null)
  br label %70

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = load i64*, i64** %12, align 8
  %68 = bitcast i64* %67 to i8*
  %69 = call i32 @vRingbufferReturnItem(i32 %66, i8* %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %142

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub i64 %79, %80
  %82 = call i64 @xRingbufferReceiveUpToFromISR(i32 %78, i64* %14, i64 %81)
  %83 = inttoptr i64 %82 to i64*
  store i64* %83, i64** %15, align 8
  br label %92

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %11, align 8
  %89 = sub i64 %87, %88
  %90 = call i64 @xRingbufferReceiveUpTo(i32 %85, i64* %14, i32 %86, i64 %89)
  %91 = inttoptr i64 %90 to i64*
  store i64* %91, i64** %15, align 8
  br label %92

92:                                               ; preds = %84, %77
  %93 = load i64*, i64** %15, align 8
  %94 = icmp ne i64* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @TEST_ASSERT_MESSAGE(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %97, %98
  %100 = load i64, i64* %8, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @TEST_ASSERT_MESSAGE(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %104

104:                                              ; preds = %125, %92
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %14, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = load i64*, i64** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %7, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = add i64 %116, %118
  %120 = getelementptr inbounds i64, i64* %115, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %114, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @TEST_ASSERT_MESSAGE(i32 %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %109
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %104

128:                                              ; preds = %104
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = load i64*, i64** %15, align 8
  %134 = bitcast i64* %133 to i8*
  %135 = call i32 @vRingbufferReturnItemFromISR(i32 %132, i8* %134, i32* null)
  br label %141

136:                                              ; preds = %128
  %137 = load i32, i32* %6, align 4
  %138 = load i64*, i64** %15, align 8
  %139 = bitcast i64* %138 to i8*
  %140 = call i32 @vRingbufferReturnItem(i32 %137, i8* %139)
  br label %141

141:                                              ; preds = %136, %131
  br label %148

142:                                              ; preds = %70
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %8, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @TEST_ASSERT_MESSAGE(i32 %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %148

148:                                              ; preds = %142, %141
  ret void
}

declare dso_local i64 @xRingbufferReceiveUpToFromISR(i32, i64*, i64) #1

declare dso_local i64 @xRingbufferReceiveUpTo(i32, i64*, i32, i64) #1

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

declare dso_local i32 @vRingbufferReturnItemFromISR(i32, i8*, i32*) #1

declare dso_local i32 @vRingbufferReturnItem(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
