; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_fd.c_concurrent_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_fd.c_concurrent_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @concurrent_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @concurrent_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = call i32 @test_delay_rand_ms(i32 10)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @open(i32 %15, i32 0, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 %17, i32 -1)
  %19 = call i32 @test_delay_rand_ms(i32 10)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @close(i32 %20)
  %22 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 %21, i32 -1)
  %23 = call i32 @test_delay_rand_ms(i32 10)
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xSemaphoreGive(i32 %30)
  %32 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @test_delay_rand_ms(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
