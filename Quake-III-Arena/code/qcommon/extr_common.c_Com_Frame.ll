; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_Frame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i8*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@Com_Frame.lastTime = internal global i32 0, align 4
@abortframe = common dso_local global i32 0, align 4
@com_viewlog = common dso_local global %struct.TYPE_7__* null, align 8
@com_dedicated = common dso_local global %struct.TYPE_12__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@com_speeds = common dso_local global %struct.TYPE_9__* null, align 8
@com_maxfps = common dso_local global %struct.TYPE_11__* null, align 8
@com_timedemo = common dso_local global %struct.TYPE_8__* null, align 8
@com_frameTime = common dso_local global i32 0, align 4
@com_frameMsec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@qtrue = common dso_local global i8* null, align 8
@time_game = common dso_local global i64 0, align 8
@time_frontend = common dso_local global i64 0, align 8
@time_backend = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"frame:%i all:%3i sv:%3i ev:%3i cl:%3i gm:%3i rf:%3i bk:%3i\0A\00", align 1
@com_frameNumber = common dso_local global i32 0, align 4
@com_showtrace = common dso_local global %struct.TYPE_10__* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"%4i traces  (%ib %ip) %4i points\0A\00", align 1
@c_traces = external dso_local global i32, align 4
@c_brush_traces = external dso_local global i32, align 4
@c_patch_traces = external dso_local global i32, align 4
@c_pointcontents = external dso_local global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_Frame() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* @abortframe, align 4
  %14 = call i64 @setjmp(i32 %13) #3
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %212

17:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -2027669113, i32* %3, align 4
  %18 = call i32 (...) @Com_WriteConfiguration()
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_viewlog, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_dedicated, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_viewlog, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** @qfalse, align 8
  %33 = call i32 @Sys_ShowConsole(i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i8*, i8** @qfalse, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_viewlog, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %17
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_speeds, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @Sys_Milliseconds()
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_dedicated, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @com_maxfps, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_timedemo, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @com_maxfps, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 1000, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %55, %50, %45
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %60
  br label %67

67:                                               ; preds = %78, %66
  %68 = call i32 (...) @Com_EventLoop()
  store i32 %68, i32* @com_frameTime, align 4
  %69 = load i32, i32* @Com_Frame.lastTime, align 4
  %70 = load i32, i32* @com_frameTime, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @com_frameTime, align 4
  store i32 %73, i32* @Com_Frame.lastTime, align 4
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* @com_frameTime, align 4
  %76 = load i32, i32* @Com_Frame.lastTime, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* %2, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %67, label %82

82:                                               ; preds = %78
  %83 = call i32 (...) @Cbuf_Execute()
  %84 = load i32, i32* @com_frameTime, align 4
  store i32 %84, i32* @Com_Frame.lastTime, align 4
  %85 = load i32, i32* %1, align 4
  store i32 %85, i32* @com_frameMsec, align 4
  %86 = load i32, i32* %1, align 4
  %87 = call i32 @Com_ModifyMsec(i32 %86)
  store i32 %87, i32* %1, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_speeds, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = call i32 (...) @Sys_Milliseconds()
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %82
  %95 = load i32, i32* %1, align 4
  %96 = call i32 @SV_Frame(i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_dedicated, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %122

101:                                              ; preds = %94
  %102 = call i32 @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %103 = load i8*, i8** @qfalse, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_dedicated, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_dedicated, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %101
  %111 = call i32 (...) @CL_Init()
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_viewlog, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** @qfalse, align 8
  %116 = call i32 @Sys_ShowConsole(i32 %114, i8* %115)
  br label %121

117:                                              ; preds = %101
  %118 = call i32 (...) @CL_Shutdown()
  %119 = load i8*, i8** @qtrue, align 8
  %120 = call i32 @Sys_ShowConsole(i32 1, i8* %119)
  br label %121

121:                                              ; preds = %117, %110
  br label %122

122:                                              ; preds = %121, %94
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_dedicated, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %153, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_speeds, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = call i32 (...) @Sys_Milliseconds()
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %127
  %135 = call i32 (...) @Com_EventLoop()
  %136 = call i32 (...) @Cbuf_Execute()
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_speeds, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = call i32 (...) @Sys_Milliseconds()
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %141, %134
  %144 = load i32, i32* %1, align 4
  %145 = call i32 @CL_Frame(i32 %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_speeds, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = call i32 (...) @Sys_Milliseconds()
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %150, %143
  br label %153

153:                                              ; preds = %152, %122
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_speeds, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %196

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %5, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %5, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %4, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %6, align 4
  %171 = sub nsw i32 %169, %170
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %12, align 4
  %175 = load i64, i64* @time_game, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = sub nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %10, align 4
  %180 = load i64, i64* @time_frontend, align 8
  %181 = load i64, i64* @time_backend, align 8
  %182 = add nsw i64 %180, %181
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* @com_frameNumber, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i64, i64* @time_game, align 8
  %193 = load i64, i64* @time_frontend, align 8
  %194 = load i64, i64* @time_backend, align 8
  %195 = call i32 (i8*, i32, i32, i32, i32, ...) @Com_Printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i64 %192, i64 %193, i64 %194)
  br label %196

196:                                              ; preds = %158, %153
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** @com_showtrace, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i32, i32* @c_traces, align 4
  %203 = load i32, i32* @c_brush_traces, align 4
  %204 = load i32, i32* @c_patch_traces, align 4
  %205 = load i32, i32* @c_pointcontents, align 4
  %206 = call i32 (i8*, i32, i32, i32, i32, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %202, i32 %203, i32 %204, i32 %205)
  store i32 0, i32* @c_traces, align 4
  store i32 0, i32* @c_brush_traces, align 4
  store i32 0, i32* @c_patch_traces, align 4
  store i32 0, i32* @c_pointcontents, align 4
  br label %207

207:                                              ; preds = %201, %196
  %208 = load i32, i32* @Com_Frame.lastTime, align 4
  %209 = mul i32 %208, -2027669113
  store i32 %209, i32* %3, align 4
  %210 = load i32, i32* @com_frameNumber, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* @com_frameNumber, align 4
  br label %212

212:                                              ; preds = %207, %16
  ret void
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @Com_WriteConfiguration(...) #2

declare dso_local i32 @Sys_ShowConsole(i32, i8*) #2

declare dso_local i32 @Sys_Milliseconds(...) #2

declare dso_local i32 @Com_EventLoop(...) #2

declare dso_local i32 @Cbuf_Execute(...) #2

declare dso_local i32 @Com_ModifyMsec(i32) #2

declare dso_local i32 @SV_Frame(i32) #2

declare dso_local i32 @Cvar_Get(i8*, i8*, i32) #2

declare dso_local i32 @CL_Init(...) #2

declare dso_local i32 @CL_Shutdown(...) #2

declare dso_local i32 @CL_Frame(i32) #2

declare dso_local i32 @Com_Printf(i8*, i32, i32, i32, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
