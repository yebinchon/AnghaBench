; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_type_to_cdecl.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_type_to_cdecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_6__** }

@.str = private unnamed_addr constant [4 x i8] c"*%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"const %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s[]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s[%zu]\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(*%s)(\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c", ...\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @type_to_cdecl(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %116 [
    i32 128, label %11
    i32 130, label %21
    i32 131, label %31
    i32 129, label %59
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i8* @cdecl_paren(i8* %16, i8 signext %18)
  %20 = call i8* @type_to_cdecl(%struct.TYPE_6__* %14, i8* %19)
  store i8* %20, i8** %3, align 8
  br label %129

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i8* @cdecl_paren(i8* %25, i8 signext %27)
  %29 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = call i8* @type_to_cdecl(%struct.TYPE_6__* %24, i8* %29)
  store i8* %30, i8** %3, align 8
  br label %129

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i8* @cdecl_paren(i8* %41, i8 signext %43)
  %45 = call i8* @type_to_cdecl(%struct.TYPE_6__* %39, i8* %44)
  store i8* %45, i8** %3, align 8
  br label %129

46:                                               ; preds = %31
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i8* @cdecl_paren(i8* %54, i8 signext %56)
  %58 = call i8* @type_to_cdecl(%struct.TYPE_6__* %49, i8* %57)
  store i8* %58, i8** %3, align 8
  br label %129

59:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i8*, i8*, ...) @buf_printf(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 (i8*, i8*, ...) @buf_printf(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %98

71:                                               ; preds = %59
  store i64 0, i64* %7, align 8
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %89
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i8* @type_to_cdecl(%struct.TYPE_6__* %91, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %93 = call i32 (i8*, i8*, ...) @buf_printf(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %84, i8* %92)
  br label %94

94:                                               ; preds = %79
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %72

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %97, %68
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 (i8*, i8*, ...) @buf_printf(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %98
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 (i8*, i8*, ...) @buf_printf(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = call i8* @type_to_cdecl(%struct.TYPE_6__* %113, i8* %114)
  store i8* %115, i8** %3, align 8
  br label %129

116:                                              ; preds = %2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = call i32 @cdecl_name(%struct.TYPE_6__* %117)
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %127 = load i8*, i8** %5, align 8
  %128 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %120, i8* %126, i8* %127)
  store i8* %128, i8** %3, align 8
  br label %129

129:                                              ; preds = %116, %107, %46, %36, %21, %11
  %130 = load i8*, i8** %3, align 8
  ret i8* %130
}

declare dso_local i8* @cdecl_paren(i8*, i8 signext) #1

declare dso_local i8* @strf(i8*, i8*, ...) #1

declare dso_local i32 @buf_printf(i8*, i8*, ...) #1

declare dso_local i32 @cdecl_name(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
