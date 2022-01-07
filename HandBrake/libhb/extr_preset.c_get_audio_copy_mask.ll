; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_get_audio_copy_mask.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_get_audio_copy_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"AudioCopyMask\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"copy:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"copy:%s\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Invalid audio codec in autopassthru copy mask (%s)\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Codec name is invalid or can not be copied\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @get_audio_copy_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_audio_copy_mask(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @hb_dict_get(i32* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %8, align 8
  %22 = call i32* (...) @hb_value_array_init()
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %80

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @hb_value_array_len(i32* %26)
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %76, %25
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32* @hb_value_array_get(i32* %33, i32 %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i64 @hb_value_type(i32* %36)
  %38 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %32
  store i8* null, i8** %13, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i8* @hb_value_get_string(i32* %41)
  store i8* %42, i8** %14, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %14, align 8
  %48 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store i8* %48, i8** %13, align 8
  store i8* %48, i8** %14, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @hb_audio_encoder_get_from_name(i8* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @free(i8* %58)
  %60 = call i32 @hb_value_free(i32** %7)
  store i32* null, i32** %3, align 8
  br label %88

61:                                               ; preds = %49
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @free(i8* %62)
  br label %67

64:                                               ; preds = %32
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @hb_value_get_int(i32* %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @hb_audio_encoder_get_short_name(i32 %69)
  %71 = call i32 @hb_value_string(i32 %70)
  %72 = call i32 @hb_value_array_append(i32* %68, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %28

79:                                               ; preds = %28
  br label %80

80:                                               ; preds = %79, %19
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32*, i32** %7, align 8
  store i32* %87, i32** %3, align 8
  br label %88

88:                                               ; preds = %86, %54
  %89 = load i32*, i32** %3, align 8
  ret i32* %89
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @hb_strdup_printf(i8*, i8*) #1

declare dso_local i32 @hb_audio_encoder_get_from_name(i8*) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32) #1

declare dso_local i32 @hb_value_string(i32) #1

declare dso_local i32 @hb_audio_encoder_get_short_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
