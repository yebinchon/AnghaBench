; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_state_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_state_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savestate_state = type { i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"savestate error: %u/%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @state_read(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.savestate_state*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.savestate_state*
  store %struct.savestate_state* %13, %struct.savestate_state** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load %struct.savestate_state*, %struct.savestate_state** %10, align 8
  %18 = getelementptr inbounds %struct.savestate_state, %struct.savestate_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.savestate_state*, %struct.savestate_state** %10, align 8
  %23 = getelementptr inbounds %struct.savestate_state, %struct.savestate_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %4
  %27 = load %struct.savestate_state*, %struct.savestate_state** %10, align 8
  %28 = getelementptr inbounds %struct.savestate_state, %struct.savestate_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %29, %30
  %32 = load %struct.savestate_state*, %struct.savestate_state** %10, align 8
  %33 = getelementptr inbounds %struct.savestate_state, %struct.savestate_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @lprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %34)
  %36 = load %struct.savestate_state*, %struct.savestate_state** %10, align 8
  %37 = getelementptr inbounds %struct.savestate_state, %struct.savestate_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.savestate_state*, %struct.savestate_state** %10, align 8
  %40 = getelementptr inbounds %struct.savestate_state, %struct.savestate_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = trunc i64 %43 to i32
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %65

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47, %4
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.savestate_state*, %struct.savestate_state** %10, align 8
  %51 = getelementptr inbounds %struct.savestate_state, %struct.savestate_state* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.savestate_state*, %struct.savestate_state** %10, align 8
  %54 = getelementptr inbounds %struct.savestate_state, %struct.savestate_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @memcpy(i8* %49, i64 %56, i64 %57)
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.savestate_state*, %struct.savestate_state** %10, align 8
  %61 = getelementptr inbounds %struct.savestate_state, %struct.savestate_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %11, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %48, %46
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local i32 @lprintf(i8*, i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
