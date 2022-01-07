; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_dict_extract_rational.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_dict_extract_rational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"Num\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Den\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_dict_extract_rational(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %3
  store i32 0, i32* %4, align 4
  br label %131

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32* @hb_dict_get(i32* %27, i8* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %131

33:                                               ; preds = %26
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @hb_value_type(i32* %34)
  %36 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @hb_dict_get(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %131

44:                                               ; preds = %38
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @hb_dict_get(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %131

50:                                               ; preds = %44
  %51 = load i32*, i32** %9, align 8
  %52 = call i8* @hb_value_get_int(i32* %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i8* @hb_value_get_int(i32* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  store i32 1, i32* %4, align 4
  br label %131

61:                                               ; preds = %33
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @hb_value_type(i32* %62)
  %64 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %129

66:                                               ; preds = %61
  %67 = load i32*, i32** %8, align 8
  %68 = call i8* @hb_value_get_string(i32* %67)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i8** @hb_str_vsplit(i8* %69, i8 signext 47)
  store i8** %70, i8*** %12, align 8
  %71 = load i8**, i8*** %12, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %126

75:                                               ; preds = %66
  %76 = load i8**, i8*** %12, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %126

80:                                               ; preds = %75
  %81 = load i8**, i8*** %12, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isdigit(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %126

88:                                               ; preds = %80
  %89 = load i8**, i8*** %12, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isdigit(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %88
  %97 = load i8**, i8*** %12, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strtol(i8* %99, i8** %13, i32 0)
  store i32 %100, i32* %15, align 4
  %101 = load i8**, i8*** %12, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strtol(i8* %103, i8** %14, i32 0)
  store i32 %104, i32* %16, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %96
  %111 = load i8*, i8** %14, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i8**, i8*** %12, align 8
  %124 = call i32 @hb_str_vfree(i8** %123)
  store i32 1, i32* %4, align 4
  br label %131

125:                                              ; preds = %110, %96
  br label %126

126:                                              ; preds = %125, %88, %80, %75, %66
  %127 = load i8**, i8*** %12, align 8
  %128 = call i32 @hb_str_vfree(i8** %127)
  br label %129

129:                                              ; preds = %126, %61
  br label %130

130:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %116, %50, %49, %43, %32, %25
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i8* @hb_value_get_int(i32*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i8** @hb_str_vsplit(i8*, i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @hb_str_vfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
