; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_audio_0_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_audio_0_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"AudioCopyMask\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"AudioAllowMP3Pass\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"copy:mp3\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"AudioAllowAACPass\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"copy:aac\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"AudioAllowAC3Pass\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"copy:ac3\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"AudioAllowDTSPass\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"copy:dts\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"AudioAllowDTSHDPass\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"copy:dtshd\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"AudioAllowEAC3Pass\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"copy:eac3\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"AudioAllowFLACPass\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"copy:flac\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"AudioAllowTRUEHDPass\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"copy:truehd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @import_audio_0_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_audio_0_0_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @hb_dict_get(i32* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %85

9:                                                ; preds = %1
  %10 = call i32* (...) @hb_value_array_init()
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @hb_dict_set(i32* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @hb_dict_get(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i64 @hb_value_get_bool(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @hb_value_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @hb_value_array_append(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %9
  %23 = load i32*, i32** %2, align 8
  %24 = call i32* @hb_dict_get(i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i64 @hb_value_get_bool(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @hb_value_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %30 = call i32 @hb_value_array_append(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32*, i32** %2, align 8
  %33 = call i32* @hb_dict_get(i32* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %34 = call i64 @hb_value_get_bool(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @hb_value_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %39 = call i32 @hb_value_array_append(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32*, i32** %2, align 8
  %42 = call i32* @hb_dict_get(i32* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %43 = call i64 @hb_value_get_bool(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @hb_value_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %48 = call i32 @hb_value_array_append(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32*, i32** %2, align 8
  %51 = call i32* @hb_dict_get(i32* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %52 = call i64 @hb_value_get_bool(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @hb_value_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %57 = call i32 @hb_value_array_append(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32*, i32** %2, align 8
  %60 = call i32* @hb_dict_get(i32* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %61 = call i64 @hb_value_get_bool(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @hb_value_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %66 = call i32 @hb_value_array_append(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32*, i32** %2, align 8
  %69 = call i32* @hb_dict_get(i32* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %70 = call i64 @hb_value_get_bool(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @hb_value_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %75 = call i32 @hb_value_array_append(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32*, i32** %2, align 8
  %78 = call i32* @hb_dict_get(i32* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %79 = call i64 @hb_value_get_bool(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @hb_value_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %84 = call i32 @hb_value_array_append(i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %8, %81, %76
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i64 @hb_value_get_bool(i32*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
