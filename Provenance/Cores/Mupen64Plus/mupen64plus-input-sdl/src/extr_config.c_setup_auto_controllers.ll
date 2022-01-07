; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_config.c_setup_auto_controllers.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_config.c_setup_auto_controllers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Input-SDL-Control%i\00", align 1
@E_MODE_FULL_AUTO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"AutoConfig0\00", align 1
@M64MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"N64 Controller #%i: Using auto-config with SDL joystick %i ('%s')\00", align 1
@M64MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Autoconfig data invalid for SDL joystick '%s'\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"AutoConfig%i\00", align 1
@E_MODE_NAMED_AUTO = common dso_local global i64 0, align 8
@E_MODE_MANUAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"Autoconfig data invalid for SDL device '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i64*, i64*, [256 x i8]*)* @setup_auto_controllers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_auto_controllers(i32 %0, i32 %1, i32 %2, i8* %3, i64* %4, i64* %5, [256 x i8]* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca [256 x i8]*, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [32 x i8], align 16
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store [256 x i8]* %6, [256 x i8]** %15, align 8
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @auto_set_defaults(i32 %21, i8* %22)
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %19, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %200

27:                                               ; preds = %7
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i64*, i64** %14, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @auto_copy_inputconfig(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %41)
  br label %46

43:                                               ; preds = %27
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %45 = call i32 @auto_copy_inputconfig(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* null)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @load_controller_config(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @M64MSG_INFO, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %11, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 (i32, i8*, ...) @DebugMessage(i32 %55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %65 = call i32 @ConfigSaveSection(i8* %64)
  br label %74

66:                                               ; preds = %46
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @M64MSG_ERROR, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 (i32, i8*, ...) @DebugMessage(i32 %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %66
  br label %74

74:                                               ; preds = %73, %61
  %75 = call i32 @ConfigDeleteSection(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %19, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %198

78:                                               ; preds = %74
  store i32 1, i32* %18, align 4
  br label %79

79:                                               ; preds = %194, %78
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %197

83:                                               ; preds = %79
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @sprintf(i8* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %87, %88
  %90 = icmp sge i32 %89, 4
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %93 = call i32 @ConfigDeleteSection(i8* %92)
  br label %194

94:                                               ; preds = %83
  %95 = load i64*, i64** %13, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %95, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %125, label %104

104:                                              ; preds = %94
  %105 = load i64*, i64** %13, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %105, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @E_MODE_NAMED_AUTO, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %193

114:                                              ; preds = %104
  %115 = load [256 x i8]*, [256 x i8]** %15, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %115, i64 %119
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %120, i64 0, i64 0
  %122 = load i8*, i8** %12, align 8
  %123 = call i64 @strncmp(i8* %121, i8* %122, i32 255)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %193

125:                                              ; preds = %114, %94
  %126 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %127, %128
  %130 = add nsw i32 %129, 1
  %131 = call i32 @sprintf(i8* %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %18, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %11, align 4
  %137 = call i64 @load_controller_config(i8* %132, i32 %135, i32 %136)
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %182

139:                                              ; preds = %125
  %140 = load i64*, i64** %14, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %140, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %139
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %151 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @auto_copy_inputconfig(i8* %150, i8* %151, i8* %152)
  br label %158

154:                                              ; preds = %139
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %156 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %157 = call i32 @auto_copy_inputconfig(i8* %155, i8* %156, i8* null)
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* @M64MSG_INFO, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %163, %164
  %166 = add nsw i32 %165, 1
  %167 = load i32, i32* %11, align 4
  %168 = load i8*, i8** %12, align 8
  %169 = call i32 (i32, i8*, ...) @DebugMessage(i32 %162, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %167, i8* %168)
  br label %170

170:                                              ; preds = %161, %158
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %174 = call i32 @ConfigSaveSection(i8* %173)
  %175 = load i64, i64* @E_MODE_MANUAL, align 8
  %176 = load i64*, i64** %13, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %176, i64 %180
  store i64 %175, i64* %181, align 8
  br label %190

182:                                              ; preds = %125
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @M64MSG_ERROR, align 4
  %187 = load i8*, i8** %12, align 8
  %188 = call i32 (i32, i8*, ...) @DebugMessage(i32 %186, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %185, %182
  br label %190

190:                                              ; preds = %189, %170
  %191 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %192 = call i32 @ConfigDeleteSection(i8* %191)
  br label %193

193:                                              ; preds = %190, %114, %104
  br label %194

194:                                              ; preds = %193, %91
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %18, align 4
  br label %79

197:                                              ; preds = %79
  br label %198

198:                                              ; preds = %197, %74
  %199 = load i32, i32* %17, align 4
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %198, %26
  %201 = load i32, i32* %8, align 4
  ret i32 %201
}

declare dso_local i32 @auto_set_defaults(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @auto_copy_inputconfig(i8*, i8*, i8*) #1

declare dso_local i64 @load_controller_config(i8*, i32, i32) #1

declare dso_local i32 @DebugMessage(i32, i8*, ...) #1

declare dso_local i32 @ConfigSaveSection(i8*) #1

declare dso_local i32 @ConfigDeleteSection(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
