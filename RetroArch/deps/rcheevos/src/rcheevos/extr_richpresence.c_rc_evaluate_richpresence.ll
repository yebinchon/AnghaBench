; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_richpresence.c_rc_evaluate_richpresence.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_richpresence.c_rc_evaluate_richpresence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i8*, %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_evaluate_richpresence(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @rc_update_memref_values(i32 %22, i32 %23, i8* %24)
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %17, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %14, align 8
  br label %30

30:                                               ; preds = %139, %6
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %143

33:                                               ; preds = %30
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %11, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i64 @rc_test_trigger(i32* %40, i32 %41, i8* %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %139

46:                                               ; preds = %38, %33
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %15, align 8
  br label %50

50:                                               ; preds = %128, %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %132

53:                                               ; preds = %50
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %103 [
    i32 128, label %57
    i32 129, label %64
  ]

57:                                               ; preds = %53
  %58 = load i8*, i8** %17, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %18, align 4
  br label %117

64:                                               ; preds = %53
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32, i32* %11, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @rc_evaluate_value(i32* %66, i32 %67, i8* %68, i32* %69)
  store i32 %70, i32* %19, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %16, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  store i32 0, i32* %18, align 4
  br label %102

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %91, %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = icmp ne %struct.TYPE_7__* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %86, %87
  br label %89

89:                                               ; preds = %83, %78
  %90 = phi i1 [ false, %78 ], [ %88, %83 ]
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %16, align 8
  br label %78

95:                                               ; preds = %89
  %96 = load i8*, i8** %17, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @snprintf(i8* %96, i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %100)
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %95, %76
  br label %117

103:                                              ; preds = %53
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %12, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @rc_evaluate_value(i32* %105, i32 %106, i8* %107, i32* %108)
  store i32 %109, i32* %19, align 4
  %110 = load i8*, i8** %17, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @rc_format_value(i8* %110, i32 %111, i32 %112, i32 %115)
  store i32 %116, i32* %18, align 4
  br label %117

117:                                              ; preds = %103, %102, %57
  %118 = load i32, i32* %18, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i32, i32* %18, align 4
  %122 = load i8*, i8** %17, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %17, align 8
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sub i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %120, %117
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  store %struct.TYPE_9__* %131, %struct.TYPE_9__** %15, align 8
  br label %50

132:                                              ; preds = %50
  %133 = load i8*, i8** %17, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %7, align 4
  br label %146

139:                                              ; preds = %38
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  store %struct.TYPE_8__* %142, %struct.TYPE_8__** %14, align 8
  br label %30

143:                                              ; preds = %30
  %144 = load i8*, i8** %9, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  store i8 0, i8* %145, align 1
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %143, %132
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @rc_update_memref_values(i32, i32, i8*) #1

declare dso_local i64 @rc_test_trigger(i32*, i32, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @rc_evaluate_value(i32*, i32, i8*, i32*) #1

declare dso_local i32 @rc_format_value(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
