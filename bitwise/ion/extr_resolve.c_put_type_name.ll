; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_put_type_name.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_put_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, %struct.TYPE_8__, i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_11__*, i32, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { i32 }

@type_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[%zu]\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"func(\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@type_void = common dso_local global %struct.TYPE_11__* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_type_name(i8** %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %8 = load i8**, i8*** @type_names, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8*, i8** %8, i64 %11
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8**, i8*** %3, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i8*, i8*, ...) @buf_printf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %163

21:                                               ; preds = %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  switch i64 %24, label %160 [
    i64 130, label %25
    i64 128, label %25
    i64 134, label %25
    i64 132, label %25
    i64 135, label %38
    i64 131, label %46
    i64 136, label %54
    i64 133, label %65
    i64 129, label %125
  ]

25:                                               ; preds = %21, %21, %21, %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = call i32 @assert(%struct.TYPE_12__* %28)
  %30 = load i8**, i8*** %3, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i8*, ...) @buf_printf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %162

38:                                               ; preds = %21
  %39 = load i8**, i8*** %3, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  call void @put_type_name(i8** %39, %struct.TYPE_11__* %42)
  %43 = load i8**, i8*** %3, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, i8*, ...) @buf_printf(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %162

46:                                               ; preds = %21
  %47 = load i8**, i8*** %3, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  call void @put_type_name(i8** %47, %struct.TYPE_11__* %50)
  %51 = load i8**, i8*** %3, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i8*, ...) @buf_printf(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %162

54:                                               ; preds = %21
  %55 = load i8**, i8*** %3, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  call void @put_type_name(i8** %55, %struct.TYPE_11__* %58)
  %59 = load i8**, i8*** %3, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, i8*, ...) @buf_printf(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %162

65:                                               ; preds = %21
  %66 = load i8**, i8*** %3, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, i8*, ...) @buf_printf(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %92, %65
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %69
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i8**, i8*** %3, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i8*, ...) @buf_printf(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i8**, i8*** %3, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %88, i64 %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  call void @put_type_name(i8** %84, %struct.TYPE_11__* %91)
  br label %92

92:                                               ; preds = %83
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %6, align 8
  br label %69

95:                                               ; preds = %69
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i8**, i8*** %3, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, i8*, ...) @buf_printf(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i8**, i8*** %3, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, i8*, ...) @buf_printf(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** @type_void, align 8
  %114 = icmp ne %struct.TYPE_11__* %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %105
  %116 = load i8**, i8*** %3, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, i8*, ...) @buf_printf(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %119 = load i8**, i8*** %3, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  call void @put_type_name(i8** %119, %struct.TYPE_11__* %123)
  br label %124

124:                                              ; preds = %115, %105
  br label %162

125:                                              ; preds = %21
  %126 = load i8**, i8*** %3, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, i8*, ...) @buf_printf(i8* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %129

129:                                              ; preds = %153, %125
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ult i64 %130, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %129
  %137 = load i64, i64* %7, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i8**, i8*** %3, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i8*, i8*, ...) @buf_printf(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %143

143:                                              ; preds = %139, %136
  %144 = load i8**, i8*** %3, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  call void @put_type_name(i8** %144, %struct.TYPE_11__* %152)
  br label %153

153:                                              ; preds = %143
  %154 = load i64, i64* %7, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %7, align 8
  br label %129

156:                                              ; preds = %129
  %157 = load i8**, i8*** %3, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i8*, i8*, ...) @buf_printf(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %162

160:                                              ; preds = %21
  %161 = call i32 @assert(%struct.TYPE_12__* null)
  br label %162

162:                                              ; preds = %160, %156, %124, %54, %46, %38, %25
  br label %163

163:                                              ; preds = %162, %16
  ret void
}

declare dso_local i32 @buf_printf(i8*, i8*, ...) #1

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
