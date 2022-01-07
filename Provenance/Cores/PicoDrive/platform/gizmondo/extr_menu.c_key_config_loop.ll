; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_key_config_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_key_config_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@CONFIGURABLE_KEYS = common dso_local global i64 0, align 8
@PBTN_HOME = common dso_local global i64 0, align 8
@PBTN_UP = common dso_local global i64 0, align 8
@PBTN_DOWN = common dso_local global i64 0, align 8
@PBTN_PLAY = common dso_local global i64 0, align 8
@PBTN_STOP = common dso_local global i64 0, align 8
@currentConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @key_config_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_config_loop(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %179, %66, %52, %39, %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @draw_key_config(%struct.TYPE_5__* %14, i32 %15, i32 %16, i32 %17)
  %19 = load i64, i64* @CONFIGURABLE_KEYS, align 8
  %20 = load i64, i64* @PBTN_HOME, align 8
  %21 = or i64 %19, %20
  %22 = call i64 @in_menu_wait(i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @PBTN_HOME, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @PBTN_UP, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %32
  br label %13

40:                                               ; preds = %27
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @PBTN_DOWN, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %45
  br label %13

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %13
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @PBTN_PLAY, align 8
  %61 = load i64, i64* @PBTN_STOP, align 8
  %62 = or i64 %60, %61
  %63 = and i64 %59, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %180

66:                                               ; preds = %58
  br label %13

67:                                               ; preds = %54
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @PBTN_HOME, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @unbind_action(i32 %81)
  br label %83

83:                                               ; preds = %75, %72, %67
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* @PBTN_HOME, align 8
  %86 = and i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  %88 = load i64, i64* @CONFIGURABLE_KEYS, align 8
  %89 = load i64, i64* %11, align 8
  %90 = and i64 %89, %88
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* @PBTN_HOME, align 8
  %92 = xor i64 %91, -1
  %93 = load i64, i64* %11, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %176, %83
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 32
  br i1 %97, label %98, label %179

98:                                               ; preds = %95
  %99 = load i64, i64* %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 1, %100
  %102 = sext i32 %101 to i64
  %103 = and i64 %99, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %175

105:                                              ; preds = %98
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @count_bound_keys(i32 %111, i32 %112)
  %114 = icmp sge i32 %113, 2
  br i1 %114, label %115, label %129

115:                                              ; preds = %105
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %121, -1
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %122
  store i32 %128, i32* %126, align 4
  br label %142

129:                                              ; preds = %105
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = xor i32 %140, %135
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %129, %115
  %143 = load i32, i32* %6, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %174

145:                                              ; preds = %142
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %150, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %145
  %160 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, -196609
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* %6, align 4
  %167 = shl i32 %166, 16
  %168 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currentConfig, i32 0, i32 0), align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %167
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %159, %145, %142
  br label %175

175:                                              ; preds = %174, %98
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %95

179:                                              ; preds = %95
  br label %13

180:                                              ; preds = %65
  ret void
}

declare dso_local i32 @draw_key_config(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i64 @in_menu_wait(i64) #1

declare dso_local i32 @unbind_action(i32) #1

declare dso_local i32 @count_bound_keys(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
