; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@NOTE_PCTRLMASK = common dso_local global i32 0, align 4
@NOTE_EXIT = common dso_local global i32 0, align 4
@NOTE_REAP = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_EXITSTATUS = common dso_local global i32 0, align 4
@NOTE_PDATAMASK = common dso_local global i64 0, align 8
@NOTE_EXIT_DETAIL = common dso_local global i32 0, align 4
@P_LTERM_DECRYPTFAIL = common dso_local global i32 0, align 4
@NOTE_EXIT_DECRYPTFAIL = common dso_local global i64 0, align 8
@P_LTERM_JETSAM = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY = common dso_local global i64 0, align 8
@P_JETSAM_MASK = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY_VMPAGESHORTAGE = common dso_local global i64 0, align 8
@NOTE_EXIT_MEMORY_VMTHRASHING = common dso_local global i64 0, align 8
@NOTE_EXIT_MEMORY_FCTHRASHING = common dso_local global i64 0, align 8
@NOTE_EXIT_MEMORY_VNODE = common dso_local global i64 0, align 8
@NOTE_EXIT_MEMORY_HIWAT = common dso_local global i64 0, align 8
@NOTE_EXIT_MEMORY_PID = common dso_local global i64 0, align 8
@NOTE_EXIT_MEMORY_IDLE = common dso_local global i64 0, align 8
@CS_KILLED = common dso_local global i32 0, align 4
@NOTE_EXIT_CSERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_proc(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @NOTE_PCTRLMASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NOTE_EXIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.knote*, %struct.knote** %4, align 8
  %17 = getelementptr inbounds %struct.knote, %struct.knote* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %15
  %24 = load %struct.knote*, %struct.knote** %4, align 8
  %25 = call %struct.TYPE_8__* @knote_get_kq(%struct.knote* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.knote*, %struct.knote** %4, align 8
  %31 = getelementptr inbounds %struct.knote, %struct.knote* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %29, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %220

38:                                               ; preds = %23, %15
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.knote*, %struct.knote** %4, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.knote*, %struct.knote** %4, align 8
  %49 = getelementptr inbounds %struct.knote, %struct.knote* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %39
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @NOTE_REAP, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @NOTE_EXIT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load %struct.knote*, %struct.knote** %4, align 8
  %62 = getelementptr inbounds %struct.knote, %struct.knote* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NOTE_REAP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %60, %52
  %68 = load i32, i32* @EV_EOF, align 4
  %69 = load i32, i32* @EV_ONESHOT, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.knote*, %struct.knote** %4, align 8
  %72 = getelementptr inbounds %struct.knote, %struct.knote* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %67, %60, %56
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @NOTE_EXIT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %214

79:                                               ; preds = %75
  %80 = load %struct.knote*, %struct.knote** %4, align 8
  %81 = getelementptr inbounds %struct.knote, %struct.knote* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.knote*, %struct.knote** %4, align 8
  %83 = getelementptr inbounds %struct.knote, %struct.knote* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NOTE_EXITSTATUS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %79
  %89 = load i32, i32* @NOTE_EXITSTATUS, align 4
  %90 = load %struct.knote*, %struct.knote** %4, align 8
  %91 = getelementptr inbounds %struct.knote, %struct.knote* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @NOTE_PDATAMASK, align 8
  %96 = and i64 %94, %95
  %97 = load %struct.knote*, %struct.knote** %4, align 8
  %98 = getelementptr inbounds %struct.knote, %struct.knote* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %88, %79
  %102 = load %struct.knote*, %struct.knote** %4, align 8
  %103 = getelementptr inbounds %struct.knote, %struct.knote* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @NOTE_EXIT_DETAIL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %213

108:                                              ; preds = %101
  %109 = load i32, i32* @NOTE_EXIT_DETAIL, align 4
  %110 = load %struct.knote*, %struct.knote** %4, align 8
  %111 = getelementptr inbounds %struct.knote, %struct.knote* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.knote*, %struct.knote** %4, align 8
  %115 = getelementptr inbounds %struct.knote, %struct.knote* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @P_LTERM_DECRYPTFAIL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %108
  %124 = load i64, i64* @NOTE_EXIT_DECRYPTFAIL, align 8
  %125 = load %struct.knote*, %struct.knote** %4, align 8
  %126 = getelementptr inbounds %struct.knote, %struct.knote* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = or i64 %127, %124
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %123, %108
  %130 = load %struct.knote*, %struct.knote** %4, align 8
  %131 = getelementptr inbounds %struct.knote, %struct.knote* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @P_LTERM_JETSAM, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %196

139:                                              ; preds = %129
  %140 = load i64, i64* @NOTE_EXIT_MEMORY, align 8
  %141 = load %struct.knote*, %struct.knote** %4, align 8
  %142 = getelementptr inbounds %struct.knote, %struct.knote* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = or i64 %143, %140
  store i64 %144, i64* %142, align 8
  %145 = load %struct.knote*, %struct.knote** %4, align 8
  %146 = getelementptr inbounds %struct.knote, %struct.knote* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @P_JETSAM_MASK, align 4
  %152 = and i32 %150, %151
  switch i32 %152, label %195 [
    i32 130, label %153
    i32 129, label %159
    i32 134, label %165
    i32 128, label %171
    i32 133, label %177
    i32 131, label %183
    i32 132, label %189
  ]

153:                                              ; preds = %139
  %154 = load i64, i64* @NOTE_EXIT_MEMORY_VMPAGESHORTAGE, align 8
  %155 = load %struct.knote*, %struct.knote** %4, align 8
  %156 = getelementptr inbounds %struct.knote, %struct.knote* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = or i64 %157, %154
  store i64 %158, i64* %156, align 8
  br label %195

159:                                              ; preds = %139
  %160 = load i64, i64* @NOTE_EXIT_MEMORY_VMTHRASHING, align 8
  %161 = load %struct.knote*, %struct.knote** %4, align 8
  %162 = getelementptr inbounds %struct.knote, %struct.knote* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = or i64 %163, %160
  store i64 %164, i64* %162, align 8
  br label %195

165:                                              ; preds = %139
  %166 = load i64, i64* @NOTE_EXIT_MEMORY_FCTHRASHING, align 8
  %167 = load %struct.knote*, %struct.knote** %4, align 8
  %168 = getelementptr inbounds %struct.knote, %struct.knote* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = or i64 %169, %166
  store i64 %170, i64* %168, align 8
  br label %195

171:                                              ; preds = %139
  %172 = load i64, i64* @NOTE_EXIT_MEMORY_VNODE, align 8
  %173 = load %struct.knote*, %struct.knote** %4, align 8
  %174 = getelementptr inbounds %struct.knote, %struct.knote* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = or i64 %175, %172
  store i64 %176, i64* %174, align 8
  br label %195

177:                                              ; preds = %139
  %178 = load i64, i64* @NOTE_EXIT_MEMORY_HIWAT, align 8
  %179 = load %struct.knote*, %struct.knote** %4, align 8
  %180 = getelementptr inbounds %struct.knote, %struct.knote* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = or i64 %181, %178
  store i64 %182, i64* %180, align 8
  br label %195

183:                                              ; preds = %139
  %184 = load i64, i64* @NOTE_EXIT_MEMORY_PID, align 8
  %185 = load %struct.knote*, %struct.knote** %4, align 8
  %186 = getelementptr inbounds %struct.knote, %struct.knote* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = or i64 %187, %184
  store i64 %188, i64* %186, align 8
  br label %195

189:                                              ; preds = %139
  %190 = load i64, i64* @NOTE_EXIT_MEMORY_IDLE, align 8
  %191 = load %struct.knote*, %struct.knote** %4, align 8
  %192 = getelementptr inbounds %struct.knote, %struct.knote* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = or i64 %193, %190
  store i64 %194, i64* %192, align 8
  br label %195

195:                                              ; preds = %139, %189, %183, %177, %171, %165, %159, %153
  br label %196

196:                                              ; preds = %195, %129
  %197 = load %struct.knote*, %struct.knote** %4, align 8
  %198 = getelementptr inbounds %struct.knote, %struct.knote* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CS_KILLED, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %196
  %207 = load i64, i64* @NOTE_EXIT_CSERROR, align 8
  %208 = load %struct.knote*, %struct.knote** %4, align 8
  %209 = getelementptr inbounds %struct.knote, %struct.knote* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = or i64 %210, %207
  store i64 %211, i64* %209, align 8
  br label %212

212:                                              ; preds = %206, %196
  br label %213

213:                                              ; preds = %212, %101
  br label %214

214:                                              ; preds = %213, %75
  %215 = load %struct.knote*, %struct.knote** %4, align 8
  %216 = getelementptr inbounds %struct.knote, %struct.knote* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i32
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %214, %37
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local %struct.TYPE_8__* @knote_get_kq(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
