; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_generate_lut.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_generate_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rarch_key_map = type { i64, i32, i64 }

@rarch_key_map_rwebinput = common dso_local global %struct.rarch_key_map* null, align 8
@rwebinput_key_to_code_map = common dso_local global %struct.rarch_key_map* null, align 8
@RETROK_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rwebinput_generate_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rwebinput_generate_lut() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rarch_key_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.rarch_key_map*, align 8
  %6 = load %struct.rarch_key_map*, %struct.rarch_key_map** @rarch_key_map_rwebinput, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.rarch_key_map* %6)
  %8 = load %struct.rarch_key_map*, %struct.rarch_key_map** @rwebinput_key_to_code_map, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.rarch_key_map* %8)
  %10 = add nsw i32 %9, 1
  %11 = icmp eq i32 %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @retro_assert(i32 %12)
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %64, %0
  %15 = load i32, i32* %1, align 4
  %16 = load %struct.rarch_key_map*, %struct.rarch_key_map** @rwebinput_key_to_code_map, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.rarch_key_map* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %14
  %20 = load %struct.rarch_key_map*, %struct.rarch_key_map** @rwebinput_key_to_code_map, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %20, i64 %22
  store %struct.rarch_key_map* %23, %struct.rarch_key_map** %5, align 8
  %24 = load %struct.rarch_key_map*, %struct.rarch_key_map** @rarch_key_map_rwebinput, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %24, i64 %26
  store %struct.rarch_key_map* %27, %struct.rarch_key_map** %2, align 8
  %28 = load %struct.rarch_key_map*, %struct.rarch_key_map** %5, align 8
  %29 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.rarch_key_map*, %struct.rarch_key_map** %5, align 8
  %33 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @strlen(i64 %34)
  %36 = call i64 @encoding_crc32(i32 0, i32* %31, i32 %35)
  store i64 %36, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %52, %19
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %1, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.rarch_key_map*, %struct.rarch_key_map** @rarch_key_map_rwebinput, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %42, i64 %44
  %46 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @retro_assert(i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %37

55:                                               ; preds = %37
  %56 = load %struct.rarch_key_map*, %struct.rarch_key_map** %5, align 8
  %57 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.rarch_key_map*, %struct.rarch_key_map** %2, align 8
  %60 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.rarch_key_map*, %struct.rarch_key_map** %2, align 8
  %63 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %14

67:                                               ; preds = %14
  %68 = load %struct.rarch_key_map*, %struct.rarch_key_map** @rarch_key_map_rwebinput, align 8
  %69 = load %struct.rarch_key_map*, %struct.rarch_key_map** @rarch_key_map_rwebinput, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.rarch_key_map* %69)
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %68, i64 %72
  store %struct.rarch_key_map* %73, %struct.rarch_key_map** %2, align 8
  %74 = load i32, i32* @RETROK_UNKNOWN, align 4
  %75 = load %struct.rarch_key_map*, %struct.rarch_key_map** %2, align 8
  %76 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rarch_key_map*, %struct.rarch_key_map** %2, align 8
  %78 = getelementptr inbounds %struct.rarch_key_map, %struct.rarch_key_map* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  ret void
}

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rarch_key_map*) #1

declare dso_local i64 @encoding_crc32(i32, i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
