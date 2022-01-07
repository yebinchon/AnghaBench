; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_glewinfo.c_glewCreateContext.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_glewinfo.c_glewCreateContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@GLX_RGBA = common dso_local global i32 0, align 4
@GLX_DOUBLEBUFFER = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@dpy = common dso_local global i32* null, align 8
@GL_TRUE = common dso_local global i32 0, align 4
@vi = common dso_local global %struct.TYPE_9__* null, align 8
@vis = common dso_local global %struct.TYPE_9__* null, align 8
@True = common dso_local global i32 0, align 4
@ctx = common dso_local global i32* null, align 8
@AllocNone = common dso_local global i32 0, align 4
@cmap = common dso_local global i32 0, align 4
@InputOutput = common dso_local global i32 0, align 4
@CWBorderPixel = common dso_local global i32 0, align 4
@CWColormap = common dso_local global i32 0, align 4
@wnd = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glewCreateContext(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @GLX_RGBA, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @GLX_DOUBLEBUFFER, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @None, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @XOpenDisplay(i8* %18)
  store i32* %19, i32** @dpy, align 8
  %20 = load i32*, i32** @dpy, align 8
  %21 = icmp eq i32* null, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @GL_TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %136

24:                                               ; preds = %2
  %25 = load i32*, i32** @dpy, align 8
  %26 = call i32 @glXQueryExtension(i32* %25, i32* %7, i32* %8)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @GL_TRUE, align 4
  store i32 %29, i32* %3, align 4
  br label %136

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i32*, i32** @dpy, align 8
  %36 = load i32*, i32** @dpy, align 8
  %37 = call i32 @DefaultScreen(i32* %36)
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %39 = call %struct.TYPE_9__* @glXChooseVisual(i32* %35, i32 %37, i32* %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** @vi, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vi, align 8
  %41 = icmp eq %struct.TYPE_9__* null, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @GL_TRUE, align 4
  store i32 %43, i32* %3, align 4
  br label %136

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vi, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @XVisualIDFromVisual(i32 %47)
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %85

51:                                               ; preds = %30
  %52 = load i32*, i32** @dpy, align 8
  %53 = call %struct.TYPE_9__* @XGetVisualInfo(i32* %52, i32 0, i32* null, i32* %10)
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** @vis, align 8
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %76, %51
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vis, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @XVisualIDFromVisual(i32 %64)
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vis, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** @vi, align 8
  br label %75

75:                                               ; preds = %70, %58
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %54

79:                                               ; preds = %54
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vi, align 8
  %81 = icmp eq %struct.TYPE_9__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @GL_TRUE, align 4
  store i32 %83, i32* %3, align 4
  br label %136

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %44
  %86 = load i32*, i32** @dpy, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vi, align 8
  %88 = load i32, i32* @None, align 4
  %89 = load i32, i32* @True, align 4
  %90 = call i32* @glXCreateContext(i32* %86, %struct.TYPE_9__* %87, i32 %88, i32 %89)
  store i32* %90, i32** @ctx, align 8
  %91 = load i32*, i32** @ctx, align 8
  %92 = icmp eq i32* null, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @GL_TRUE, align 4
  store i32 %94, i32* %3, align 4
  br label %136

95:                                               ; preds = %85
  %96 = load i32*, i32** @dpy, align 8
  %97 = load i32*, i32** @dpy, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vi, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @RootWindow(i32* %97, i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vi, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AllocNone, align 4
  %106 = call i32 @XCreateColormap(i32* %96, i32 %101, i32 %104, i32 %105)
  store i32 %106, i32* @cmap, align 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @cmap, align 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %108, i32* %109, align 8
  %110 = load i32*, i32** @dpy, align 8
  %111 = load i32*, i32** @dpy, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vi, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @RootWindow(i32* %111, i32 %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vi, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @InputOutput, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vi, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CWBorderPixel, align 4
  %124 = load i32, i32* @CWColormap, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @XCreateWindow(i32* %110, i32 %115, i32 0, i32 0, i32 1, i32 1, i32 0, i32 %118, i32 %119, i32 %122, i32 %125, %struct.TYPE_8__* %9)
  store i32 %126, i32* @wnd, align 4
  %127 = load i32*, i32** @dpy, align 8
  %128 = load i32, i32* @wnd, align 4
  %129 = load i32*, i32** @ctx, align 8
  %130 = call i32 @glXMakeCurrent(i32* %127, i32 %128, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %95
  %133 = load i32, i32* @GL_TRUE, align 4
  store i32 %133, i32* %3, align 4
  br label %136

134:                                              ; preds = %95
  %135 = load i32, i32* @GL_FALSE, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %132, %93, %82, %42, %28, %22
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32* @XOpenDisplay(i8*) #1

declare dso_local i32 @glXQueryExtension(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @glXChooseVisual(i32*, i32, i32*) #1

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i64 @XVisualIDFromVisual(i32) #1

declare dso_local %struct.TYPE_9__* @XGetVisualInfo(i32*, i32, i32*, i32*) #1

declare dso_local i32* @glXCreateContext(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @XCreateColormap(i32*, i32, i32, i32) #1

declare dso_local i32 @RootWindow(i32*, i32) #1

declare dso_local i32 @XCreateWindow(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @glXMakeCurrent(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
