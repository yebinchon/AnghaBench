; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_config_file.c_config_write_keys.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_config_file.c_config_write_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }

@IN_MAX_DEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"binddev = %s\0A\00", align 1
@IN_CFG_BIND_COUNT = common dso_local global i32 0, align 4
@IN_BINDTYPE_PLAYER12 = common dso_local global i32 0, align 4
@me_ctrl_actions = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"bind %s = player1 %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bind %s = player2 %s\0A\00", align 1
@IN_BINDTYPE_EMU = common dso_local global i32 0, align 4
@emuctrl_actions = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"bind %s = %s\0A\00", align 1
@in_adev = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_write_keys(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %184, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IN_MAX_DEVS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %187

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32* @in_get_dev_binds(i32 %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i8* @in_get_dev_name(i32 %19, i32 0, i32 0)
  store i8* %20, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %16
  br label %184

27:                                               ; preds = %23
  %28 = load i32*, i32** %2, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @IN_CFG_BIND_COUNT, align 4
  %33 = call i32 @in_get_config(i32 %31, i32 %32, i32* %7)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %180, %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %183

38:                                               ; preds = %34
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 31
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %40, align 16
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @in_get_key_name(i32 %41, i32 %42)
  store i8* %43, i8** %5, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @IN_BINDTYPE_PLAYER12, align 4
  %47 = call i64 @IN_BIND_OFFS(i32 %45, i32 %46)
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %123, %38
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @me_ctrl_actions, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br label %61

61:                                               ; preds = %53, %50
  %62 = phi i1 [ false, %50 ], [ %60, %53 ]
  br i1 %62, label %63, label %126

63:                                               ; preds = %61
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @me_ctrl_actions, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %63
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @me_ctrl_actions, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @strncpy(i8* %75, i32* %81, i32 31)
  %83 = load i32*, i32** %2, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %86 = call i8* @mystrip(i8* %85)
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %86)
  %88 = load i32, i32* %10, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %74, %63
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @me_ctrl_actions, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 %98, 16
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %92
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @me_ctrl_actions, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @strncpy(i8* %105, i32* %111, i32 31)
  %113 = load i32*, i32** %2, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %116 = call i8* @mystrip(i8* %115)
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %114, i8* %116)
  %118 = load i32, i32* %10, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %104, %92
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %50

126:                                              ; preds = %61
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @IN_BINDTYPE_EMU, align 4
  %130 = call i64 @IN_BIND_OFFS(i32 %128, i32 %129)
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %176, %126
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emuctrl_actions, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br label %144

144:                                              ; preds = %136, %133
  %145 = phi i1 [ false, %133 ], [ %143, %136 ]
  br i1 %145, label %146, label %179

146:                                              ; preds = %144
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emuctrl_actions, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %175

157:                                              ; preds = %146
  %158 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emuctrl_actions, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @strncpy(i8* %158, i32* %164, i32 31)
  %166 = load i32*, i32** %2, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %169 = call i8* @mystrip(i8* %168)
  %170 = call i32 (i32*, i8*, ...) @fprintf(i32* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %167, i8* %169)
  %171 = load i32, i32* %10, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %9, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %157, %146
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %133

179:                                              ; preds = %144
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %34

183:                                              ; preds = %34
  br label %184

184:                                              ; preds = %183, %26
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %3, align 4
  br label %12

187:                                              ; preds = %12
  ret void
}

declare dso_local i32* @in_get_dev_binds(i32) #1

declare dso_local i8* @in_get_dev_name(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @in_get_config(i32, i32, i32*) #1

declare dso_local i8* @in_get_key_name(i32, i32) #1

declare dso_local i64 @IN_BIND_OFFS(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32*, i32) #1

declare dso_local i8* @mystrip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
