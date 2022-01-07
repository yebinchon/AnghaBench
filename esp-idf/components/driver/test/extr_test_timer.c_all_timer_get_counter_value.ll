; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_all_timer_get_counter_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_all_timer_get_counter_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@TIMER_0 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TIMER_1 = common dso_local global i32 0, align 4
@TIMER_GROUP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64*)* @all_timer_get_counter_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @all_timer_get_counter_value(i64 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @TIMER_GROUP_0, align 4
  %10 = load i32, i32* @TIMER_0, align 4
  %11 = call i64 @timer_get_counter_value(i32 %9, i32 %10, i64* %8)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @ESP_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @TEST_ASSERT(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST_ASSERT(i32 %23)
  br label %38

25:                                               ; preds = %3
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST_ASSERT(i32 %29)
  %31 = load i64*, i64** %6, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %25
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* @TIMER_GROUP_0, align 4
  %40 = load i32, i32* @TIMER_1, align 4
  %41 = call i64 @timer_get_counter_value(i32 %39, i32 %40, i64* %8)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @ESP_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_ASSERT(i32 %53)
  br label %68

55:                                               ; preds = %38
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @TEST_ASSERT(i32 %59)
  %61 = load i64*, i64** %6, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i64, i64* %8, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %55
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i32, i32* @TIMER_GROUP_1, align 4
  %70 = load i32, i32* @TIMER_0, align 4
  %71 = call i64 @timer_get_counter_value(i32 %69, i32 %70, i64* %8)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @ESP_OK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST_ASSERT(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @TEST_ASSERT(i32 %83)
  br label %98

85:                                               ; preds = %68
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @TEST_ASSERT(i32 %89)
  %91 = load i64*, i64** %6, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i64, i64* %8, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 2
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %85
  br label %98

98:                                               ; preds = %97, %79
  %99 = load i32, i32* @TIMER_GROUP_1, align 4
  %100 = load i32, i32* @TIMER_1, align 4
  %101 = call i64 @timer_get_counter_value(i32 %99, i32 %100, i64* %8)
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* @ESP_OK, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @TEST_ASSERT(i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @TEST_ASSERT(i32 %113)
  br label %128

115:                                              ; preds = %98
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* %8, align 8
  %118 = icmp ne i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @TEST_ASSERT(i32 %119)
  %121 = load i64*, i64** %6, align 8
  %122 = icmp ne i64* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load i64, i64* %8, align 8
  %125 = load i64*, i64** %6, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 3
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %115
  br label %128

128:                                              ; preds = %127, %109
  ret void
}

declare dso_local i64 @timer_get_counter_value(i32, i32, i64*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
