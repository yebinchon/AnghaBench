; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_autodetect.c_input_autoconfigure_joypad_try_from_conf.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_autodetect.c_input_autoconfigure_joypad_try_from_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"input_device\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"input_driver\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"input_vendor_id\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"input_product_id\00", align 1
@BLISSBOX_VID = common dso_local global i32 0, align 4
@BLISSBOX_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @input_autoconfigure_joypad_try_from_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_autoconfigure_joypad_try_from_conf(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %11, align 16
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %12, align 16
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %15 = call i32 @config_get_array(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %14, i32 256)
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %18 = call i32 @config_get_array(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 32)
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @config_get_int(i32* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @config_get_int(i32* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BLISSBOX_VID, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @BLISSBOX_PID, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %38
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @BLISSBOX_VID, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BLISSBOX_PID, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 3
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %66, %60, %55, %50, %44, %38
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @string_is_empty(i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %83 = call i32 @string_is_empty(i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @string_is_equal(i8* %86, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %85, %81, %75
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local i32 @config_get_array(i32*, i8*, i8*, i32) #1

declare dso_local i64 @config_get_int(i32*, i8*, i32*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
