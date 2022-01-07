; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_custom_11_1_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_custom_11_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [44 x i8] c"import_custom_11_1_0: invalid filter id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @import_custom_11_1_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_custom_11_1_0(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @hb_dict_get(i32* %15, i8* %16)
  %18 = call i8* @hb_value_get_string_xform(i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %105

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.TYPE_3__* @hb_filter_get(i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %8, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @hb_log(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %105

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %105

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = call i8** @hb_str_vsplit(i8* %37, i8 signext 58)
  store i8** %38, i8*** %9, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8** @hb_str_vsplit(i8* %41, i8 signext 58)
  store i8** %42, i8*** %10, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @free(i8* %43)
  %45 = call i32* (...) @hb_dict_init()
  store i32* %45, i32** %12, align 8
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %87, %36
  %47 = load i8**, i8*** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %90

53:                                               ; preds = %46
  %54 = load i8**, i8*** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %90

61:                                               ; preds = %53
  %62 = load i8**, i8*** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i8** @hb_str_vsplit(i8* %66, i8 signext 61)
  store i8** %67, i8*** %13, align 8
  %68 = load i8**, i8*** %13, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %61
  %73 = load i32*, i32** %12, align 8
  %74 = load i8**, i8*** %13, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8**, i8*** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @hb_value_string(i8* %81)
  %83 = call i32 @hb_dict_set(i32* %73, i8* %76, i32 %82)
  br label %84

84:                                               ; preds = %72, %61
  %85 = load i8**, i8*** %13, align 8
  %86 = call i32 @hb_str_vfree(i8** %85)
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %46

90:                                               ; preds = %60, %46
  %91 = load i8**, i8*** %10, align 8
  %92 = call i32 @hb_str_vfree(i8** %91)
  %93 = load i8**, i8*** %9, align 8
  %94 = call i32 @hb_str_vfree(i8** %93)
  %95 = load i32, i32* %5, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = call i8* @hb_filter_settings_string(i32 %95, i32* %96)
  store i8* %97, i8** %14, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 @hb_value_string(i8* %100)
  %102 = call i32 @hb_dict_set(i32* %98, i8* %99, i32 %101)
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %90, %35, %27, %21
  ret void
}

declare dso_local i8* @hb_value_get_string_xform(i32) #1

declare dso_local i32 @hb_dict_get(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @hb_filter_get(i32) #1

declare dso_local i32 @hb_log(i8*, i32) #1

declare dso_local i8** @hb_str_vsplit(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i32 @hb_str_vfree(i8**) #1

declare dso_local i8* @hb_filter_settings_string(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
