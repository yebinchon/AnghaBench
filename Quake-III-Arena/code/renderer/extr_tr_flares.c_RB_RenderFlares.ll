; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_flares.c_RB_RenderFlares.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_flares.c_RB_RenderFlares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i64, i64 }

@r_flares = common dso_local global %struct.TYPE_10__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@r_activeFlares = common dso_local global %struct.TYPE_9__* null, align 8
@backEnd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@r_inactiveFlares = common dso_local global i8* null, align 8
@qtrue = common dso_local global i32 0, align 4
@GL_CLIP_PLANE0 = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_RenderFlares() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__**, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_flares, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %131

9:                                                ; preds = %0
  %10 = load i32, i32* @qfalse, align 4
  store i32 %10, i32* %3, align 4
  store %struct.TYPE_9__** @r_activeFlares, %struct.TYPE_9__*** %2, align 8
  br label %11

11:                                               ; preds = %68, %56, %22, %9
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %1, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %71

15:                                               ; preds = %11
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 0), align 8
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %26, align 8
  %27 = load i8*, i8** @r_inactiveFlares, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_9__*
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %32 = bitcast %struct.TYPE_9__* %31 to i8*
  store i8* %32, i8** @r_inactiveFlares, align 8
  br label %11

33:                                               ; preds = %15
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 1), align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %33
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 2), align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %49 = call i32 @RB_TestFlare(%struct.TYPE_9__* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @qtrue, align 4
  store i32 %55, i32* %3, align 4
  br label %67

56:                                               ; preds = %47
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %60, align 8
  %61 = load i8*, i8** @r_inactiveFlares, align 8
  %62 = bitcast i8* %61 to %struct.TYPE_9__*
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %66 = bitcast %struct.TYPE_9__* %65 to i8*
  store i8* %66, i8** @r_inactiveFlares, align 8
  br label %11

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %41, %33
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  store %struct.TYPE_9__** %70, %struct.TYPE_9__*** %2, align 8
  br label %11

71:                                               ; preds = %11
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %131

75:                                               ; preds = %71
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 2), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @GL_CLIP_PLANE0, align 4
  %80 = call i32 @qglDisable(i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = call i32 (...) @qglPushMatrix()
  %83 = call i32 (...) @qglLoadIdentity()
  %84 = load i32, i32* @GL_PROJECTION, align 4
  %85 = call i32 @qglMatrixMode(i32 %84)
  %86 = call i32 (...) @qglPushMatrix()
  %87 = call i32 (...) @qglLoadIdentity()
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 6), align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 6), align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 5), align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 4), align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 4), align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 3), align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @qglOrtho(i64 %88, i64 %91, i64 %92, i64 %95, i32 -99999, i32 99999)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_activeFlares, align 8
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %1, align 8
  br label %98

98:                                               ; preds = %122, %81
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %100 = icmp ne %struct.TYPE_9__* %99, null
  br i1 %100, label %101, label %126

101:                                              ; preds = %98
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 1), align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 2), align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %120 = call i32 @RB_RenderFlare(%struct.TYPE_9__* %119)
  br label %121

121:                                              ; preds = %118, %113, %107, %101
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %1, align 8
  br label %98

126:                                              ; preds = %98
  %127 = call i32 (...) @qglPopMatrix()
  %128 = load i32, i32* @GL_MODELVIEW, align 4
  %129 = call i32 @qglMatrixMode(i32 %128)
  %130 = call i32 (...) @qglPopMatrix()
  br label %131

131:                                              ; preds = %126, %74, %8
  ret void
}

declare dso_local i32 @RB_TestFlare(%struct.TYPE_9__*) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglPushMatrix(...) #1

declare dso_local i32 @qglLoadIdentity(...) #1

declare dso_local i32 @qglMatrixMode(i32) #1

declare dso_local i32 @qglOrtho(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @RB_RenderFlare(%struct.TYPE_9__*) #1

declare dso_local i32 @qglPopMatrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
