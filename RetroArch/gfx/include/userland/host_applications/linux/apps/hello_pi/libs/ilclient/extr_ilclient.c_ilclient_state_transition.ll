; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_state_transition.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_state_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@OMX_StateLoaded = common dso_local global i64 0, align 8
@ILCLIENT_ERROR_UNPOPULATED = common dso_local global i32 0, align 4
@ILCLIENT_EVENT_ERROR = common dso_local global i32 0, align 4
@VCOS_OR_CONSUME = common dso_local global i32 0, align 4
@OMX_CommandStateSet = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ilclient_state_transition(%struct.TYPE_4__** %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %18, %2
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %11

21:                                               ; preds = %11
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @OMX_StateLoaded, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32, i32* @ILCLIENT_ERROR_UNPOPULATED, align 4
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %31
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %26

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %21
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = call i32 (...) @rand()
  %51 = ashr i32 %50, 13
  %52 = and i32 %51, 255
  %53 = add nsw i32 %52, 1
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %45

63:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %139, %63
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %142

68:                                               ; preds = %64
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %104, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %69
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %73
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %101, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %92, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %85, %82
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %85, %73
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %69

107:                                              ; preds = %69
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %108, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = call i32 (...) @random_wait()
  %115 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %115, i64 %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i32, i32* @ILCLIENT_EVENT_ERROR, align 4
  %122 = load i32, i32* @VCOS_OR_CONSUME, align 4
  %123 = call i32 @vcos_event_flags_get(i32* %120, i32 %121, i32 %122, i32 0, i32* %8)
  %124 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %124, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @OMX_CommandStateSet, align 4
  %132 = load i64, i64* %4, align 8
  %133 = call i64 @OMX_SendCommand(i32 %130, i32 %131, i64 %132, i32* null)
  store i64 %133, i64* %5, align 8
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @OMX_ErrorNone, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @vc_assert(i32 %137)
  br label %139

139:                                              ; preds = %107
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %64

142:                                              ; preds = %64
  %143 = call i32 (...) @random_wait()
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %161, %142
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %149, i64 %151
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* @OMX_CommandStateSet, align 4
  %155 = load i64, i64* %4, align 8
  %156 = call i64 @ilclient_wait_for_command_complete(%struct.TYPE_4__* %153, i32 %154, i64 %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = call i32 @vc_assert(i32 0)
  br label %160

160:                                              ; preds = %158, %148
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %144

164:                                              ; preds = %144
  %165 = load i64, i64* %4, align 8
  %166 = load i64, i64* @OMX_StateLoaded, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %188

168:                                              ; preds = %164
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %184, %168
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %169
  %174 = load i32, i32* @ILCLIENT_ERROR_UNPOPULATED, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %176, i64 %178
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, %175
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %173
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %169

187:                                              ; preds = %169
  br label %188

188:                                              ; preds = %187, %164
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @random_wait(...) #1

declare dso_local i32 @vcos_event_flags_get(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @OMX_SendCommand(i32, i32, i64, i32*) #1

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i64 @ilclient_wait_for_command_complete(%struct.TYPE_4__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
