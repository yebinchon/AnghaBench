; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_apply_ir_smoothing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_apply_ir_smoothing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_t = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"Smooth: OK (%.02f, %.02f) LAST (%.02f, %.02f) \00", align 1
@SMOOTH_IR_DEADZONE = common dso_local global i64 0, align 8
@SMOOTH_IR_RADIUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"INSIDE\0A\00", align 1
@SMOOTH_IR_SPEED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"OUTSIDE\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DEADZONE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply_ir_smoothing(%struct.ir_t* %0) #0 {
  %2 = alloca %struct.ir_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ir_t* %0, %struct.ir_t** %2, align 8
  %7 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %8 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %11 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %14 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %17 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, ...) @WIIUSE_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %12, i64 %15, i64 %18)
  %20 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %21 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %24 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %3, align 8
  %27 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %28 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %31 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = mul nsw i64 %34, %35
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = mul nsw i64 %37, %38
  %40 = add nsw i64 %36, %39
  %41 = call i64 @sqrtf(i64 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @SMOOTH_IR_DEADZONE, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %1
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @SMOOTH_IR_RADIUS, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = call i32 (i8*, ...) @WIIUSE_DEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @SMOOTH_IR_SPEED, align 8
  %53 = mul nsw i64 %51, %52
  %54 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %55 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @SMOOTH_IR_SPEED, align 8
  %60 = mul nsw i64 %58, %59
  %61 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %62 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %90

65:                                               ; preds = %45
  %66 = call i32 (i8*, ...) @WIIUSE_DEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %3, align 8
  %69 = call i64 @atan2f(i64 %67, i64 %68)
  store i64 %69, i64* %6, align 8
  %70 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %71 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @cosf(i64 %73)
  %75 = load i64, i64* @SMOOTH_IR_RADIUS, align 8
  %76 = mul nsw i64 %74, %75
  %77 = sub nsw i64 %72, %76
  %78 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %79 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %81 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i64 @sinf(i64 %83)
  %85 = load i64, i64* @SMOOTH_IR_RADIUS, align 8
  %86 = mul nsw i64 %84, %85
  %87 = sub nsw i64 %82, %86
  %88 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %89 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %65, %49
  br label %93

91:                                               ; preds = %1
  %92 = call i32 (i8*, ...) @WIIUSE_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %90
  ret void
}

declare dso_local i32 @WIIUSE_DEBUG(i8*, ...) #1

declare dso_local i64 @sqrtf(i64) #1

declare dso_local i64 @atan2f(i64, i64) #1

declare dso_local i64 @cosf(i64) #1

declare dso_local i64 @sinf(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
