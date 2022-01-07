; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_nunchuk.c_nunchuk_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_nunchuk.c_nunchuk_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nunchuk_t = type { i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@WIIUSE_SMOOTHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nunchuk_event(%struct.nunchuk_t* %0, i32* %1) #0 {
  %3 = alloca %struct.nunchuk_t*, align 8
  %4 = alloca i32*, align 8
  store %struct.nunchuk_t* %0, %struct.nunchuk_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @nunchuk_pressed_buttons(%struct.nunchuk_t* %5, i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %14 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %21 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %25 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %2
  %31 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %32 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %37 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp sgt i64 %35, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %30
  %44 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %45 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %51 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %43, %30
  %55 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %56 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %61 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %59, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %54
  %68 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %69 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %75 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %67, %54
  br label %79

79:                                               ; preds = %78, %2
  %80 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %81 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %135

86:                                               ; preds = %79
  %87 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %88 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %93 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp sgt i64 %91, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %86
  %100 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %101 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %107 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i64 %105, i64* %109, align 8
  br label %110

110:                                              ; preds = %99, %86
  %111 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %112 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %117 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %115, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %110
  %124 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %125 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %131 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  store i64 %129, i64* %133, align 8
  br label %134

134:                                              ; preds = %123, %110
  br label %135

135:                                              ; preds = %134, %79
  %136 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %137 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %136, i32 0, i32 4
  %138 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %139 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %145 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = call i32 @calc_joystick_state(%struct.TYPE_13__* %137, i64 %143, i64 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 2
  %155 = load i32*, i32** %4, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 2
  %159 = and i32 %158, 3
  %160 = add nsw i32 %154, %159
  %161 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %162 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 2
  %168 = load i32*, i32** %4, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 5
  %170 = load i32, i32* %169, align 4
  %171 = ashr i32 %170, 4
  %172 = and i32 %171, 3
  %173 = add nsw i32 %167, %172
  %174 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %175 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  %177 = load i32*, i32** %4, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 %179, 2
  %181 = load i32*, i32** %4, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 5
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 6
  %185 = and i32 %184, 3
  %186 = add nsw i32 %180, %185
  %187 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %188 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  store i32 %186, i32* %189, align 4
  %190 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %191 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %190, i32 0, i32 2
  %192 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %193 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %192, i32 0, i32 1
  %194 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %195 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %194, i32 0, i32 3
  %196 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %197 = load i32, i32* @WIIUSE_SMOOTHING, align 4
  %198 = call i32 @NUNCHUK_IS_FLAG_SET(%struct.nunchuk_t* %196, i32 %197)
  %199 = call i32 @calculate_orientation(i32* %191, %struct.TYPE_12__* %193, i32* %195, i32 %198)
  %200 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %201 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %200, i32 0, i32 2
  %202 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %203 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %202, i32 0, i32 1
  %204 = load %struct.nunchuk_t*, %struct.nunchuk_t** %3, align 8
  %205 = getelementptr inbounds %struct.nunchuk_t, %struct.nunchuk_t* %204, i32 0, i32 0
  %206 = call i32 @calculate_gforce(i32* %201, %struct.TYPE_12__* %203, i32* %205)
  ret void
}

declare dso_local i32 @nunchuk_pressed_buttons(%struct.nunchuk_t*, i32) #1

declare dso_local i32 @calc_joystick_state(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @calculate_orientation(i32*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @NUNCHUK_IS_FLAG_SET(%struct.nunchuk_t*, i32) #1

declare dso_local i32 @calculate_gforce(i32*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
