; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32*, %struct.delta_frame*, i64 }
%struct.delta_frame = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64, i32*, i32 }

@MAX_INPUT_DEVICES = common dso_local global i32 0, align 4
@RETRO_DEVICE_MASK = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_MOUSE_Y = common dso_local global i32 0, align 4
@NETPLAY_KEY_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i32)* @netplay_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netplay_input_state(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.delta_frame*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %32

28:                                               ; preds = %5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i64 [ %27, %24 ], [ %31, %28 ]
  store i64 %33, i64* %12, align 8
  store i32* null, i32** %15, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %207

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 131
  br i1 %40, label %41, label %81

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RETRO_DEVICE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RETRO_DEVICE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %75

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %54

75:                                               ; preds = %70, %54
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %207

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %41, %38
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load %struct.delta_frame*, %struct.delta_frame** %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %84, i64 %85
  store %struct.delta_frame* %86, %struct.delta_frame** %13, align 8
  %87 = load %struct.delta_frame*, %struct.delta_frame** %13, align 8
  %88 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %89, i64 %91
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %14, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %95 = icmp ne %struct.TYPE_5__* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %81
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96, %81
  store i32 0, i32* %6, align 4
  br label %207

102:                                              ; preds = %96
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %207

108:                                              ; preds = %102
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %15, align 8
  %112 = load i32, i32* %9, align 4
  switch i32 %112, label %206 [
    i32 131, label %113
    i32 132, label %131
    i32 128, label %148
    i32 129, label %148
    i32 130, label %175
  ]

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32*, i32** %15, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %6, align 4
  br label %207

121:                                              ; preds = %113
  %122 = load i32, i32* %11, align 4
  %123 = shl i32 1, %122
  %124 = load i32*, i32** %15, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  store i32 %130, i32* %6, align 4
  br label %207

131:                                              ; preds = %108
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 3
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %207

137:                                              ; preds = %131
  %138 = load i32*, i32** %15, align 8
  %139 = load i32, i32* %10, align 4
  %140 = add i32 1, %139
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %11, align 4
  %146 = mul i32 %145, 16
  %147 = ashr i32 %144, %146
  store i32 %147, i32* %6, align 4
  br label %207

148:                                              ; preds = %108, %108
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 2
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 0, i32* %6, align 4
  br label %207

154:                                              ; preds = %148
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @RETRO_DEVICE_ID_MOUSE_Y, align 4
  %157 = icmp ule i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = load i32*, i32** %15, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %11, align 4
  %163 = mul i32 %162, 16
  %164 = ashr i32 %161, %163
  store i32 %164, i32* %6, align 4
  br label %207

165:                                              ; preds = %154
  %166 = load i32, i32* %11, align 4
  %167 = shl i32 1, %166
  %168 = load i32*, i32** %15, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 1, i32 0
  store i32 %174, i32* %6, align 4
  br label %207

175:                                              ; preds = %108
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @netplay_key_hton(i32 %176)
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* @NETPLAY_KEY_UNKNOWN, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  store i32 0, i32* %6, align 4
  br label %207

182:                                              ; preds = %175
  %183 = load i32, i32* %19, align 4
  %184 = udiv i32 %183, 32
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %19, align 4
  %186 = urem i32 %185, 32
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %17, align 4
  %188 = zext i32 %187 to i64
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp sle i64 %188, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %182
  %194 = load i32, i32* %18, align 4
  %195 = shl i32 1, %194
  %196 = load i32*, i32** %15, align 8
  %197 = load i32, i32* %17, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %195, %200
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 1, i32 0
  store i32 %204, i32* %6, align 4
  br label %207

205:                                              ; preds = %182
  store i32 0, i32* %6, align 4
  br label %207

206:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %206, %205, %193, %181, %165, %158, %153, %137, %136, %121, %117, %107, %101, %79, %37
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local i32 @netplay_key_hton(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
