; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_mouse_step.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_mouse_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mouse_step.e = internal global i32 0, align 4
@INPUT_STICK_CENTRE = common dso_local global i32 0, align 4
@mouse_move_x = common dso_local global i32 0, align 4
@mouse_move_y = common dso_local global i32 0, align 4
@INPUT_STICK_LEFT = common dso_local global i32 0, align 4
@mouse_last_right = common dso_local global i32 0, align 4
@mouse_x = common dso_local global i32 0, align 4
@MOUSE_SHIFT = common dso_local global i32 0, align 4
@INPUT_STICK_RIGHT = common dso_local global i32 0, align 4
@INPUT_STICK_FORWARD = common dso_local global i32 0, align 4
@mouse_last_down = common dso_local global i32 0, align 4
@mouse_y = common dso_local global i32 0, align 4
@INPUT_STICK_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mouse_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mouse_step() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @INPUT_STICK_CENTRE, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @mouse_move_x, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @mouse_move_x, align 4
  br label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @mouse_move_x, align 4
  %12 = sub nsw i32 0, %11
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %10 ]
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @mouse_move_y, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @mouse_move_y, align 4
  br label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @mouse_move_y, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %105

27:                                               ; preds = %22
  %28 = load i32, i32* @mouse_move_x, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %180

32:                                               ; preds = %27
  %33 = load i32, i32* @mouse_move_x, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i32, i32* @INPUT_STICK_LEFT, align 4
  %37 = load i32, i32* %2, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %2, align 4
  store i32 0, i32* @mouse_last_right, align 4
  %39 = load i32, i32* @mouse_x, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* @mouse_x, align 4
  %41 = load i32, i32* @MOUSE_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @mouse_move_x, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* @mouse_move_x, align 4
  %45 = load i32, i32* @mouse_move_x, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* @mouse_move_x, align 4
  br label %48

48:                                               ; preds = %47, %35
  br label %63

49:                                               ; preds = %32
  %50 = load i32, i32* @INPUT_STICK_RIGHT, align 4
  %51 = load i32, i32* %2, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %2, align 4
  store i32 1, i32* @mouse_last_right, align 4
  %53 = load i32, i32* @mouse_x, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @mouse_x, align 4
  %55 = load i32, i32* @MOUSE_SHIFT, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* @mouse_move_x, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* @mouse_move_x, align 4
  %59 = load i32, i32* @mouse_move_x, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 0, i32* @mouse_move_x, align 4
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @mouse_step.e, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* @mouse_step.e, align 4
  %67 = load i32, i32* @mouse_step.e, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @mouse_step.e, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* @mouse_step.e, align 4
  %73 = load i32, i32* @mouse_move_y, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i32, i32* @INPUT_STICK_FORWARD, align 4
  %77 = load i32, i32* %2, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %2, align 4
  store i32 0, i32* @mouse_last_down, align 4
  %79 = load i32, i32* @mouse_y, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* @mouse_y, align 4
  %81 = load i32, i32* @MOUSE_SHIFT, align 4
  %82 = shl i32 1, %81
  %83 = load i32, i32* @mouse_move_y, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* @mouse_move_y, align 4
  %85 = load i32, i32* @mouse_move_y, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  store i32 0, i32* @mouse_move_y, align 4
  br label %88

88:                                               ; preds = %87, %75
  br label %103

89:                                               ; preds = %69
  %90 = load i32, i32* @INPUT_STICK_BACK, align 4
  %91 = load i32, i32* %2, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %2, align 4
  store i32 1, i32* @mouse_last_down, align 4
  %93 = load i32, i32* @mouse_y, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @mouse_y, align 4
  %95 = load i32, i32* @MOUSE_SHIFT, align 4
  %96 = shl i32 1, %95
  %97 = load i32, i32* @mouse_move_y, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* @mouse_move_y, align 4
  %99 = load i32, i32* @mouse_move_y, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 0, i32* @mouse_move_y, align 4
  br label %102

102:                                              ; preds = %101, %89
  br label %103

103:                                              ; preds = %102, %88
  br label %104

104:                                              ; preds = %103, %63
  br label %178

105:                                              ; preds = %22
  %106 = load i32, i32* @mouse_move_y, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load i32, i32* @INPUT_STICK_FORWARD, align 4
  %110 = load i32, i32* %2, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %2, align 4
  store i32 0, i32* @mouse_last_down, align 4
  %112 = load i32, i32* @mouse_y, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* @mouse_y, align 4
  %114 = load i32, i32* @MOUSE_SHIFT, align 4
  %115 = shl i32 1, %114
  %116 = load i32, i32* @mouse_move_y, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* @mouse_move_y, align 4
  %118 = load i32, i32* @mouse_move_y, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  store i32 0, i32* @mouse_move_y, align 4
  br label %121

121:                                              ; preds = %120, %108
  br label %136

122:                                              ; preds = %105
  %123 = load i32, i32* @INPUT_STICK_BACK, align 4
  %124 = load i32, i32* %2, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %2, align 4
  store i32 1, i32* @mouse_last_down, align 4
  %126 = load i32, i32* @mouse_y, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @mouse_y, align 4
  %128 = load i32, i32* @MOUSE_SHIFT, align 4
  %129 = shl i32 1, %128
  %130 = load i32, i32* @mouse_move_y, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* @mouse_move_y, align 4
  %132 = load i32, i32* @mouse_move_y, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  store i32 0, i32* @mouse_move_y, align 4
  br label %135

135:                                              ; preds = %134, %122
  br label %136

136:                                              ; preds = %135, %121
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @mouse_step.e, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* @mouse_step.e, align 4
  %140 = load i32, i32* @mouse_step.e, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %177

142:                                              ; preds = %136
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @mouse_step.e, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* @mouse_step.e, align 4
  %146 = load i32, i32* @mouse_move_x, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %142
  %149 = load i32, i32* @INPUT_STICK_LEFT, align 4
  %150 = load i32, i32* %2, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %2, align 4
  store i32 0, i32* @mouse_last_right, align 4
  %152 = load i32, i32* @mouse_x, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* @mouse_x, align 4
  %154 = load i32, i32* @MOUSE_SHIFT, align 4
  %155 = shl i32 1, %154
  %156 = load i32, i32* @mouse_move_x, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* @mouse_move_x, align 4
  %158 = load i32, i32* @mouse_move_x, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %148
  store i32 0, i32* @mouse_move_x, align 4
  br label %161

161:                                              ; preds = %160, %148
  br label %176

162:                                              ; preds = %142
  %163 = load i32, i32* @INPUT_STICK_RIGHT, align 4
  %164 = load i32, i32* %2, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %2, align 4
  store i32 1, i32* @mouse_last_right, align 4
  %166 = load i32, i32* @mouse_x, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @mouse_x, align 4
  %168 = load i32, i32* @MOUSE_SHIFT, align 4
  %169 = shl i32 1, %168
  %170 = load i32, i32* @mouse_move_x, align 4
  %171 = sub nsw i32 %170, %169
  store i32 %171, i32* @mouse_move_x, align 4
  %172 = load i32, i32* @mouse_move_x, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  store i32 0, i32* @mouse_move_x, align 4
  br label %175

175:                                              ; preds = %174, %162
  br label %176

176:                                              ; preds = %175, %161
  br label %177

177:                                              ; preds = %176, %136
  br label %178

178:                                              ; preds = %177, %104
  %179 = load i32, i32* %2, align 4
  store i32 %179, i32* %1, align 4
  br label %180

180:                                              ; preds = %178, %30
  %181 = load i32, i32* %1, align 4
  ret i32 %181
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
