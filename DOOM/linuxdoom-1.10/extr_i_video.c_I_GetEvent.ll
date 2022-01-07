; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_I_GetEvent.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_I_GetEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i8* }

@X_display = common dso_local global i32 0, align 4
@X_event = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ev_keydown = common dso_local global i8* null, align 8
@ev_keyup = common dso_local global i8* null, align 8
@ev_mouse = common dso_local global i8* null, align 8
@Button1Mask = common dso_local global i32 0, align 4
@Button2Mask = common dso_local global i32 0, align 4
@Button3Mask = common dso_local global i32 0, align 4
@Button1 = common dso_local global i32 0, align 4
@Button2 = common dso_local global i32 0, align 4
@Button3 = common dso_local global i32 0, align 4
@lastmousex = common dso_local global i32 0, align 4
@lastmousey = common dso_local global i32 0, align 4
@X_width = common dso_local global i32 0, align 4
@X_height = common dso_local global i32 0, align 4
@mousemoved = common dso_local global i32 0, align 4
@doShm = common dso_local global i32 0, align 4
@X_shmeventtype = common dso_local global i32 0, align 4
@shmFinished = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I_GetEvent() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = load i32, i32* @X_display, align 4
  %3 = call i32 @XNextEvent(i32 %2, %struct.TYPE_10__* @X_event)
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 0), align 4
  switch i32 %4, label %161 [
    i32 130, label %5
    i32 129, label %12
    i32 134, label %19
    i32 133, label %60
    i32 128, label %105
    i32 131, label %160
    i32 132, label %160
  ]

5:                                                ; preds = %0
  %6 = load i8*, i8** @ev_keydown, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  store i8* %6, i8** %7, align 8
  %8 = call i8* (...) @xlatekey()
  %9 = ptrtoint i8* %8 to i32
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = call i32 @D_PostEvent(%struct.TYPE_9__* %1)
  br label %170

12:                                               ; preds = %0
  %13 = load i8*, i8** @ev_keyup, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = call i8* (...) @xlatekey()
  %16 = ptrtoint i8* %15 to i32
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = call i32 @D_PostEvent(%struct.TYPE_9__* %1)
  br label %170

19:                                               ; preds = %0
  %20 = load i8*, i8** @ev_mouse, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 0), align 4
  %23 = load i32, i32* @Button1Mask, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 0), align 4
  %26 = load i32, i32* @Button2Mask, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 2, i32 0
  %31 = or i32 %24, %30
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 0), align 4
  %33 = load i32, i32* @Button3Mask, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 4, i32 0
  %38 = or i32 %31, %37
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 1), align 4
  %40 = load i32, i32* @Button1, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = or i32 %38, %42
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 1), align 4
  %45 = load i32, i32* @Button2, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 2, i32 0
  %49 = or i32 %43, %48
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 1), align 4
  %51 = load i32, i32* @Button3, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 4, i32 0
  %55 = or i32 %49, %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = call i32 @D_PostEvent(%struct.TYPE_9__* %1)
  br label %170

60:                                               ; preds = %0
  %61 = load i8*, i8** @ev_mouse, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 0), align 4
  %64 = load i32, i32* @Button1Mask, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 0), align 4
  %67 = load i32, i32* @Button2Mask, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 2, i32 0
  %72 = or i32 %65, %71
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 0), align 4
  %74 = load i32, i32* @Button3Mask, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 4, i32 0
  %79 = or i32 %72, %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 1), align 4
  %84 = load i32, i32* @Button1, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = xor i32 %82, %87
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 1), align 4
  %90 = load i32, i32* @Button2, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 2, i32 0
  %94 = xor i32 %88, %93
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 2, i32 1), align 4
  %96 = load i32, i32* @Button3, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 4, i32 0
  %100 = xor i32 %94, %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  store i32 0, i32* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = call i32 @D_PostEvent(%struct.TYPE_9__* %1)
  br label %170

105:                                              ; preds = %0
  %106 = load i8*, i8** @ev_mouse, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  store i8* %106, i8** %107, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 1, i32 0), align 4
  %109 = load i32, i32* @Button1Mask, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 1, i32 0), align 4
  %112 = load i32, i32* @Button2Mask, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 2, i32 0
  %117 = or i32 %110, %116
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 1, i32 0), align 4
  %119 = load i32, i32* @Button3Mask, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 4, i32 0
  %124 = or i32 %117, %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 %124, i32* %125, align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 1, i32 1), align 4
  %127 = load i32, i32* @lastmousex, align 4
  %128 = sub nsw i32 %126, %127
  %129 = shl i32 %128, 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* @lastmousey, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 1, i32 2), align 4
  %133 = sub nsw i32 %131, %132
  %134 = shl i32 %133, 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  store i32 %134, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %105
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %139, %105
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 1, i32 1), align 4
  store i32 %144, i32* @lastmousex, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 1, i32 2), align 4
  store i32 %145, i32* @lastmousey, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 1, i32 1), align 4
  %147 = load i32, i32* @X_width, align 4
  %148 = sdiv i32 %147, 2
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 1, i32 2), align 4
  %152 = load i32, i32* @X_height, align 4
  %153 = sdiv i32 %152, 2
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 @D_PostEvent(%struct.TYPE_9__* %1)
  store i32 0, i32* @mousemoved, align 4
  br label %158

157:                                              ; preds = %150, %143
  store i32 1, i32* @mousemoved, align 4
  br label %158

158:                                              ; preds = %157, %155
  br label %159

159:                                              ; preds = %158, %139
  br label %170

160:                                              ; preds = %0, %0
  br label %170

161:                                              ; preds = %0
  %162 = load i32, i32* @doShm, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @X_event, i32 0, i32 0), align 4
  %166 = load i32, i32* @X_shmeventtype, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 1, i32* @shmFinished, align 4
  br label %169

169:                                              ; preds = %168, %164, %161
  br label %170

170:                                              ; preds = %169, %160, %159, %60, %19, %12, %5
  ret void
}

declare dso_local i32 @XNextEvent(i32, %struct.TYPE_10__*) #1

declare dso_local i8* @xlatekey(...) #1

declare dso_local i32 @D_PostEvent(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
