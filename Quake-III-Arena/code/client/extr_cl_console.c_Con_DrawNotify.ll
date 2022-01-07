; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_DrawNotify.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_DrawNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32*)* }
%struct.TYPE_13__ = type { i32, i32*, i16*, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@re = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@g_color_table = common dso_local global i32** null, align 8
@con = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@NUM_CON_TIMES = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@con_notifytime = common dso_local global %struct.TYPE_12__* null, align 8
@cl = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@KEYCATCH_UI = common dso_local global i32 0, align 4
@KEYCATCH_CGAME = common dso_local global i32 0, align 4
@cl_conXOffset = common dso_local global %struct.TYPE_15__* null, align 8
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i64 0, align 8
@KEYCATCH_MESSAGE = common dso_local global i32 0, align 4
@chat_team = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"say_team:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"say:\00", align 1
@chatField = common dso_local global i32 0, align 4
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_DrawNotify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 7, i32* %7, align 4
  %8 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @re, i32 0, i32 0), align 8
  %9 = load i32**, i32*** @g_color_table, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 %8(i32* %13)
  store i32 0, i32* %2, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 0), align 8
  %16 = load i32, i32* @NUM_CON_TIMES, align 4
  %17 = sub nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %142, %0
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 0), align 8
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %145

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %142

27:                                               ; preds = %23
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 1), align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @NUM_CON_TIMES, align 4
  %31 = srem i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %142

38:                                               ; preds = %27
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0), align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @con_notifytime, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 1000
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %142

49:                                               ; preds = %38
  %50 = load i16*, i16** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 2), align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 3), align 8
  %53 = srem i32 %51, %52
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 4), align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %50, i64 %56
  store i16* %57, i16** %3, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cl, i32 0, i32 0, i32 0, i32 0), align 8
  %59 = load i64, i64* @PM_INTERMISSION, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 1), align 4
  %63 = load i32, i32* @KEYCATCH_UI, align 4
  %64 = load i32, i32* @KEYCATCH_CGAME, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %142

69:                                               ; preds = %61, %49
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %133, %69
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 4), align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %136

74:                                               ; preds = %70
  %75 = load i16*, i16** %3, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, i16* %75, i64 %77
  %79 = load i16, i16* %78, align 2
  %80 = sext i16 %79 to i32
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %133

84:                                               ; preds = %74
  %85 = load i16*, i16** %3, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %85, i64 %87
  %89 = load i16, i16* %88, align 2
  %90 = sext i16 %89 to i32
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 7
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %84
  %96 = load i16*, i16** %3, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %96, i64 %98
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i32
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 7
  store i32 %103, i32* %7, align 4
  %104 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @re, i32 0, i32 0), align 8
  %105 = load i32**, i32*** @g_color_table, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 %104(i32* %109)
  br label %111

111:                                              ; preds = %95, %84
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cl_conXOffset, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @con, i32 0, i32 5), align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* %1, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %116, %121
  %123 = load i32, i32* %2, align 4
  %124 = load i16*, i16** %3, align 8
  %125 = load i32, i32* %1, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i16, i16* %124, i64 %126
  %128 = load i16, i16* %127, align 2
  %129 = sext i16 %128 to i32
  %130 = and i32 %129, 255
  %131 = trunc i32 %130 to i16
  %132 = call i32 @SCR_DrawSmallChar(i64 %122, i32 %123, i16 signext %131)
  br label %133

133:                                              ; preds = %111, %83
  %134 = load i32, i32* %1, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %1, align 4
  br label %70

136:                                              ; preds = %70
  %137 = load i64, i64* @SMALLCHAR_HEIGHT, align 8
  %138 = load i32, i32* %2, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %136, %68, %48, %37, %26
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %19

145:                                              ; preds = %19
  %146 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @re, i32 0, i32 0), align 8
  %147 = call i32 %146(i32* null)
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 1), align 4
  %149 = load i32, i32* @KEYCATCH_UI, align 4
  %150 = load i32, i32* @KEYCATCH_CGAME, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %188

155:                                              ; preds = %145
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 1), align 4
  %157 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %188

160:                                              ; preds = %155
  %161 = load i64, i64* @chat_team, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %2, align 4
  %165 = call i32 @SCR_DrawBigString(i32 8, i32 %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), float 1.000000e+00)
  store i32 11, i32* %6, align 4
  br label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %2, align 4
  %168 = call i32 @SCR_DrawBigString(i32 8, i32 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float 1.000000e+00)
  store i32 5, i32* %6, align 4
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %2, align 4
  %174 = load i64, i64* @SCREEN_WIDTH, align 8
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  %177 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = sub nsw i64 %174, %179
  %181 = load i32, i32* @qtrue, align 4
  %182 = call i32 @Field_BigDraw(i32* @chatField, i32 %172, i32 %173, i64 %180, i32 %181)
  %183 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %184 = load i32, i32* %2, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %154, %169, %155
  ret void
}

declare dso_local i32 @SCR_DrawSmallChar(i64, i32, i16 signext) #1

declare dso_local i32 @SCR_DrawBigString(i32, i32, i8*, float) #1

declare dso_local i32 @Field_BigDraw(i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
