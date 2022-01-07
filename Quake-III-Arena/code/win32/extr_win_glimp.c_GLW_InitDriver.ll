; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_InitDriver.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_InitDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64 }
%struct.TYPE_13__ = type { i32 (i32, i8*)* }
%struct.TYPE_18__ = type { i32, i32*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@GLW_InitDriver.pfd = internal global %struct.TYPE_12__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Initializing OpenGL driver\0A\00", align 1
@glw_state = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"...getting DC: \00", align 1
@g_wv = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"succeeded\0A\00", align 1
@r_depthbits = common dso_local global %struct.TYPE_16__* null, align 8
@r_stencilbits = common dso_local global %struct.TYPE_15__* null, align 8
@r_stereo = common dso_local global %struct.TYPE_14__* null, align 8
@TRY_PFD_SUCCESS = common dso_local global i32 0, align 4
@TRY_PFD_FAIL_HARD = common dso_local global i32 0, align 4
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"...failed hard\0A\00", align 1
@r_colorbits = common dso_local global %struct.TYPE_17__* null, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"...failed to find an appropriate PIXELFORMAT\0A\00", align 1
@PFD_STEREO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"...failed to select stereo pixel format\0A\00", align 1
@glConfig = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @GLW_InitDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GLW_InitDriver(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %10 = load i32, i32* @PRINT_ALL, align 4
  %11 = call i32 %9(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 1), align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %16 = load i32, i32* @PRINT_ALL, align 4
  %17 = call i32 %15(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_wv, i32 0, i32 0), align 4
  %19 = call i32* @GetDC(i32 %18)
  store i32* %19, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 1), align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %23 = load i32, i32* @PRINT_ALL, align 4
  %24 = call i32 %22(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %3, align 4
  br label %150

26:                                               ; preds = %14
  %27 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %28 = load i32, i32* @PRINT_ALL, align 4
  %29 = call i32 %27(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 0), align 8
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_depthbits, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 16
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 24, i32* %7, align 4
  br label %45

44:                                               ; preds = %40
  store i32 16, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %43
  br label %50

46:                                               ; preds = %35
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_depthbits, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_stencilbits, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 24
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 2), align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %142, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_stereo, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @GLW_CreatePFD(%struct.TYPE_12__* @GLW_InitDriver.pfd, i32 %61, i32 %62, i32 %63, i64 %66)
  %68 = call i32 @GLW_MakeContext(%struct.TYPE_12__* @GLW_InitDriver.pfd)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @TRY_PFD_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %126

71:                                               ; preds = %60
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @TRY_PFD_FAIL_HARD, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %77 = load i32, i32* @PRINT_WARNING, align 4
  %78 = call i32 %76(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @qfalse, align 4
  store i32 %79, i32* %3, align 4
  br label %150

80:                                               ; preds = %71
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_colorbits, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 0), align 8
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_wv, i32 0, i32 0), align 4
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 1), align 8
  %92 = call i32 @ReleaseDC(i32 %90, i32* %91)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 1), align 8
  %93 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %94 = load i32, i32* @PRINT_ALL, align 4
  %95 = call i32 %93(i32 %94, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @qfalse, align 4
  store i32 %96, i32* %3, align 4
  br label %150

97:                                               ; preds = %86, %80
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 0), align 8
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 0), align 8
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %97
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_stereo, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @GLW_CreatePFD(%struct.TYPE_12__* @GLW_InitDriver.pfd, i32 %104, i32 %105, i32 0, i64 %108)
  %110 = call i32 @GLW_MakeContext(%struct.TYPE_12__* @GLW_InitDriver.pfd)
  %111 = load i32, i32* @TRY_PFD_SUCCESS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %103
  %114 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 1), align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_wv, i32 0, i32 0), align 4
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 1), align 8
  %119 = call i32 @ReleaseDC(i32 %117, i32* %118)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glw_state, i32 0, i32 1), align 8
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %122 = load i32, i32* @PRINT_ALL, align 4
  %123 = call i32 %121(i32 %122, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @qfalse, align 4
  store i32 %124, i32* %3, align 4
  br label %150

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %125, %60
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @GLW_InitDriver.pfd, i32 0, i32 0), align 8
  %128 = load i32, i32* @PFD_STEREO, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_stereo, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %138 = load i32, i32* @PRINT_ALL, align 4
  %139 = call i32 %137(i32 %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %140 = load i32, i32* @qfalse, align 4
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 3), align 4
  br label %141

141:                                              ; preds = %136, %131, %126
  br label %142

142:                                              ; preds = %141, %57
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @GLW_InitDriver.pfd, i32 0, i32 3), align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 0), align 4
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @GLW_InitDriver.pfd, i32 0, i32 2), align 8
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 1), align 4
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @GLW_InitDriver.pfd, i32 0, i32 1), align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @glConfig, i32 0, i32 2), align 4
  %149 = load i32, i32* @qtrue, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %142, %120, %89, %75, %21
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @GLW_CreatePFD(%struct.TYPE_12__*, i32, i32, i32, i64) #1

declare dso_local i32 @GLW_MakeContext(%struct.TYPE_12__*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
