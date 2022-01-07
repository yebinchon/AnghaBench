; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_classic.c_classic_ctrl_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_classic.c_classic_ctrl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.classic_ctrl_t = type { i32, i32, i32, i32, float, float, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@CLASSIC_CTRL_BUTTON_FULL_L = common dso_local global i32 0, align 4
@CLASSIC_CTRL_BUTTON_FULL_R = common dso_local global i32 0, align 4
@r = common dso_local global i64 0, align 8
@l = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @classic_ctrl_event(%struct.classic_ctrl_t* %0, i32* %1) #0 {
  %3 = alloca %struct.classic_ctrl_t*, align 8
  %4 = alloca i32*, align 8
  store %struct.classic_ctrl_t* %0, %struct.classic_ctrl_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %6 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %89

9:                                                ; preds = %2
  %10 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 8
  %13 = bitcast i32* %12 to i16*
  %14 = load i16, i16* %13, align 2
  %15 = call i32 @BIG_ENDIAN_SHORT(i16 signext %14)
  %16 = call i32 @classic_ctrl_pressed_buttons(%struct.classic_ctrl_t* %10, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 4
  %25 = or i32 %20, %24
  %26 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %27 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 4
  %38 = or i32 %33, %37
  %39 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %40 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 4
  %51 = or i32 %46, %50
  %52 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %53 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 4
  %64 = or i32 %59, %63
  %65 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %66 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %70 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CLASSIC_CTRL_BUTTON_FULL_L, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 31, i32 0
  %77 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %78 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %80 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CLASSIC_CTRL_BUTTON_FULL_R, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 31, i32 0
  %87 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %88 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %171

89:                                               ; preds = %2
  %90 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = bitcast i32* %92 to i16*
  %94 = load i16, i16* %93, align 2
  %95 = call i32 @BIG_ENDIAN_SHORT(i16 signext %94)
  %96 = call i32 @classic_ctrl_pressed_buttons(%struct.classic_ctrl_t* %90, i32 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 96
  %101 = ashr i32 %100, 2
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 224
  %106 = ashr i32 %105, 5
  %107 = or i32 %101, %106
  %108 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %109 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 31
  %114 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %115 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i64, i64* @r, align 8
  %117 = sitofp i64 %116 to float
  %118 = fdiv float %117, 3.100000e+01
  %119 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %120 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %119, i32 0, i32 4
  store float %118, float* %120, align 4
  %121 = load i64, i64* @l, align 8
  %122 = sitofp i64 %121 to float
  %123 = fdiv float %122, 3.100000e+01
  %124 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %125 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %124, i32 0, i32 5
  store float %123, float* %125, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 63
  %130 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %131 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 63
  %138 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %139 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 4
  %142 = load i32*, i32** %4, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 192
  %146 = ashr i32 %145, 3
  %147 = load i32*, i32** %4, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 192
  %151 = ashr i32 %150, 5
  %152 = or i32 %146, %151
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 128
  %157 = ashr i32 %156, 7
  %158 = or i32 %152, %157
  %159 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %160 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 4
  %163 = load i32*, i32** %4, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 31
  %167 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %168 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %89, %9
  %172 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %173 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %172, i32 0, i32 7
  %174 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %175 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %180 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @calc_joystick_state(%struct.TYPE_4__* %173, i32 %178, i32 %183)
  %185 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %186 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %185, i32 0, i32 6
  %187 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %188 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %193 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @calc_joystick_state(%struct.TYPE_4__* %186, i32 %191, i32 %196)
  ret void
}

declare dso_local i32 @classic_ctrl_pressed_buttons(%struct.classic_ctrl_t*, i32) #1

declare dso_local i32 @BIG_ENDIAN_SHORT(i16 signext) #1

declare dso_local i32 @calc_joystick_state(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
