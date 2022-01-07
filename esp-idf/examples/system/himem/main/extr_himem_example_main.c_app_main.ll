; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/himem/main/extr_himem_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/himem/main/extr_himem_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [79 x i8] c"Himem has %dKiB of memory, %dKiB of which is free. Testing the free memory...\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Done!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 (...) @esp_himem_get_phys_size()
  store i64 %3, i64* %1, align 8
  %4 = call i64 (...) @esp_himem_get_free_size()
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %1, align 8
  %6 = trunc i64 %5 to i32
  %7 = sdiv i32 %6, 1024
  %8 = load i64, i64* %2, align 8
  %9 = trunc i64 %8 to i32
  %10 = sdiv i32 %9, 1024
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @test_region(i64 %12, i32 43690)
  %14 = call i32 @assert(i32 %13)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @esp_himem_get_phys_size(...) #1

declare dso_local i64 @esp_himem_get_free_size(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @test_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
