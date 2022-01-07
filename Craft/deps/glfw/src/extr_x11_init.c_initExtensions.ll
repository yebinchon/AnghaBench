; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_init.c_initExtensions.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_init.c_initExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_16__, %struct.TYPE_14__, i32, %struct.TYPE_13__, i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i32, i8*, i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32 }

@_glfw = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"WM_PROTOCOLS\00", align 1
@False = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"WM_STATE\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"WM_DELETE_WINDOW\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"_MOTIF_WM_HINTS\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"X11: Failed to query RandR version\00", align 1
@GL_FALSE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"X11: RandR gamma ramp support seems broken\00", align 1
@GL_TRUE = common dso_local global i8* null, align 8
@True = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"UTF8_STRING\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"COMPOUND_STRING\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ATOM_PAIR\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"GLFW_SELECTION\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"TARGETS\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"MULTIPLE\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"CLIPBOARD\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"CLIPBOARD_MANAGER\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"SAVE_TARGETS\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"XdndAware\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"XdndEnter\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"XdndPosition\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"XdndStatus\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"XdndActionCopy\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"XdndDrop\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"XdndLeave\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"XdndFinished\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"XdndSelection\00", align 1
@BadRequest = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @initExtensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @initExtensions() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %5 = load i32, i32* @False, align 4
  %6 = call i8* @XInternAtom(i32 %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 29), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %8 = load i32, i32* @False, align 4
  %9 = call i8* @XInternAtom(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 28), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %11 = load i32, i32* @False, align 4
  %12 = call i8* @XInternAtom(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 27), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %14 = load i32, i32* @False, align 4
  %15 = call i8* @XInternAtom(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 26), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %17 = call i8* @XRRQueryExtension(i32 %16, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 5), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 4))
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 3), align 8
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 3), align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %0
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %22 = call i32 @XRRQueryVersion(i32 %21, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 0), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 1))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %26 = call i32 @_glfwInputError(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i8*, i8** @GL_FALSE, align 8
  store i8* %27, i8** %1, align 8
  br label %149

28:                                               ; preds = %20
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 0), align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 1), align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i8*, i8** @GL_FALSE, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 3), align 8
  br label %36

36:                                               ; preds = %34, %31, %28
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 24), align 8
  %39 = call %struct.TYPE_17__* @XRRGetScreenResources(i32 %37, i32 %38)
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %2, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @XRRGetCrtcGammaSize(i32 %45, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %44, %36
  %54 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %55 = call i32 @_glfwInputError(i32 %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i8*, i8** @GL_TRUE, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 23, i32 2), align 8
  br label %57

57:                                               ; preds = %53, %44
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %59 = call i32 @XRRFreeScreenResources(%struct.TYPE_17__* %58)
  br label %60

60:                                               ; preds = %57, %0
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %62 = call i64 @XineramaQueryExtension(i32 %61, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 22, i32 2), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 22, i32 1))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %66 = call i64 @XineramaIsActive(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i8*, i8** @GL_TRUE, align 8
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 22, i32 0), align 8
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %60
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 3), align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %73 = call i64 @XkbQueryExtension(i32 %72, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 6), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 5), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 4), i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 0), i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 3))
  store i64 %73, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 2), align 8
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 2), align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %78 = load i32, i32* @True, align 4
  %79 = call i64 @XkbSetDetectableAutoRepeat(i32 %77, i32 %78, i64* %3)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i64, i64* %3, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i8*, i8** @GL_TRUE, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 20, i32 1), align 8
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %86, %76
  br label %88

88:                                               ; preds = %87, %71
  %89 = call i32 (...) @createKeyTables()
  %90 = call i32 (...) @detectEWMH()
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %92 = load i32, i32* @False, align 4
  %93 = call i8* @XInternAtom(i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 19), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %95 = load i32, i32* @False, align 4
  %96 = call i8* @XInternAtom(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 18), align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %98 = load i32, i32* @False, align 4
  %99 = call i8* @XInternAtom(i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 17), align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %101 = load i32, i32* @False, align 4
  %102 = call i8* @XInternAtom(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 16), align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %104 = load i32, i32* @False, align 4
  %105 = call i8* @XInternAtom(i32 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %104)
  store i8* %105, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 15), align 8
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %107 = load i32, i32* @False, align 4
  %108 = call i8* @XInternAtom(i32 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %107)
  store i8* %108, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 14), align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %110 = load i32, i32* @False, align 4
  %111 = call i8* @XInternAtom(i32 %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %110)
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 13), align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %113 = load i32, i32* @False, align 4
  %114 = call i8* @XInternAtom(i32 %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %113)
  store i8* %114, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 12), align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %116 = load i32, i32* @False, align 4
  %117 = call i8* @XInternAtom(i32 %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %116)
  store i8* %117, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 11), align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %119 = load i32, i32* @False, align 4
  %120 = call i8* @XInternAtom(i32 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %119)
  store i8* %120, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 10), align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %122 = load i32, i32* @True, align 4
  %123 = call i8* @XInternAtom(i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %122)
  store i8* %123, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 9), align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %125 = load i32, i32* @True, align 4
  %126 = call i8* @XInternAtom(i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %125)
  store i8* %126, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 8), align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %128 = load i32, i32* @True, align 4
  %129 = call i8* @XInternAtom(i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %128)
  store i8* %129, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 7), align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %131 = load i32, i32* @True, align 4
  %132 = call i8* @XInternAtom(i32 %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %131)
  store i8* %132, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 6), align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %134 = load i32, i32* @True, align 4
  %135 = call i8* @XInternAtom(i32 %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %134)
  store i8* %135, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5), align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %137 = load i32, i32* @True, align 4
  %138 = call i8* @XInternAtom(i32 %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %137)
  store i8* %138, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4), align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %140 = load i32, i32* @True, align 4
  %141 = call i8* @XInternAtom(i32 %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i32 %140)
  store i8* %141, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3), align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %143 = load i32, i32* @True, align 4
  %144 = call i8* @XInternAtom(i32 %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %143)
  store i8* %144, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2), align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %146 = load i32, i32* @True, align 4
  %147 = call i8* @XInternAtom(i32 %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %146)
  store i8* %147, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1), align 8
  %148 = load i8*, i8** @GL_TRUE, align 8
  store i8* %148, i8** %1, align 8
  br label %149

149:                                              ; preds = %88, %24
  %150 = load i8*, i8** %1, align 8
  ret i8* %150
}

declare dso_local i8* @XInternAtom(i32, i8*, i32) #1

declare dso_local i8* @XRRQueryExtension(i32, i32*, i32*) #1

declare dso_local i32 @XRRQueryVersion(i32, i32*, i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.TYPE_17__* @XRRGetScreenResources(i32, i32) #1

declare dso_local i32 @XRRGetCrtcGammaSize(i32, i32) #1

declare dso_local i32 @XRRFreeScreenResources(%struct.TYPE_17__*) #1

declare dso_local i64 @XineramaQueryExtension(i32, i32*, i32*) #1

declare dso_local i64 @XineramaIsActive(i32) #1

declare dso_local i64 @XkbQueryExtension(i32, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @XkbSetDetectableAutoRepeat(i32, i32, i64*) #1

declare dso_local i32 @createKeyTables(...) #1

declare dso_local i32 @detectEWMH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
