; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_parse_filter_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_parse_filter_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"hb_parse_filter_settings: Error parsing (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_parse_filter_settings(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %14 = call i32* (...) @hb_dict_init()
  store i32* %14, i32** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8** @hb_str_vsplit(i8* %15, i8 signext 58)
  store i8** %16, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %145, %1
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %148

24:                                               ; preds = %17
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i8** @hb_str_vsplit(i8* %29, i8 signext 61)
  store i8** %30, i8*** %9, align 8
  %31 = load i8**, i8*** %9, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = load i8**, i8*** %9, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35, %24
  %41 = load i8**, i8*** %5, align 8
  %42 = call i32 @hb_str_vfree(i8** %41)
  %43 = load i8**, i8*** %9, align 8
  %44 = call i32 @hb_str_vfree(i8** %43)
  %45 = call i32 @hb_value_free(i32** %4)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @hb_log(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i32* null, i32** %2, align 8
  br label %152

48:                                               ; preds = %35
  %49 = load i8**, i8*** %9, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %7, align 8
  %52 = load i8**, i8*** %9, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %48
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 39
  br i1 %65, label %66, label %102

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 39
  br i1 %73, label %74, label %102

74:                                               ; preds = %66
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i8* @strdup(i8* %76)
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %11, align 8
  %84 = call i32* @hb_parse_filter_settings(i8* %83)
  store i32* %84, i32** %12, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32*, i32** %12, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %74
  %90 = load i8**, i8*** %5, align 8
  %91 = call i32 @hb_str_vfree(i8** %90)
  %92 = load i8**, i8*** %9, align 8
  %93 = call i32 @hb_str_vfree(i8** %92)
  %94 = call i32 @hb_value_free(i32** %4)
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @hb_log(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %95)
  store i32* null, i32** %2, align 8
  br label %152

97:                                               ; preds = %74
  %98 = load i32*, i32** %4, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @hb_dict_case_set(i32* %98, i8* %99, i32* %100)
  br label %142

102:                                              ; preds = %66, %60, %48
  %103 = load i32, i32* %10, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %135

105:                                              ; preds = %102
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 34
  br i1 %110, label %111, label %135

111:                                              ; preds = %105
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 34
  br i1 %118, label %119, label %135

119:                                              ; preds = %111
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = call i8* @strdup(i8* %121)
  store i8* %122, i8** %13, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i32*, i32** %4, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = call i32* @hb_value_string(i8* %130)
  %132 = call i32 @hb_dict_case_set(i32* %128, i8* %129, i32* %131)
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 @free(i8* %133)
  br label %141

135:                                              ; preds = %111, %105, %102
  %136 = load i32*, i32** %4, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = call i32* @hb_value_string(i8* %138)
  %140 = call i32 @hb_dict_case_set(i32* %136, i8* %137, i32* %139)
  br label %141

141:                                              ; preds = %135, %119
  br label %142

142:                                              ; preds = %141, %97
  %143 = load i8**, i8*** %9, align 8
  %144 = call i32 @hb_str_vfree(i8** %143)
  br label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %17

148:                                              ; preds = %17
  %149 = load i8**, i8*** %5, align 8
  %150 = call i32 @hb_str_vfree(i8** %149)
  %151 = load i32*, i32** %4, align 8
  store i32* %151, i32** %2, align 8
  br label %152

152:                                              ; preds = %148, %89, %40
  %153 = load i32*, i32** %2, align 8
  ret i32* %153
}

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i8** @hb_str_vsplit(i8*, i8 signext) #1

declare dso_local i32 @hb_str_vfree(i8**) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_log(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_dict_case_set(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
