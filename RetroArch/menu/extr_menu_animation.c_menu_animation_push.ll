; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i64*, i64, i32, i32, i32, i32 }
%struct.tween = type { i64, i64, i64, i64*, i32, i32*, i32, i32, i32, i64 }

@easing_linear = common dso_local global i32 0, align 4
@easing_in_quad = common dso_local global i32 0, align 4
@easing_out_quad = common dso_local global i32 0, align 4
@easing_in_out_quad = common dso_local global i32 0, align 4
@easing_out_in_quad = common dso_local global i32 0, align 4
@easing_in_cubic = common dso_local global i32 0, align 4
@easing_out_cubic = common dso_local global i32 0, align 4
@easing_in_out_cubic = common dso_local global i32 0, align 4
@easing_out_in_cubic = common dso_local global i32 0, align 4
@easing_in_quart = common dso_local global i32 0, align 4
@easing_out_quart = common dso_local global i32 0, align 4
@easing_in_out_quart = common dso_local global i32 0, align 4
@easing_out_in_quart = common dso_local global i32 0, align 4
@easing_in_quint = common dso_local global i32 0, align 4
@easing_out_quint = common dso_local global i32 0, align 4
@easing_in_out_quint = common dso_local global i32 0, align 4
@easing_out_in_quint = common dso_local global i32 0, align 4
@easing_in_sine = common dso_local global i32 0, align 4
@easing_out_sine = common dso_local global i32 0, align 4
@easing_in_out_sine = common dso_local global i32 0, align 4
@easing_out_in_sine = common dso_local global i32 0, align 4
@easing_in_expo = common dso_local global i32 0, align 4
@easing_out_expo = common dso_local global i32 0, align 4
@easing_in_out_expo = common dso_local global i32 0, align 4
@easing_out_in_expo = common dso_local global i32 0, align 4
@easing_in_circ = common dso_local global i32 0, align 4
@easing_out_circ = common dso_local global i32 0, align 4
@easing_in_out_circ = common dso_local global i32 0, align 4
@easing_out_in_circ = common dso_local global i32 0, align 4
@easing_in_bounce = common dso_local global i32 0, align 4
@easing_out_bounce = common dso_local global i32 0, align 4
@easing_in_out_bounce = common dso_local global i32 0, align 4
@easing_out_in_bounce = common dso_local global i32 0, align 4
@anim = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_animation_push(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.tween, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 9
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 2
  store i64 %17, i64* %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 3
  store i64* %21, i64** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 8
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 7
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 6
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 4
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %106 [
    i32 144, label %40
    i32 148, label %42
    i32 131, label %44
    i32 152, label %46
    i32 135, label %48
    i32 158, label %50
    i32 141, label %52
    i32 154, label %54
    i32 137, label %56
    i32 147, label %58
    i32 130, label %60
    i32 151, label %62
    i32 134, label %64
    i32 146, label %66
    i32 129, label %68
    i32 150, label %70
    i32 133, label %72
    i32 145, label %74
    i32 128, label %76
    i32 149, label %78
    i32 132, label %80
    i32 157, label %82
    i32 140, label %84
    i32 153, label %86
    i32 136, label %88
    i32 159, label %90
    i32 142, label %92
    i32 155, label %94
    i32 138, label %96
    i32 160, label %98
    i32 143, label %100
    i32 156, label %102
    i32 139, label %104
  ]

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_linear, i32** %41, align 8
  br label %107

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_quad, i32** %43, align 8
  br label %107

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_quad, i32** %45, align 8
  br label %107

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_out_quad, i32** %47, align 8
  br label %107

48:                                               ; preds = %1
  %49 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_in_quad, i32** %49, align 8
  br label %107

50:                                               ; preds = %1
  %51 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_cubic, i32** %51, align 8
  br label %107

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_cubic, i32** %53, align 8
  br label %107

54:                                               ; preds = %1
  %55 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_out_cubic, i32** %55, align 8
  br label %107

56:                                               ; preds = %1
  %57 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_in_cubic, i32** %57, align 8
  br label %107

58:                                               ; preds = %1
  %59 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_quart, i32** %59, align 8
  br label %107

60:                                               ; preds = %1
  %61 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_quart, i32** %61, align 8
  br label %107

62:                                               ; preds = %1
  %63 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_out_quart, i32** %63, align 8
  br label %107

64:                                               ; preds = %1
  %65 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_in_quart, i32** %65, align 8
  br label %107

66:                                               ; preds = %1
  %67 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_quint, i32** %67, align 8
  br label %107

68:                                               ; preds = %1
  %69 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_quint, i32** %69, align 8
  br label %107

70:                                               ; preds = %1
  %71 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_out_quint, i32** %71, align 8
  br label %107

72:                                               ; preds = %1
  %73 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_in_quint, i32** %73, align 8
  br label %107

74:                                               ; preds = %1
  %75 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_sine, i32** %75, align 8
  br label %107

76:                                               ; preds = %1
  %77 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_sine, i32** %77, align 8
  br label %107

78:                                               ; preds = %1
  %79 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_out_sine, i32** %79, align 8
  br label %107

80:                                               ; preds = %1
  %81 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_in_sine, i32** %81, align 8
  br label %107

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_expo, i32** %83, align 8
  br label %107

84:                                               ; preds = %1
  %85 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_expo, i32** %85, align 8
  br label %107

86:                                               ; preds = %1
  %87 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_out_expo, i32** %87, align 8
  br label %107

88:                                               ; preds = %1
  %89 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_in_expo, i32** %89, align 8
  br label %107

90:                                               ; preds = %1
  %91 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_circ, i32** %91, align 8
  br label %107

92:                                               ; preds = %1
  %93 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_circ, i32** %93, align 8
  br label %107

94:                                               ; preds = %1
  %95 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_out_circ, i32** %95, align 8
  br label %107

96:                                               ; preds = %1
  %97 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_in_circ, i32** %97, align 8
  br label %107

98:                                               ; preds = %1
  %99 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_bounce, i32** %99, align 8
  br label %107

100:                                              ; preds = %1
  %101 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_bounce, i32** %101, align 8
  br label %107

102:                                              ; preds = %1
  %103 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_in_out_bounce, i32** %103, align 8
  br label %107

104:                                              ; preds = %1
  %105 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  store i32* @easing_out_in_bounce, i32** %105, align 8
  br label %107

106:                                              ; preds = %1
  br label %107

107:                                              ; preds = %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40
  %108 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.tween, %struct.tween* %4, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115, %111, %107
  store i32 0, i32* %2, align 4
  br label %140

122:                                              ; preds = %115
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 0), align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 1), align 4
  %127 = call i32 @da_init(i32 %126)
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 2), align 8
  %129 = call i32 @da_init(i32 %128)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 0), align 8
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 3), align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 2), align 8
  %135 = call i32 @da_push(i32 %134, %struct.tween* byval(%struct.tween) align 8 %4)
  br label %139

136:                                              ; preds = %130
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @anim, i32 0, i32 1), align 4
  %138 = call i32 @da_push(i32 %137, %struct.tween* byval(%struct.tween) align 8 %4)
  br label %139

139:                                              ; preds = %136, %133
  store i32 1, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %121
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @da_init(i32) #1

declare dso_local i32 @da_push(i32, %struct.tween* byval(%struct.tween) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
