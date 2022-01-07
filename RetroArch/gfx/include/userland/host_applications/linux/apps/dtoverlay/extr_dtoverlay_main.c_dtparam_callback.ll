; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_dtparam_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_dtparam_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtparam_state = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"%08x%s\00", align 1
@FDT_ERR_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtparam_callback(i32 %0, i32* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.dtparam_state*, align 8
  %18 = alloca [80 x i8], align 16
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %20 = load i8*, i8** %16, align 8
  %21 = bitcast i8* %20 to %struct.dtparam_state*
  store %struct.dtparam_state* %21, %struct.dtparam_state** %17, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.dtparam_state*, %struct.dtparam_state** %17, align 8
  %30 = getelementptr inbounds %struct.dtparam_state, %struct.dtparam_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @dtoverlay_override_one_target(i32 %22, i32* %23, i32 %24, i8* %25, i32 %26, i32 %27, i32 %28, i8* %32)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %8
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %41 = load i32, i32* %13, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = call i64 @snprintf(i8* %40, i32 80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @FDT_ERR_INTERNAL, align 4
  store i32 %46, i32* %19, align 4
  br label %61

47:                                               ; preds = %39
  %48 = load %struct.dtparam_state*, %struct.dtparam_state** %17, align 8
  %49 = getelementptr inbounds %struct.dtparam_state, %struct.dtparam_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %52 = call i64 @string_vec_find(i32 %50, i8* %51, i32 0)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.dtparam_state*, %struct.dtparam_state** %17, align 8
  %56 = getelementptr inbounds %struct.dtparam_state, %struct.dtparam_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %59 = call i32 @string_vec_add(i32 %57, i8* %58, i32 0)
  br label %60

60:                                               ; preds = %54, %47
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61, %36, %8
  %63 = load i32, i32* %19, align 4
  ret i32 %63
}

declare dso_local i32 @dtoverlay_override_one_target(i32, i32*, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i64 @string_vec_find(i32, i8*, i32) #1

declare dso_local i32 @string_vec_add(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
