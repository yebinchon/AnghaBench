; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_deint_11_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_deint_11_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceFilter\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"PictureDeinterlacePreset\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"skip-spatial\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"bob\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceCustom\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @import_deint_11_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_deint_11_0_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @hb_dict_get(i32* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %132

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @hb_value_get_string(i32* %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %132

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcasecmp(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %132

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = call i32* @hb_dict_get(i32* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32 @hb_dict_set(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %132

36:                                               ; preds = %27
  %37 = load i32*, i32** %3, align 8
  %38 = call i8* @hb_value_get_string(i32* %37)
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %132

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @strcasecmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @strcasecmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @hb_value_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 @hb_dict_set(i32* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %132

54:                                               ; preds = %46
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @strcasecmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %4, align 8
  %60 = call i64 @strcasecmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58, %54
  br label %132

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @strcasecmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @hb_dict_set(i32* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %132

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %2, align 8
  %75 = call i32* @hb_dict_get(i32* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i32* %75, i32** %3, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @hb_value_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %81 = call i32 @hb_dict_set(i32* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %132

82:                                               ; preds = %73
  %83 = load i32*, i32** %3, align 8
  %84 = call i8* @hb_value_get_string(i32* %83)
  store i8* %84, i8** %4, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %132

88:                                               ; preds = %82
  store i32 3, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @sscanf(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* %8, i32* %9)
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 2
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, 8
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %88
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %112, %88
  %116 = phi i1 [ false, %88 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  %118 = mul nsw i32 %117, 2
  %119 = add nsw i32 %109, %118
  %120 = load i32, i32* %5, align 4
  %121 = mul nsw i32 %120, 4
  %122 = add nsw i32 %119, %121
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %123, i32 %124)
  store i8* %125, i8** %10, align 8
  %126 = load i32*, i32** %2, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @hb_value_string(i8* %127)
  %129 = call i32 @hb_dict_set(i32* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %128)
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 @free(i8* %130)
  br label %132

132:                                              ; preds = %115, %87, %78, %67, %62, %50, %41, %32, %26, %21, %15
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
