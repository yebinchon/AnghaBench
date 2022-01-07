; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_wait_for_command_complete_dual.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_wait_for_command_complete_dual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_7__* }

@ILCLIENT_EVENT_ERROR = common dso_local global i32 0, align 4
@ILCLIENT_STATE_CHANGED = common dso_local global i32 0, align 4
@ILCLIENT_PORT_DISABLED = common dso_local global i32 0, align 4
@ILCLIENT_PORT_ENABLED = common dso_local global i32 0, align 4
@OMX_EventCmdComplete = common dso_local global i32 0, align 4
@OMX_EventError = common dso_local global i32 0, align 4
@OMX_ErrorSameState = common dso_local global i64 0, align 8
@VCOS_OR_CONSUME = common dso_local global i32 0, align 4
@VCOS_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilclient_wait_for_command_complete_dual(%struct.TYPE_8__* %0, i32 %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %15 = load i32, i32* @ILCLIENT_EVENT_ERROR, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %29 [
    i32 128, label %17
    i32 130, label %21
    i32 129, label %25
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @ILCLIENT_STATE_CHANGED, align 4
  %19 = load i32, i32* %10, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %10, align 4
  br label %30

21:                                               ; preds = %4
  %22 = load i32, i32* @ILCLIENT_PORT_DISABLED, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %30

25:                                               ; preds = %4
  %26 = load i32, i32* @ILCLIENT_PORT_ENABLED, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %30

29:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %212

30:                                               ; preds = %25, %21, %17
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %36, align 8
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %193
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = call i32 @ilclient_lock_events(%struct.TYPE_9__* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %12, align 8
  br label %46

46:                                               ; preds = %83, %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = icmp ne %struct.TYPE_7__* %47, null
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @OMX_EventCmdComplete, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %61, %55, %49
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @OMX_EventError, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 1
  br label %78

78:                                               ; preds = %73, %67
  %79 = phi i1 [ false, %67 ], [ %77, %73 ]
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %78, %61, %46
  %82 = phi i1 [ false, %61 ], [ false, %46 ], [ %80, %78 ]
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %13, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %12, align 8
  br label %46

88:                                               ; preds = %81
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = icmp ne %struct.TYPE_7__* %89, null
  br i1 %90, label %91, label %153

91:                                               ; preds = %88
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %93 = icmp eq %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %99, align 8
  br label %106

100:                                              ; preds = %91
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %105, align 8
  br label %106

106:                                              ; preds = %100, %94
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @OMX_EventCmdComplete, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @OMX_ErrorSameState, align 8
  %118 = icmp eq i64 %116, %117
  br label %119

119:                                              ; preds = %112, %106
  %120 = phi i1 [ true, %106 ], [ %118, %112 ]
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 0, i32 -1
  store i32 %122, i32* %11, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @OMX_EventError, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %119
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* @ILCLIENT_EVENT_ERROR, align 4
  %132 = load i32, i32* @VCOS_OR_CONSUME, align 4
  %133 = call i32 @vcos_event_flags_get(i32* %130, i32 %131, i32 %132, i32 0, i32* %14)
  br label %134

134:                                              ; preds = %128, %119
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %141, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store %struct.TYPE_7__* %142, %struct.TYPE_7__** %146, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i32 -1, i32* %148, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = call i32 @ilclient_unlock_events(%struct.TYPE_9__* %151)
  br label %204

153:                                              ; preds = %88
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %155 = icmp ne %struct.TYPE_8__* %154, null
  br i1 %155, label %156, label %192

156:                                              ; preds = %153
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  store %struct.TYPE_7__* %159, %struct.TYPE_7__** %12, align 8
  br label %160

160:                                              ; preds = %179, %156
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %162 = icmp ne %struct.TYPE_7__* %161, null
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @OMX_EventError, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 1
  br label %174

174:                                              ; preds = %169, %163
  %175 = phi i1 [ false, %163 ], [ %173, %169 ]
  %176 = xor i1 %175, true
  br label %177

177:                                              ; preds = %174, %160
  %178 = phi i1 [ false, %160 ], [ %176, %174 ]
  br i1 %178, label %179, label %183

179:                                              ; preds = %177
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  store %struct.TYPE_7__* %182, %struct.TYPE_7__** %12, align 8
  br label %160

183:                                              ; preds = %177
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %185 = icmp ne %struct.TYPE_7__* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  store i32 -2, i32* %11, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = call i32 @ilclient_unlock_events(%struct.TYPE_9__* %189)
  br label %204

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %153
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = call i32 @ilclient_unlock_events(%struct.TYPE_9__* %196)
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @VCOS_OR_CONSUME, align 4
  %202 = load i32, i32* @VCOS_SUSPEND, align 4
  %203 = call i32 @vcos_event_flags_get(i32* %199, i32 %200, i32 %201, i32 %202, i32* %14)
  br label %38

204:                                              ; preds = %186, %134
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %206 = icmp ne %struct.TYPE_8__* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %209, align 8
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %210, %29
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @ilclient_lock_events(%struct.TYPE_9__*) #1

declare dso_local i32 @vcos_event_flags_get(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ilclient_unlock_events(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
