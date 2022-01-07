; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_init.c_detectEWMH.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_init.c_detectEWMH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"_NET_SUPPORTING_WM_CHECK\00", align 1
@False = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"_NET_SUPPORTED\00", align 1
@XA_WINDOW = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"_NET_WM_STATE\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"_NET_WM_STATE_ABOVE\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"_NET_WM_STATE_FULLSCREEN\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"_NET_WM_STATE_MAXIMIZED_VERT\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"_NET_WM_STATE_MAXIMIZED_HORZ\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"_NET_WM_FULLSCREEN_MONITORS\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"_NET_WM_WINDOW_TYPE\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"_NET_WM_WINDOW_TYPE_NORMAL\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"_NET_ACTIVE_WINDOW\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"_NET_FRAME_EXTENTS\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"_NET_REQUEST_FRAME_EXTENTS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @detectEWMH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detectEWMH() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64* null, i64** %1, align 8
  store i64* null, i64** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 12), align 8
  %8 = load i32, i32* @False, align 4
  %9 = call i64 @XInternAtom(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 12), align 8
  %11 = load i32, i32* @False, align 4
  %12 = call i64 @XInternAtom(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @XA_WINDOW, align 4
  %16 = bitcast i64** %1 to i8**
  %17 = call i32 @_glfwGetWindowPropertyX11(i64 %13, i64 %14, i32 %15, i8** %16)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %0
  %20 = load i64*, i64** %1, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64*, i64** %1, align 8
  %24 = call i32 @XFree(i64* %23)
  br label %25

25:                                               ; preds = %22, %19
  br label %102

26:                                               ; preds = %0
  %27 = call i32 (...) @_glfwGrabErrorHandlerX11()
  %28 = load i64*, i64** %1, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* @XA_WINDOW, align 4
  %32 = bitcast i64** %2 to i8**
  %33 = call i32 @_glfwGetWindowPropertyX11(i64 %29, i64 %30, i32 %31, i8** %32)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load i64*, i64** %1, align 8
  %37 = call i32 @XFree(i64* %36)
  %38 = load i64*, i64** %2, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64*, i64** %2, align 8
  %42 = call i32 @XFree(i64* %41)
  br label %43

43:                                               ; preds = %40, %35
  br label %102

44:                                               ; preds = %26
  %45 = call i32 (...) @_glfwReleaseErrorHandlerX11()
  %46 = load i64*, i64** %1, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %2, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i64*, i64** %1, align 8
  %53 = call i32 @XFree(i64* %52)
  %54 = load i64*, i64** %2, align 8
  %55 = call i32 @XFree(i64* %54)
  br label %102

56:                                               ; preds = %44
  %57 = load i64*, i64** %1, align 8
  %58 = call i32 @XFree(i64* %57)
  %59 = load i64*, i64** %2, align 8
  %60 = call i32 @XFree(i64* %59)
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i32, i32* @XA_ATOM, align 4
  %64 = bitcast i64** %5 to i8**
  %65 = call i32 @_glfwGetWindowPropertyX11(i64 %61, i64 %62, i32 %63, i8** %64)
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %6, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i8* @getSupportedAtom(i64* %67, i64 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 11), align 8
  %70 = load i64*, i64** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i8* @getSupportedAtom(i64* %70, i64 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 10), align 8
  %73 = load i64*, i64** %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i8* @getSupportedAtom(i64* %73, i64 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 9), align 8
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i8* @getSupportedAtom(i64* %76, i64 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 8), align 8
  %79 = load i64*, i64** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i8* @getSupportedAtom(i64* %79, i64 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i8* @getSupportedAtom(i64* %82, i64 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %85 = load i64*, i64** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i8* @getSupportedAtom(i64* %85, i64 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i8* %87, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 8
  %88 = load i64*, i64** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i8* @getSupportedAtom(i64* %88, i64 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %91 = load i64*, i64** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i8* @getSupportedAtom(i64* %91, i64 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %94 = load i64*, i64** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i8* @getSupportedAtom(i64* %94, i64 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %97 = load i64*, i64** %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i8* @getSupportedAtom(i64* %97, i64 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %100 = load i64*, i64** %5, align 8
  %101 = call i32 @XFree(i64* %100)
  br label %102

102:                                              ; preds = %56, %51, %43, %25
  ret void
}

declare dso_local i64 @XInternAtom(i32, i8*, i32) #1

declare dso_local i32 @_glfwGetWindowPropertyX11(i64, i64, i32, i8**) #1

declare dso_local i32 @XFree(i64*) #1

declare dso_local i32 @_glfwGrabErrorHandlerX11(...) #1

declare dso_local i32 @_glfwReleaseErrorHandlerX11(...) #1

declare dso_local i8* @getSupportedAtom(i64*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
