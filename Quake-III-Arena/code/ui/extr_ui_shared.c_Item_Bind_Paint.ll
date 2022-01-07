; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Bind_Paint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Bind_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float (i64)*, i32, i32 (i64, i32, i32, float*, i8*, i32, i32, i32)* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, i64, i64, %struct.TYPE_10__, i64, i64 }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { float* }
%struct.TYPE_14__ = type { i32 }

@DC = common dso_local global %struct.TYPE_15__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@g_bindItem = common dso_local global %struct.TYPE_13__* null, align 8
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@g_nameBind1 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"FIXME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_Bind_Paint(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** @DC, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load float (i64)*, float (i64)** %30, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call float %31(i64 %34)
  br label %37

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %28
  %38 = phi float [ %35, %28 ], [ 0.000000e+00, %36 ]
  store float %38, float* %5, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %107

46:                                               ; preds = %37
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_bindItem, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = icmp eq %struct.TYPE_13__* %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load float*, float** %4, align 8
  %52 = getelementptr inbounds float, float* %51, i64 0
  store float 0x3FE99999A0000000, float* %52, align 4
  %53 = load float*, float** %4, align 8
  %54 = getelementptr inbounds float, float* %53, i64 1
  store float 0.000000e+00, float* %54, align 4
  %55 = load float*, float** %4, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  store float 0.000000e+00, float* %56, align 4
  %57 = load float*, float** %4, align 8
  %58 = getelementptr inbounds float, float* %57, i64 3
  store float 0x3FE99999A0000000, float* %58, align 4
  br label %92

59:                                               ; preds = %46
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  %64 = load float, float* %63, align 4
  %65 = fmul float 0x3FE99999A0000000, %64
  %66 = load float*, float** %4, align 8
  %67 = getelementptr inbounds float, float* %66, i64 0
  store float %65, float* %67, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load float*, float** %69, align 8
  %71 = getelementptr inbounds float, float* %70, i64 1
  %72 = load float, float* %71, align 4
  %73 = fmul float 0x3FE99999A0000000, %72
  %74 = load float*, float** %4, align 8
  %75 = getelementptr inbounds float, float* %74, i64 1
  store float %73, float* %75, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 2
  %80 = load float, float* %79, align 4
  %81 = fmul float 0x3FE99999A0000000, %80
  %82 = load float*, float** %4, align 8
  %83 = getelementptr inbounds float, float* %82, i64 2
  store float %81, float* %83, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds float, float* %86, i64 3
  %88 = load float, float* %87, align 4
  %89 = fmul float 0x3FE99999A0000000, %88
  %90 = load float*, float** %4, align 8
  %91 = getelementptr inbounds float, float* %90, i64 3
  store float %89, float* %91, align 4
  br label %92

92:                                               ; preds = %59, %50
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load float*, float** %94, align 8
  %96 = load float*, float** %4, align 8
  %97 = load float*, float** %3, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** @DC, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @PULSE_DIVISOR, align 4
  %102 = sdiv i32 %100, %101
  %103 = call double @sin(i32 %102)
  %104 = fmul double 5.000000e-01, %103
  %105 = fadd double 5.000000e-01, %104
  %106 = call i32 @LerpColor(float* %95, float* %96, float* %97, double %105)
  br label %112

107:                                              ; preds = %37
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = call i32 @memcpy(float** %3, i32* %110, i32 8)
  br label %112

112:                                              ; preds = %107, %92
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %151

117:                                              ; preds = %112
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %119 = call i32 @Item_Text_Paint(%struct.TYPE_13__* %118)
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @BindingFromName(i64 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** @DC, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i32 (i64, i32, i32, float*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, float*, i8*, i32, i32, i32)** %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %130, %134
  %136 = add nsw i64 %135, 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load float*, float** %3, align 8
  %145 = load i8*, i8** @g_nameBind1, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 %126(i64 %136, i32 %140, i32 %143, float* %144, i8* %145, i32 0, i32 %146, i32 %149)
  br label %176

151:                                              ; preds = %112
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** @DC, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load i32 (i64, i32, i32, float*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, float*, i8*, i32, i32, i32)** %153, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load float*, float** %3, align 8
  %167 = load float, float* %5, align 4
  %168 = fcmp une float %167, 0.000000e+00
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 %154(i64 %158, i32 %162, i32 %165, float* %166, i8* %170, i32 0, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %151, %117
  ret void
}

declare dso_local i32 @LerpColor(float*, float*, float*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @memcpy(float**, i32*, i32) #1

declare dso_local i32 @Item_Text_Paint(%struct.TYPE_13__*) #1

declare dso_local i32 @BindingFromName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
