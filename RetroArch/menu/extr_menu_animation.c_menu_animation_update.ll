; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.tween = type { i64, i64, i64, i32, i32 (i32)*, i64, i64*, i64, i64 (i64, i64, i64, i64)* }

@anim = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@delta_time = common dso_local global i64 0, align 8
@animation_is_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_animation_update(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.tween*, align 8
  %8 = alloca %struct.tween*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @menu_animation_update_time(i32 %13, i32 %14, i32 %15)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 1), align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %96, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 2, i32 0), align 4
  %20 = call i32 @da_count(i32 %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %99

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 2, i32 0), align 4
  %25 = call %struct.tween* @da_getptr(i32 %24, i32 %23)
  store %struct.tween* %25, %struct.tween** %7, align 8
  %26 = load %struct.tween*, %struct.tween** %7, align 8
  %27 = icmp ne %struct.tween* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.tween*, %struct.tween** %7, align 8
  %30 = getelementptr inbounds %struct.tween, %struct.tween* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %22
  br label %96

34:                                               ; preds = %28
  %35 = load i64, i64* @delta_time, align 8
  %36 = load %struct.tween*, %struct.tween** %7, align 8
  %37 = getelementptr inbounds %struct.tween, %struct.tween* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.tween*, %struct.tween** %7, align 8
  %41 = getelementptr inbounds %struct.tween, %struct.tween* %40, i32 0, i32 8
  %42 = load i64 (i64, i64, i64, i64)*, i64 (i64, i64, i64, i64)** %41, align 8
  %43 = load %struct.tween*, %struct.tween** %7, align 8
  %44 = getelementptr inbounds %struct.tween, %struct.tween* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.tween*, %struct.tween** %7, align 8
  %47 = getelementptr inbounds %struct.tween, %struct.tween* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.tween*, %struct.tween** %7, align 8
  %50 = getelementptr inbounds %struct.tween, %struct.tween* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tween*, %struct.tween** %7, align 8
  %53 = getelementptr inbounds %struct.tween, %struct.tween* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load %struct.tween*, %struct.tween** %7, align 8
  %57 = getelementptr inbounds %struct.tween, %struct.tween* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 %42(i64 %45, i64 %48, i64 %55, i64 %58)
  %60 = load %struct.tween*, %struct.tween** %7, align 8
  %61 = getelementptr inbounds %struct.tween, %struct.tween* %60, i32 0, i32 6
  %62 = load i64*, i64** %61, align 8
  store i64 %59, i64* %62, align 8
  %63 = load %struct.tween*, %struct.tween** %7, align 8
  %64 = getelementptr inbounds %struct.tween, %struct.tween* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.tween*, %struct.tween** %7, align 8
  %67 = getelementptr inbounds %struct.tween, %struct.tween* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %34
  %71 = load %struct.tween*, %struct.tween** %7, align 8
  %72 = getelementptr inbounds %struct.tween, %struct.tween* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.tween*, %struct.tween** %7, align 8
  %75 = getelementptr inbounds %struct.tween, %struct.tween* %74, i32 0, i32 6
  %76 = load i64*, i64** %75, align 8
  store i64 %73, i64* %76, align 8
  %77 = load %struct.tween*, %struct.tween** %7, align 8
  %78 = getelementptr inbounds %struct.tween, %struct.tween* %77, i32 0, i32 4
  %79 = load i32 (i32)*, i32 (i32)** %78, align 8
  %80 = icmp ne i32 (i32)* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load %struct.tween*, %struct.tween** %7, align 8
  %83 = getelementptr inbounds %struct.tween, %struct.tween* %82, i32 0, i32 4
  %84 = load i32 (i32)*, i32 (i32)** %83, align 8
  %85 = load %struct.tween*, %struct.tween** %7, align 8
  %86 = getelementptr inbounds %struct.tween, %struct.tween* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %84(i32 %87)
  br label %89

89:                                               ; preds = %81, %70
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 2, i32 0), align 4
  %92 = call i32 @da_delete(i32 %91, i32 %90)
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %89, %34
  br label %96

96:                                               ; preds = %95, %33
  %97 = load i32, i32* %5, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %17

99:                                               ; preds = %17
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 1), align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %127, %102
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 2, i32 0), align 4
  %106 = call i32 @da_count(i32 %105)
  %107 = icmp ult i32 %104, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %103
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 2, i32 0), align 4
  %111 = call %struct.tween* @da_getptr(i32 %110, i32 %109)
  store %struct.tween* %111, %struct.tween** %8, align 8
  %112 = load %struct.tween*, %struct.tween** %8, align 8
  %113 = icmp ne %struct.tween* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %127

115:                                              ; preds = %108
  %116 = load %struct.tween*, %struct.tween** %8, align 8
  %117 = getelementptr inbounds %struct.tween, %struct.tween* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 2, i32 0), align 4
  %123 = call i32 @da_delete(i32 %122, i32 %121)
  %124 = load i32, i32* %5, align 4
  %125 = add i32 %124, -1
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %120, %115
  br label %127

127:                                              ; preds = %126, %114
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %103

130:                                              ; preds = %103
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 1), align 4
  br label %131

131:                                              ; preds = %130, %99
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 3, i32 0), align 4
  %133 = call i32 @da_count(i32 %132)
  %134 = icmp ugt i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 3, i32 0), align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 3, i32 0), align 4
  %138 = call i32 @da_count(i32 %137)
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 2, i32 0), align 4
  %140 = call i32 @da_addn(i32 %139, i32 %136, i32 %138)
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 3, i32 0), align 4
  %142 = call i32 @da_clear(i32 %141)
  br label %143

143:                                              ; preds = %135, %131
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 0), align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @anim, i32 0, i32 2, i32 0), align 4
  %145 = call i32 @da_count(i32 %144)
  %146 = icmp ugt i32 %145, 0
  %147 = zext i1 %146 to i32
  store i32 %147, i32* @animation_is_active, align 4
  %148 = load i32, i32* @animation_is_active, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i32 @menu_animation_update_time(i32, i32, i32) #1

declare dso_local i32 @da_count(i32) #1

declare dso_local %struct.tween* @da_getptr(i32, i32) #1

declare dso_local i32 @da_delete(i32, i32) #1

declare dso_local i32 @da_addn(i32, i32, i32) #1

declare dso_local i32 @da_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
