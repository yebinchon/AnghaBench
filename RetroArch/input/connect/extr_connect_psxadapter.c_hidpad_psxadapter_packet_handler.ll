; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_psxadapter.c_hidpad_psxadapter_packet_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_psxadapter.c_hidpad_psxadapter_packet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_psxadapter_data = type { i32*, i32 }

@hidpad_psxadapter_packet_handler.button_mapping = internal constant [16 x i32] [i32 136, i32 133, i32 137, i32 134, i32 131, i32 130, i32 135, i32 132, i32 140, i32 140, i32 140, i32 140, i32 129, i32 139, i32 138, i32 128], align 16
@RETRO_DEVICE_ID_JOYPAD_LEFT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_RIGHT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_UP = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @hidpad_psxadapter_packet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpad_psxadapter_packet_handler(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hidpad_psxadapter_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.hidpad_psxadapter_data*
  store %struct.hidpad_psxadapter_data* %12, %struct.hidpad_psxadapter_data** %10, align 8
  %13 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %14 = icmp ne %struct.hidpad_psxadapter_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %200

16:                                               ; preds = %3
  %17 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %18 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @memcpy(i32* %19, i32* %20, i32 %21)
  %23 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %24 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %23, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %26 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %31 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %29, %35
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %66, %16
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 16
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* @hidpad_psxadapter_packet_handler.button_mapping, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 140
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* @hidpad_psxadapter_packet_handler.button_mapping, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %52
  %60 = phi i32 [ %57, %52 ], [ 0, %58 ]
  %61 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %62 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %40
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %37

69:                                               ; preds = %37
  %70 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %71 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 127
  br i1 %75, label %76, label %141

76:                                               ; preds = %69
  %77 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %78 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_LEFT, align 4
  %85 = shl i32 1, %84
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i32 [ %85, %83 ], [ 0, %86 ]
  %89 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %90 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %94 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 255
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_RIGHT, align 4
  %101 = shl i32 1, %100
  br label %103

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102, %99
  %104 = phi i32 [ %101, %99 ], [ 0, %102 ]
  %105 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %106 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %110 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  %117 = shl i32 1, %116
  br label %119

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118, %115
  %120 = phi i32 [ %117, %115 ], [ 0, %118 ]
  %121 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %122 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %126 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 255
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_DOWN, align 4
  %133 = shl i32 1, %132
  br label %135

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134, %131
  %136 = phi i32 [ %133, %131 ], [ 0, %134 ]
  %137 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %138 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %200

141:                                              ; preds = %69
  %142 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %143 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 6
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @PSX_H_GET(i32 %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i64 @PSX_H_LEFT(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_LEFT, align 4
  %153 = shl i32 1, %152
  br label %155

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154, %151
  %156 = phi i32 [ %153, %151 ], [ 0, %154 ]
  %157 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %158 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i64 @PSX_H_RIGHT(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_RIGHT, align 4
  %166 = shl i32 1, %165
  br label %168

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %164
  %169 = phi i32 [ %166, %164 ], [ 0, %167 ]
  %170 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %171 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i64 @PSX_H_UP(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %168
  %178 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  %179 = shl i32 1, %178
  br label %181

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180, %177
  %182 = phi i32 [ %179, %177 ], [ 0, %180 ]
  %183 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %184 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i64 @PSX_H_DOWN(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %181
  %191 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_DOWN, align 4
  %192 = shl i32 1, %191
  br label %194

193:                                              ; preds = %181
  br label %194

194:                                              ; preds = %193, %190
  %195 = phi i32 [ %192, %190 ], [ 0, %193 ]
  %196 = load %struct.hidpad_psxadapter_data*, %struct.hidpad_psxadapter_data** %10, align 8
  %197 = getelementptr inbounds %struct.hidpad_psxadapter_data, %struct.hidpad_psxadapter_data* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %15, %194, %135
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @PSX_H_GET(i32) #1

declare dso_local i64 @PSX_H_LEFT(i32) #1

declare dso_local i64 @PSX_H_RIGHT(i32) #1

declare dso_local i64 @PSX_H_UP(i32) #1

declare dso_local i64 @PSX_H_DOWN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
