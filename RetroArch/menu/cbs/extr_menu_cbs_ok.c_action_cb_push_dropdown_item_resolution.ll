; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_cb_push_dropdown_item_resolution.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_cb_push_dropdown_item_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @action_cb_push_dropdown_item_resolution(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [100 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @snprintf(i8* %22, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %26 = call i8* @strtok(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i8*, i8** %13, align 8
  %31 = call i64 @strtoul(i8* %30, i32* null, i32 0)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %29, %5
  %34 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %13, align 8
  %39 = call i64 @strtoul(i8* %38, i32* null, i32 0)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @strtoul(i8* %46, i32* null, i32 0)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = uitofp i32 %53 to float
  %55 = call i64 @video_display_server_set_resolution(i32 %50, i32 %51, i32 %52, float %54, i32 0, i32 0, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %17, align 8
  %59 = load i32, i32* %16, align 4
  %60 = uitofp i32 %59 to float
  %61 = call i32 @video_monitor_set_refresh_rate(float %60)
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  store i32 1, i32* %6, align 4
  br label %71

70:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @video_display_server_set_resolution(i32, i32, i32, float, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

declare dso_local i32 @video_monitor_set_refresh_rate(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
