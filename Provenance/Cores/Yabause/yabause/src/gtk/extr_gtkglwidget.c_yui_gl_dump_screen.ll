; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_dump_screen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_dump_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32*, i32*)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32* }

@VIDCore = common dso_local global %struct.TYPE_9__* null, align 8
@dispbuffer = common dso_local global i64 0, align 8
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_gl_dump_screen(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @VIDCore, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %12, align 8
  %14 = call i32 %13(i32* %3, i32* %4)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %15, %16
  %18 = mul nsw i32 %17, 3
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = srem i32 %33, 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %39, 4
  %41 = sub nsw i32 4, %40
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %41, %36 ], [ 0, %42 ]
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* @malloc(i32 %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %53, %43
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to i8**
  store i8** %66, i8*** %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %3, align 4
  %69 = mul nsw i32 %68, 3
  %70 = sub nsw i32 %67, %69
  %71 = load i8**, i8*** %9, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  store i8** %73, i8*** %9, align 8
  %74 = load i64, i64* @dispbuffer, align 8
  %75 = inttoptr i64 %74 to i8**
  store i8** %75, i8*** %10, align 8
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %121, %62
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %124

80:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %111, %80
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load i8**, i8*** %10, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %9, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %9, align 8
  store i8* %90, i8** %91, align 8
  %93 = load i8**, i8*** %10, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** %9, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %100, i8*** %9, align 8
  store i8* %98, i8** %99, align 8
  %101 = load i8**, i8*** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** %9, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i32 1
  store i8** %108, i8*** %9, align 8
  store i8* %106, i8** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %85
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %81

114:                                              ; preds = %81
  %115 = load i32, i32* %3, align 4
  %116 = mul nsw i32 %115, 6
  %117 = load i8**, i8*** %9, align 8
  %118 = sext i32 %116 to i64
  %119 = sub i64 0, %118
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8** %120, i8*** %9, align 8
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %76

124:                                              ; preds = %76
  ret void
}

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
