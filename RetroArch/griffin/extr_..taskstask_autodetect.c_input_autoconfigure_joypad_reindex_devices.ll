; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_autodetect.c_input_autoconfigure_joypad_reindex_devices.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_autodetect.c_input_autoconfigure_joypad_reindex_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INPUT_DEVICES = common dso_local global i32 0, align 4
@input_device_name_index = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_autoconfigure_joypad_reindex_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i32*, i32** @input_device_name_index, align 8
  %12 = load i32, i32* %1, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %1, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %6

18:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %77, %18
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %19
  %24 = load i32, i32* %1, align 4
  %25 = call i8* @input_config_get_device_name(i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32*, i32** @input_device_name_index, align 8
  %30 = load i32, i32* %1, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %23
  br label %77

36:                                               ; preds = %28
  store i32 2, i32* %3, align 4
  %37 = load i32, i32* %1, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %73, %36
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load i32, i32* %2, align 4
  %45 = call i8* @input_config_get_device_name(i32 %44)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %73

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @string_is_equal(i8* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load i32*, i32** @input_device_name_index, align 8
  %56 = load i32, i32* %2, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load i32*, i32** @input_device_name_index, align 8
  %63 = load i32, i32* %1, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* %3, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %3, align 4
  %68 = load i32*, i32** @input_device_name_index, align 8
  %69 = load i32, i32* %2, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %54, %49
  br label %73

73:                                               ; preds = %72, %48
  %74 = load i32, i32* %2, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %39

76:                                               ; preds = %39
  br label %77

77:                                               ; preds = %76, %35
  %78 = load i32, i32* %1, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %1, align 4
  br label %19

80:                                               ; preds = %19
  ret void
}

declare dso_local i8* @input_config_get_device_name(i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
