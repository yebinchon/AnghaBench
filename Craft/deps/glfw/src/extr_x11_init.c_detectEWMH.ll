; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_init.c_detectEWMH.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_init.c_detectEWMH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"_NET_SUPPORTING_WM_CHECK\00", align 1
@True = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"_NET_SUPPORTED\00", align 1
@None = common dso_local global i64 0, align 8
@XA_WINDOW = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"_NET_WM_STATE\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"_NET_WM_STATE_ABOVE\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"_NET_WM_STATE_FULLSCREEN\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"_NET_WM_FULLSCREEN_MONITORS\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"_NET_WM_NAME\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"_NET_WM_ICON_NAME\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"_NET_WM_PID\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"_NET_WM_PING\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"_NET_ACTIVE_WINDOW\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"_NET_FRAME_EXTENTS\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"_NET_REQUEST_FRAME_EXTENTS\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"_NET_WM_BYPASS_COMPOSITOR\00", align 1
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
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 13), align 8
  %8 = load i32, i32* @True, align 4
  %9 = call i64 @XInternAtom(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 13), align 8
  %11 = load i32, i32* @True, align 4
  %12 = call i64 @XInternAtom(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @None, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @None, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %0
  br label %114

21:                                               ; preds = %16
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* @XA_WINDOW, align 4
  %25 = bitcast i64** %1 to i8**
  %26 = call i32 @_glfwGetWindowProperty(i64 %22, i64 %23, i32 %24, i8** %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i64*, i64** %1, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64*, i64** %1, align 8
  %33 = call i32 @XFree(i64* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %114

35:                                               ; preds = %21
  %36 = call i32 (...) @_glfwGrabXErrorHandler()
  %37 = load i64*, i64** %1, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* @XA_WINDOW, align 4
  %41 = bitcast i64** %2 to i8**
  %42 = call i32 @_glfwGetWindowProperty(i64 %38, i64 %39, i32 %40, i8** %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i64*, i64** %1, align 8
  %46 = call i32 @XFree(i64* %45)
  %47 = load i64*, i64** %2, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64*, i64** %2, align 8
  %51 = call i32 @XFree(i64* %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %114

53:                                               ; preds = %35
  %54 = call i32 (...) @_glfwReleaseXErrorHandler()
  %55 = load i64*, i64** %1, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %2, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i64*, i64** %1, align 8
  %62 = call i32 @XFree(i64* %61)
  %63 = load i64*, i64** %2, align 8
  %64 = call i32 @XFree(i64* %63)
  br label %114

65:                                               ; preds = %53
  %66 = load i64*, i64** %1, align 8
  %67 = call i32 @XFree(i64* %66)
  %68 = load i64*, i64** %2, align 8
  %69 = call i32 @XFree(i64* %68)
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i32, i32* @XA_ATOM, align 4
  %73 = bitcast i64** %5 to i8**
  %74 = call i32 @_glfwGetWindowProperty(i64 %70, i64 %71, i32 %72, i8** %73)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %6, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i8* @getSupportedAtom(i64* %76, i64 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 12), align 8
  %79 = load i64*, i64** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i8* @getSupportedAtom(i64* %79, i64 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 11), align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i8* @getSupportedAtom(i64* %82, i64 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 10), align 8
  %85 = load i64*, i64** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i8* @getSupportedAtom(i64* %85, i64 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i8* %87, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 9), align 8
  %88 = load i64*, i64** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i8* @getSupportedAtom(i64* %88, i64 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 8), align 8
  %91 = load i64*, i64** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i8* @getSupportedAtom(i64* %91, i64 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %94 = load i64*, i64** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i8* @getSupportedAtom(i64* %94, i64 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %97 = load i64*, i64** %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i8* @getSupportedAtom(i64* %97, i64 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 8
  %100 = load i64*, i64** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i8* @getSupportedAtom(i64* %100, i64 %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %103 = load i64*, i64** %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i8* @getSupportedAtom(i64* %103, i64 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  store i8* %105, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %106 = load i64*, i64** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i8* @getSupportedAtom(i64* %106, i64 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  store i8* %108, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %109 = load i64*, i64** %5, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i8* @getSupportedAtom(i64* %109, i64 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %112 = load i64*, i64** %5, align 8
  %113 = call i32 @XFree(i64* %112)
  br label %114

114:                                              ; preds = %65, %60, %52, %34, %20
  ret void
}

declare dso_local i64 @XInternAtom(i32, i8*, i32) #1

declare dso_local i32 @_glfwGetWindowProperty(i64, i64, i32, i8**) #1

declare dso_local i32 @XFree(i64*) #1

declare dso_local i32 @_glfwGrabXErrorHandler(...) #1

declare dso_local i32 @_glfwReleaseXErrorHandler(...) #1

declare dso_local i8* @getSupportedAtom(i64*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
