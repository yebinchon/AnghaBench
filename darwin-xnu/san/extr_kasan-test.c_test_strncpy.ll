; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_test_strncpy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_test_strncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_test = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"looooonnnnggg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kasan_test*)* @test_strncpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_strncpy(%struct.kasan_test* %0) #0 {
  %2 = alloca %struct.kasan_test*, align 8
  %3 = alloca [9 x i8], align 1
  store %struct.kasan_test* %0, %struct.kasan_test** %2, align 8
  %4 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %5 = call i32 @TEST_START(%struct.kasan_test* %4)
  %6 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %7 = call i32 @strncpy(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 9)
  %8 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %9 = call i32 @strncpy(i8* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %10 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %11 = call i32 @TEST_FAULT(%struct.kasan_test* %10)
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %13 = call i32 @strncpy(i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %14 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %15 = call i32 @TEST_NOFAULT(%struct.kasan_test* %14)
  %16 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 108
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i32 @TEST_START(%struct.kasan_test*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @TEST_FAULT(%struct.kasan_test*) #1

declare dso_local i32 @TEST_NOFAULT(%struct.kasan_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
