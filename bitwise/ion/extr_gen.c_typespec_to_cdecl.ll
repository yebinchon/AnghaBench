; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_typespec_to_cdecl.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_typespec_to_cdecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, i32, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"void%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"*%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s[]\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"(*%s)(\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c", ...\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"tuple%d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @typespec_to_cdecl(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  store i8* %19, i8** %3, align 8
  br label %149

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %147 [
    i32 130, label %24
    i32 129, label %37
    i32 132, label %47
    i32 133, label %53
    i32 131, label %82
    i32 128, label %139
  ]

24:                                               ; preds = %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = call i32 @get_gen_name(%struct.TYPE_9__* %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %34, i8* %35)
  store i8* %36, i8** %3, align 8
  br label %149

37:                                               ; preds = %20
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i8* @cdecl_paren(i8* %42, i8 signext %44)
  %46 = call i8* @typespec_to_cdecl(%struct.TYPE_9__* %40, i8* %45)
  store i8* %46, i8** %3, align 8
  br label %149

47:                                               ; preds = %20
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @typespec_to_cdecl(%struct.TYPE_9__* %50, i8* %51)
  store i8* %52, i8** %3, align 8
  br label %149

53:                                               ; preds = %20
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i8* @cdecl_paren(i8* %63, i8 signext %65)
  %67 = call i8* @typespec_to_cdecl(%struct.TYPE_9__* %61, i8* %66)
  store i8* %67, i8** %3, align 8
  br label %149

68:                                               ; preds = %53
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @gen_expr_str(i32 %75)
  %77 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %72, i8* %76)
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i8* @cdecl_paren(i8* %77, i8 signext %79)
  %81 = call i8* @typespec_to_cdecl(%struct.TYPE_9__* %71, i8* %80)
  store i8* %81, i8** %3, align 8
  br label %149

82:                                               ; preds = %20
  store i8* null, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 (i8*, i8*, ...) @buf_printf(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 (i8*, i8*, ...) @buf_printf(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %121

94:                                               ; preds = %82
  store i64 0, i64* %7, align 8
  br label %95

95:                                               ; preds = %117, %94
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %96, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %95
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %111, i64 %112
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = call i8* @typespec_to_cdecl(%struct.TYPE_9__* %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %116 = call i32 (i8*, i8*, ...) @buf_printf(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %107, i8* %115)
  br label %117

117:                                              ; preds = %102
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %7, align 8
  br label %95

120:                                              ; preds = %95
  br label %121

121:                                              ; preds = %120, %91
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 (i8*, i8*, ...) @buf_printf(i8* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %121
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 (i8*, i8*, ...) @buf_printf(i8* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = call i8* @typespec_to_cdecl(%struct.TYPE_9__* %136, i8* %137)
  store i8* %138, i8** %3, align 8
  br label %149

139:                                              ; preds = %20
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = call %struct.TYPE_10__* @get_resolved_type(%struct.TYPE_9__* %140)
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %8, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** %5, align 8
  %146 = call i8* (i8*, i8*, ...) @strf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %144, i8* %145)
  store i8* %146, i8** %3, align 8
  br label %149

147:                                              ; preds = %20
  %148 = call i32 @assert(i32 0)
  store i8* null, i8** %3, align 8
  br label %149

149:                                              ; preds = %147, %139, %130, %68, %58, %47, %37, %24, %11
  %150 = load i8*, i8** %3, align 8
  ret i8* %150
}

declare dso_local i8* @strf(i8*, i8*, ...) #1

declare dso_local i32 @get_gen_name(%struct.TYPE_9__*) #1

declare dso_local i8* @cdecl_paren(i8*, i8 signext) #1

declare dso_local i8* @gen_expr_str(i32) #1

declare dso_local i32 @buf_printf(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @get_resolved_type(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
