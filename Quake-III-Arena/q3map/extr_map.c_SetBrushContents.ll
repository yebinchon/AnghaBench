; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_SetBrushContents.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_SetBrushContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@qfalse = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Entity %i, Brush %i: mixed face contents\0A\00", align 1
@CONTENTS_DETAIL = common dso_local global i32 0, align 4
@CONTENTS_STRUCTURAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Entity %i, Brush %i: mixed CONTENTS_DETAIL and CONTENTS_STRUCTURAL\0A\00", align 1
@num_entities = common dso_local global i64 0, align 8
@entitySourceBrushes = common dso_local global i32 0, align 4
@fulldetail = common dso_local global i64 0, align 8
@CONTENTS_TRANSLUCENT = common dso_local global i32 0, align 4
@c_detail = common dso_local global i32 0, align 4
@c_structural = common dso_local global i32 0, align 4
@CONTENTS_AREAPORTAL = common dso_local global i32 0, align 4
@c_areaportals = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetBrushContents(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @qfalse, align 8
  store i8* %21, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %55, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %55

40:                                               ; preds = %28
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i8*, i8** @qtrue, align 8
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49, %39
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 1
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %5, align 8
  br label %22

60:                                               ; preds = %22
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @qprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %63, %60
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @CONTENTS_DETAIL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @CONTENTS_STRUCTURAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i64, i64* @num_entities, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load i32, i32* @entitySourceBrushes, align 4
  %85 = call i32 @_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %83, i32 %84)
  %86 = load i32, i32* @CONTENTS_DETAIL, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %3, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %81, %76, %71
  %91 = load i64, i64* @fulldetail, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @CONTENTS_DETAIL, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %3, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @CONTENTS_TRANSLUCENT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @CONTENTS_STRUCTURAL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @CONTENTS_DETAIL, align 4
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %103, %98
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @CONTENTS_DETAIL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* @c_detail, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @c_detail, align 4
  %120 = load i8*, i8** @qtrue, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  br label %129

123:                                              ; preds = %112
  %124 = load i32, i32* @c_structural, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @c_structural, align 4
  %126 = load i8*, i8** @qfalse, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %123, %117
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @CONTENTS_TRANSLUCENT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i8*, i8** @qfalse, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  br label %142

138:                                              ; preds = %129
  %139 = load i8*, i8** @qtrue, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %138, %134
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @CONTENTS_AREAPORTAL, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* @c_areaportals, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @c_areaportals, align 4
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32, i32* %3, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  ret void
}

declare dso_local i32 @qprintf(i8*, i32, i32) #1

declare dso_local i32 @_printf(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
