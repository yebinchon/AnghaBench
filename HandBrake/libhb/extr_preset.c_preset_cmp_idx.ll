; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_preset_cmp_idx.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_preset_cmp_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_PRESET_TYPE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@PRESET_DO_NEXT = common dso_local global i32 0, align 4
@PRESET_DO_SKIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@PRESET_DO_SUCCESS = common dso_local global i32 0, align 4
@PRESET_DO_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @preset_cmp_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preset_cmp_idx(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @HB_PRESET_TYPE_ALL, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @hb_dict_get(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @hb_value_get_int(i32 %20)
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @PRESET_DO_NEXT, align 4
  store i32 %24, i32* %5, align 4
  br label %104

25:                                               ; preds = %17, %4
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %31, %25
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 47)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @PRESET_DO_SKIP, align 4
  store i32 %45, i32* %5, align 4
  br label %104

46:                                               ; preds = %39
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %35

53:                                               ; preds = %35
  %54 = load i8*, i8** %8, align 8
  %55 = call i8* @strchr(i8* %54, i8 signext 47)
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %13, align 4
  br label %68

65:                                               ; preds = %53
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %13, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @PRESET_DO_SKIP, align 4
  store i32 %72, i32* %5, align 4
  br label %104

73:                                               ; preds = %68
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @hb_dict_get(i32* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i8* @hb_value_get_string(i32 %75)
  store i8* %76, i8** %11, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = load i32, i32* %13, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @strlen(i8* %82)
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %81, %73
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @strncmp(i8* %85, i8* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %84
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @PRESET_DO_SUCCESS, align 4
  store i32 %99, i32* %5, align 4
  br label %104

100:                                              ; preds = %90
  %101 = load i32, i32* @PRESET_DO_PARTIAL, align 4
  store i32 %101, i32* %5, align 4
  br label %104

102:                                              ; preds = %84
  %103 = load i32, i32* @PRESET_DO_NEXT, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %100, %98, %71, %44, %23
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @hb_value_get_int(i32) #1

declare dso_local i32 @hb_dict_get(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @hb_value_get_string(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
