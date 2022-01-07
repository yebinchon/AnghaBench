; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_update_keycode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_update_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, i64, i32, i32, i64, i32 }
%struct.input_event = type { i64, i32, i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"in_evdev: error reading\00", align 1
@EV_KEY = common dso_local global i64 0, align 8
@EV_ABS = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@KEY_LEFT = common dso_local global i32 0, align 4
@KEY_RIGHT = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@KEY_UP = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @in_evdev_update_keycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_evdev_update_keycode(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.input_event, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @read(i32 %17, %struct.input_event* %8, i32 16)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EAGAIN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %21
  br label %156

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EV_KEY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  br label %156

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %6, align 4
  br label %156

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EV_ABS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %154

52:                                               ; preds = %47
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %154

57:                                               ; preds = %52
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ABS_X, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = icmp slt i64 %71, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @KEY_LEFT, align 4
  store i32 %80, i32* %11, align 4
  br label %93

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  %89 = icmp sgt i32 %83, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @KEY_RIGHT, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %81
  br label %93

93:                                               ; preds = %92, %79
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  store i32* %95, i32** %12, align 8
  br label %134

96:                                               ; preds = %63, %57
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ABS_Y, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = icmp slt i64 %107, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i32, i32* @KEY_UP, align 4
  store i32 %116, i32* %11, align 4
  br label %129

117:                                              ; preds = %104
  %118 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %122, %123
  %125 = icmp sgt i32 %119, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* @KEY_DOWN, align 4
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %126, %117
  br label %129

129:                                              ; preds = %128, %115
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 6
  store i32* %131, i32** %12, align 8
  br label %133

132:                                              ; preds = %99, %96
  br label %156

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133, %93
  %135 = load i32, i32* %11, align 4
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %156

140:                                              ; preds = %134
  %141 = load i32, i32* %11, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load i32*, i32** %12, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143, %140
  %148 = load i32*, i32** %12, align 8
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %150 = load i32*, i32** %12, align 8
  store i32 0, i32* %150, align 4
  br label %156

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  %153 = load i32*, i32** %12, align 8
  store i32 %152, i32* %153, align 4
  store i32 %152, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %156

154:                                              ; preds = %52, %47
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155, %151, %147, %139, %132, %42, %41, %27
  %157 = load i32*, i32** %4, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %6, align 4
  %161 = load i32*, i32** %4, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @read(i32, %struct.input_event*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
