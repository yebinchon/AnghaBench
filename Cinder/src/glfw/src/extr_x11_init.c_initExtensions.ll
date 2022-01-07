; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_init.c_initExtensions.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_init.c_initExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_11__, %struct.TYPE_16__, %struct.TYPE_14__, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, i8*, i64, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32 }

@_glfw = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i8* null, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"X11: Failed to query RandR version\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"X11: RandR gamma ramp support seems broken\00", align 1
@RROutputChangeNotifyMask = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"libX11-xcb.so\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@RTLD_GLOBAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"XGetXCBConnection\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@False = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"UTF8_STRING\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"COMPOUND_STRING\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ATOM_PAIR\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"GLFW_SELECTION\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"TARGETS\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"MULTIPLE\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"CLIPBOARD\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"CLIPBOARD_MANAGER\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"SAVE_TARGETS\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"XdndAware\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"XdndEnter\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"XdndPosition\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"XdndStatus\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"XdndActionCopy\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"XdndDrop\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"XdndLeave\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"XdndFinished\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"XdndSelection\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"WM_PROTOCOLS\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"WM_STATE\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"WM_DELETE_WINDOW\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"_NET_WM_ICON\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"_NET_WM_PING\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"_NET_WM_PID\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"_NET_WM_NAME\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"_NET_WM_ICON_NAME\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"_NET_WM_BYPASS_COMPOSITOR\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"_MOTIF_WM_HINTS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @initExtensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @initExtensions() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %4 = call i64 @XRRQueryExtension(i32 %3, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 34, i32 5), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 34, i32 4))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %8 = call i64 @XRRQueryVersion(i32 %7, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 34, i32 0), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 34, i32 1))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 34, i32 0), align 8
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 34, i32 1), align 4
  %15 = icmp sge i32 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %10
  %17 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 34, i32 3), align 8
  br label %18

18:                                               ; preds = %16, %13
  br label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %21 = call i32 @_glfwInputError(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %18
  br label %23

23:                                               ; preds = %22, %0
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 34, i32 3), align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 33), align 8
  %29 = call %struct.TYPE_17__* @XRRGetScreenResources(i32 %27, i32 %28)
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %1, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @XRRGetCrtcGammaSize(i32 %35, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %34, %26
  %44 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %45 = call i32 @_glfwInputError(i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 34, i32 2), align 8
  br label %47

47:                                               ; preds = %43, %34
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %49 = call i32 @XRRFreeScreenResources(%struct.TYPE_17__* %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 33), align 8
  %52 = load i32, i32* @RROutputChangeNotifyMask, align 4
  %53 = call i32 @XRRSelectInput(i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %23
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %56 = call i64 @XineramaQueryExtension(i32 %55, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 32, i32 2), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 32, i32 1))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %60 = call i64 @XineramaIsActive(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 32, i32 0), align 8
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %54
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 3), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %67 = call i64 @XkbQueryExtension(i32 %66, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 6), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 5), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 4), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 0), i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 3))
  store i64 %67, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 2), align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 2), align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %72 = load i32, i32* @True, align 4
  %73 = call i64 @XkbSetDetectableAutoRepeat(i32 %71, i32 %72, i64* %2)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i64, i64* %2, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 31, i32 1), align 8
  br label %80

80:                                               ; preds = %78, %75
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %81, %65
  %83 = load i32, i32* @RTLD_LAZY, align 4
  %84 = load i32, i32* @RTLD_GLOBAL, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @dlopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 30, i32 0), align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 30, i32 0), align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 30, i32 0), align 8
  %91 = call i64 @dlsym(i64 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i64 %91, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 30, i32 1), align 8
  br label %92

92:                                               ; preds = %89, %82
  %93 = call i32 (...) @createKeyTables()
  %94 = call i32 (...) @detectEWMH()
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %96 = load i32, i32* @False, align 4
  %97 = call i8* @XInternAtom(i32 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 29), align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %99 = load i32, i32* @False, align 4
  %100 = call i8* @XInternAtom(i32 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  store i8* %100, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 28), align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %102 = load i32, i32* @False, align 4
  %103 = call i8* @XInternAtom(i32 %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  store i8* %103, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 27), align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %105 = load i32, i32* @False, align 4
  %106 = call i8* @XInternAtom(i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  store i8* %106, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 26), align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %108 = load i32, i32* @False, align 4
  %109 = call i8* @XInternAtom(i32 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  store i8* %109, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 25), align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %111 = load i32, i32* @False, align 4
  %112 = call i8* @XInternAtom(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  store i8* %112, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 24), align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %114 = load i32, i32* @False, align 4
  %115 = call i8* @XInternAtom(i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %114)
  store i8* %115, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23), align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %117 = load i32, i32* @False, align 4
  %118 = call i8* @XInternAtom(i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %117)
  store i8* %118, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 22), align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %120 = load i32, i32* @False, align 4
  %121 = call i8* @XInternAtom(i32 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %120)
  store i8* %121, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 21), align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %123 = load i32, i32* @False, align 4
  %124 = call i8* @XInternAtom(i32 %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %123)
  store i8* %124, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20), align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %126 = load i32, i32* @False, align 4
  %127 = call i8* @XInternAtom(i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %126)
  store i8* %127, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 19), align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %129 = load i32, i32* @False, align 4
  %130 = call i8* @XInternAtom(i32 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %129)
  store i8* %130, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 18), align 8
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %132 = load i32, i32* @False, align 4
  %133 = call i8* @XInternAtom(i32 %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %132)
  store i8* %133, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 17), align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %135 = load i32, i32* @False, align 4
  %136 = call i8* @XInternAtom(i32 %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %135)
  store i8* %136, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 16), align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %138 = load i32, i32* @False, align 4
  %139 = call i8* @XInternAtom(i32 %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %138)
  store i8* %139, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 15), align 8
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %141 = load i32, i32* @False, align 4
  %142 = call i8* @XInternAtom(i32 %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %141)
  store i8* %142, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 14), align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %144 = load i32, i32* @False, align 4
  %145 = call i8* @XInternAtom(i32 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %144)
  store i8* %145, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 13), align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %147 = load i32, i32* @False, align 4
  %148 = call i8* @XInternAtom(i32 %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %147)
  store i8* %148, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 12), align 8
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %150 = load i32, i32* @False, align 4
  %151 = call i8* @XInternAtom(i32 %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %150)
  store i8* %151, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 11), align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %153 = load i32, i32* @False, align 4
  %154 = call i8* @XInternAtom(i32 %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %153)
  store i8* %154, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 10), align 8
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %156 = load i32, i32* @False, align 4
  %157 = call i8* @XInternAtom(i32 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 %156)
  store i8* %157, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 9), align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %159 = load i32, i32* @False, align 4
  %160 = call i8* @XInternAtom(i32 %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 %159)
  store i8* %160, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 8), align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %162 = load i32, i32* @False, align 4
  %163 = call i8* @XInternAtom(i32 %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %162)
  store i8* %163, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 7), align 8
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %165 = load i32, i32* @False, align 4
  %166 = call i8* @XInternAtom(i32 %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32 %165)
  store i8* %166, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 6), align 8
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %168 = load i32, i32* @False, align 4
  %169 = call i8* @XInternAtom(i32 %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %168)
  store i8* %169, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5), align 8
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %171 = load i32, i32* @False, align 4
  %172 = call i8* @XInternAtom(i32 %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %171)
  store i8* %172, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4), align 8
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %174 = load i32, i32* @False, align 4
  %175 = call i8* @XInternAtom(i32 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 %174)
  store i8* %175, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3), align 8
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %177 = load i32, i32* @False, align 4
  %178 = call i8* @XInternAtom(i32 %176, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), i32 %177)
  store i8* %178, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2), align 8
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %180 = load i32, i32* @False, align 4
  %181 = call i8* @XInternAtom(i32 %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i32 %180)
  store i8* %181, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1), align 8
  %182 = load i8*, i8** @GLFW_TRUE, align 8
  ret i8* %182
}

declare dso_local i64 @XRRQueryExtension(i32, i32*, i32*) #1

declare dso_local i64 @XRRQueryVersion(i32, i32*, i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.TYPE_17__* @XRRGetScreenResources(i32, i32) #1

declare dso_local i32 @XRRGetCrtcGammaSize(i32, i32) #1

declare dso_local i32 @XRRFreeScreenResources(%struct.TYPE_17__*) #1

declare dso_local i32 @XRRSelectInput(i32, i32, i32) #1

declare dso_local i64 @XineramaQueryExtension(i32, i32*, i32*) #1

declare dso_local i64 @XineramaIsActive(i32) #1

declare dso_local i64 @XkbQueryExtension(i32, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @XkbSetDetectableAutoRepeat(i32, i32, i64*) #1

declare dso_local i64 @dlopen(i8*, i32) #1

declare dso_local i64 @dlsym(i64, i8*) #1

declare dso_local i32 @createKeyTables(...) #1

declare dso_local i32 @detectEWMH(...) #1

declare dso_local i8* @XInternAtom(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
