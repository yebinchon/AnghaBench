; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_get_gen_name_or_default.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_get_gen_name_or_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@gen_name_map = common dso_local global i32 0, align 4
@SYM_CONST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_gen_name_or_default(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @map_get(i32* @gen_name_map, i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %102, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call %struct.TYPE_5__* @get_resolved_sym(i8* %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %94

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  br label %93

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %88

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %7, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SYM_CONST, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %36
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %68, %47
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 256
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = icmp ult i8* %56, %59
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i1 [ false, %50 ], [ %60, %55 ]
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call signext i8 @toupper(i8 signext %65)
  %67 = load i8*, i8** %9, align 8
  store i8 %66, i8* %67, align 1
  br label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  br label %50

73:                                               ; preds = %61
  %74 = load i8*, i8** %9, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %77 = getelementptr inbounds i8, i8* %76, i64 256
  %78 = icmp ult i8* %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %80, i8** %7, align 8
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81, %36
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @strf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %83, i8* %86)
  store i8* %87, i8** %5, align 8
  br label %92

88:                                               ; preds = %29
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %5, align 8
  br label %92

92:                                               ; preds = %88, %82
  br label %93

93:                                               ; preds = %92, %25
  br label %98

94:                                               ; preds = %15
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @assert(i8* %95)
  %97 = load i8*, i8** %4, align 8
  store i8* %97, i8** %5, align 8
  br label %98

98:                                               ; preds = %94, %93
  %99 = load i8*, i8** %3, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @map_put(i32* @gen_name_map, i8* %99, i8* %100)
  br label %102

102:                                              ; preds = %98, %2
  %103 = load i8*, i8** %5, align 8
  ret i8* %103
}

declare dso_local i8* @map_get(i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @get_resolved_sym(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i8* @strf(i8*, i8*, i8*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @map_put(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
