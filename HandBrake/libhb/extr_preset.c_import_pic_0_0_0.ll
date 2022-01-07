; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_pic_0_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_pic_0_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"UsesMaxPictureSettings\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"UsesPictureSettings\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PicturePAR\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"loose\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @import_pic_0_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_pic_0_0_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @hb_dict_get(i32* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 @hb_value_get_bool(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @hb_value_int(i32 2)
  %17 = call i32 @hb_dict_set(i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32* @hb_dict_get(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @hb_value_is_number(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @hb_value_get_int(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %28 [
    i32 0, label %29
    i32 1, label %30
    i32 2, label %31
    i32 3, label %32
  ]

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %24, %28
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %33

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %33

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %33

32:                                               ; preds = %24
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %33

33:                                               ; preds = %32, %31, %30, %29
  %34 = load i32*, i32** %2, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @hb_value_string(i8* %35)
  %37 = call i32 @hb_dict_set(i32* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %86

38:                                               ; preds = %18
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @hb_value_type(i32* %39)
  %41 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = call i8* @hb_value_get_string(i32* %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strtol(i8* %46, i8** %8, i32 0)
  store i32 %47, i32* %9, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %53 [
    i32 2, label %54
    i32 0, label %55
    i32 1, label %56
    i32 3, label %57
  ]

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %51, %53
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %58

55:                                               ; preds = %51
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %58

56:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %58

57:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %58

58:                                               ; preds = %57, %56, %55, %54
  %59 = load i32*, i32** %2, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @hb_value_string(i8* %60)
  %62 = call i32 @hb_dict_set(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %84

63:                                               ; preds = %43
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcasecmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @strcasecmp(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @strcasecmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @strcasecmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @hb_value_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %82 = call i32 @hb_dict_set(i32* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %75, %71, %67, %63
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %38
  br label %86

86:                                               ; preds = %85, %33
  ret void
}

declare dso_local i64 @hb_value_get_bool(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i64 @hb_value_is_number(i32*) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
