; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_visualinfo.c_CreateContext.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_visualinfo.c_CreateContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@GLX_RGBA = common dso_local global i32 0, align 4
@GLX_DOUBLEBUFFER = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@display = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@AllocNone = common dso_local global i32 0, align 4
@InputOutput = common dso_local global i32 0, align 4
@CWBorderPixel = common dso_local global i32 0, align 4
@CWColormap = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateContext(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %9 = load i32, i32* @GLX_RGBA, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @GLX_DOUBLEBUFFER, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @None, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = icmp eq %struct.TYPE_8__* null, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @GL_TRUE, align 4
  store i32 %17, i32* %2, align 4
  br label %144

18:                                               ; preds = %1
  %19 = load i32, i32* @display, align 4
  %20 = call i32* @XOpenDisplay(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* null, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @GL_TRUE, align 4
  store i32 %28, i32* %2, align 4
  br label %144

29:                                               ; preds = %18
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @glXQueryExtension(i32* %32, i32* %5, i32* %6)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @GL_TRUE, align 4
  store i32 %36, i32* %2, align 4
  br label %144

37:                                               ; preds = %29
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @DefaultScreen(i32* %43)
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %46 = call %struct.TYPE_9__* @glXChooseVisual(i32* %40, i32 %44, i32* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = icmp eq %struct.TYPE_9__* null, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* @GL_TRUE, align 4
  store i32 %54, i32* %2, align 4
  br label %144

55:                                               ; preds = %37
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i32, i32* @None, align 4
  %63 = load i32, i32* @True, align 4
  %64 = call i32* @glXCreateContext(i32* %58, %struct.TYPE_9__* %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* null, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* @GL_TRUE, align 4
  store i32 %72, i32* %2, align 4
  br label %144

73:                                               ; preds = %55
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @RootWindow(i32* %79, i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AllocNone, align 4
  %92 = call i32 @XCreateColormap(i32* %76, i32 %85, i32 %90, i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @RootWindow(i32* %105, i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @InputOutput, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CWBorderPixel, align 4
  %124 = load i32, i32* @CWColormap, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @XCreateWindow(i32* %102, i32 %111, i32 0, i32 0, i32 1, i32 1, i32 0, i32 %116, i32 %117, i32 %122, i32 %125, %struct.TYPE_7__* %7)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @glXMakeCurrent(i32* %131, i32 %134, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %73
  %141 = load i32, i32* @GL_TRUE, align 4
  store i32 %141, i32* %2, align 4
  br label %144

142:                                              ; preds = %73
  %143 = load i32, i32* @GL_FALSE, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %140, %71, %53, %35, %27, %16
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32* @XOpenDisplay(i32) #1

declare dso_local i32 @glXQueryExtension(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @glXChooseVisual(i32*, i32, i32*) #1

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i32* @glXCreateContext(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @XCreateColormap(i32*, i32, i32, i32) #1

declare dso_local i32 @RootWindow(i32*, i32) #1

declare dso_local i32 @XCreateWindow(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @glXMakeCurrent(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
