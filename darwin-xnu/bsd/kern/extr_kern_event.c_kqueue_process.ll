; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_process.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, %struct.kqtailq* }
%struct.kqtailq = type { i32 }
%struct.filt_process_s = type { i32 }
%struct.uthread = type { %struct.kqrequest* }
%struct.kqrequest = type { i32, i64 }
%struct.knote = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.kqueue* }
%struct.TYPE_8__ = type { %struct.kqtailq*, %struct.kqrequest }
%struct.TYPE_7__ = type { %struct.kqtailq* }

@KQ_WORKQ = common dso_local global i32 0, align 4
@KQR_WORKLOOP = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@KQWL_NBUCKETS = common dso_local global i32 0, align 4
@QOS_INDEX_KQFILE = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@KEVENT_FLAG_PARKING = common dso_local global i32 0, align 4
@KQ_PROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqueue*, i32, i8*, %struct.filt_process_s*, i32*)* @kqueue_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqueue_process(%struct.kqueue* %0, i32 %1, i8* %2, %struct.filt_process_s* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kqueue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.filt_process_s*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.uthread*, align 8
  %13 = alloca %struct.kqrequest*, align 8
  %14 = alloca %struct.knote*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.kqtailq*, align 8
  %20 = alloca %struct.kqtailq*, align 8
  %21 = alloca %struct.TYPE_6__, align 8
  store %struct.kqueue* %0, %struct.kqueue** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.filt_process_s* %3, %struct.filt_process_s** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = call i32 (...) @current_thread()
  %23 = call %struct.uthread* @get_bsdthread_info(i32 %22)
  store %struct.uthread* %23, %struct.uthread** %12, align 8
  %24 = load %struct.uthread*, %struct.uthread** %12, align 8
  %25 = getelementptr inbounds %struct.uthread, %struct.uthread* %24, i32 0, i32 0
  %26 = load %struct.kqrequest*, %struct.kqrequest** %25, align 8
  store %struct.kqrequest* %26, %struct.kqrequest** %13, align 8
  %27 = load %struct.filt_process_s*, %struct.filt_process_s** %10, align 8
  %28 = icmp ne %struct.filt_process_s* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load %struct.filt_process_s*, %struct.filt_process_s** %10, align 8
  %31 = getelementptr inbounds %struct.filt_process_s, %struct.filt_process_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %39 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  store %struct.kqueue* %39, %struct.kqueue** %38, align 8
  %40 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %41 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @KQ_WORKQ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %34
  %47 = load %struct.kqrequest*, %struct.kqrequest** %13, align 8
  %48 = icmp eq %struct.kqrequest* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load %struct.kqrequest*, %struct.kqrequest** %13, align 8
  %51 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @KQR_WORKLOOP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49, %46
  %57 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %57, i32* %6, align 4
  br label %229

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.kqrequest*, %struct.kqrequest** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @kqworkq_begin_processing(%struct.TYPE_7__* %60, %struct.kqrequest* %61, i32 %62)
  store i32 %63, i32* %18, align 4
  br label %90

64:                                               ; preds = %34
  %65 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %66 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @KQ_WORKLOOP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load %struct.uthread*, %struct.uthread** %12, align 8
  %73 = getelementptr inbounds %struct.uthread, %struct.uthread* %72, i32 0, i32 0
  %74 = load %struct.kqrequest*, %struct.kqrequest** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = icmp ne %struct.kqrequest* %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %80, i32* %6, align 4
  br label %229

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @kqworkloop_begin_processing(%struct.TYPE_8__* %83, i32 %84)
  store i32 %85, i32* %18, align 4
  br label %89

86:                                               ; preds = %64
  %87 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %88 = call i32 @kqfile_begin_processing(%struct.kqueue* %87)
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %58
  %91 = load i32, i32* %18, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32*, i32** %11, align 8
  store i32 0, i32* %94, align 4
  store i32 0, i32* %6, align 4
  br label %229

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %222, %95
  %97 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %98 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @KQ_WORKQ, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.kqtailq*, %struct.kqtailq** %106, align 8
  %108 = load %struct.kqrequest*, %struct.kqrequest** %13, align 8
  %109 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.kqtailq, %struct.kqtailq* %107, i64 %110
  store %struct.kqtailq* %111, %struct.kqtailq** %20, align 8
  store %struct.kqtailq* %111, %struct.kqtailq** %19, align 8
  br label %140

112:                                              ; preds = %96
  %113 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %114 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @KQ_WORKLOOP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.kqtailq*, %struct.kqtailq** %122, align 8
  %124 = getelementptr inbounds %struct.kqtailq, %struct.kqtailq* %123, i64 0
  store %struct.kqtailq* %124, %struct.kqtailq** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.kqtailq*, %struct.kqtailq** %127, align 8
  %129 = load i32, i32* @KQWL_NBUCKETS, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.kqtailq, %struct.kqtailq* %128, i64 %131
  store %struct.kqtailq* %132, %struct.kqtailq** %20, align 8
  br label %139

133:                                              ; preds = %112
  %134 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %135 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %134, i32 0, i32 1
  %136 = load %struct.kqtailq*, %struct.kqtailq** %135, align 8
  %137 = load i64, i64* @QOS_INDEX_KQFILE, align 8
  %138 = getelementptr inbounds %struct.kqtailq, %struct.kqtailq* %136, i64 %137
  store %struct.kqtailq* %138, %struct.kqtailq** %20, align 8
  store %struct.kqtailq* %138, %struct.kqtailq** %19, align 8
  br label %139

139:                                              ; preds = %133, %119
  br label %140

140:                                              ; preds = %139, %103
  br label %141

141:                                              ; preds = %171, %140
  br label %142

142:                                              ; preds = %164, %141
  %143 = load i32, i32* %17, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load %struct.kqtailq*, %struct.kqtailq** %20, align 8
  %147 = call %struct.knote* @TAILQ_FIRST(%struct.kqtailq* %146)
  store %struct.knote* %147, %struct.knote** %14, align 8
  %148 = icmp ne %struct.knote* %147, null
  br label %149

149:                                              ; preds = %145, %142
  %150 = phi i1 [ false, %142 ], [ %148, %145 ]
  br i1 %150, label %151, label %165

151:                                              ; preds = %149
  %152 = load %struct.knote*, %struct.knote** %14, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i8*, i8** %9, align 8
  %155 = load %struct.filt_process_s*, %struct.filt_process_s** %10, align 8
  %156 = call i32 @knote_process(%struct.knote* %152, i32 %153, i8* %154, %struct.filt_process_s* %155)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @EJUSTRETURN, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  store i32 0, i32* %17, align 4
  br label %164

161:                                              ; preds = %151
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %164

164:                                              ; preds = %161, %160
  br label %142

165:                                              ; preds = %149
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* @EWOULDBLOCK, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 0, i32* %17, align 4
  br label %176

170:                                              ; preds = %165
  br label %171

171:                                              ; preds = %170
  %172 = load %struct.kqtailq*, %struct.kqtailq** %20, align 8
  %173 = getelementptr inbounds %struct.kqtailq, %struct.kqtailq* %172, i32 -1
  store %struct.kqtailq* %173, %struct.kqtailq** %20, align 8
  %174 = load %struct.kqtailq*, %struct.kqtailq** %19, align 8
  %175 = icmp ugt %struct.kqtailq* %172, %174
  br i1 %175, label %141, label %176

176:                                              ; preds = %171, %169
  %177 = load i32, i32* %16, align 4
  %178 = load i32*, i32** %11, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %16, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181, %176
  %185 = load i32, i32* @KEVENT_FLAG_PARKING, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %15, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %184, %181
  %190 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %191 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @KQ_WORKQ, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = load %struct.kqrequest*, %struct.kqrequest** %13, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @kqworkq_end_processing(%struct.TYPE_7__* %198, %struct.kqrequest* %199, i32 %200)
  store i32 %201, i32* %18, align 4
  br label %219

202:                                              ; preds = %189
  %203 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %204 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @KQ_WORKLOOP, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = load i32, i32* @KQ_PROCESSING, align 4
  %213 = load i32, i32* %15, align 4
  %214 = call i32 @kqworkloop_end_processing(%struct.TYPE_8__* %211, i32 %212, i32 %213)
  store i32 %214, i32* %18, align 4
  br label %218

215:                                              ; preds = %202
  %216 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %217 = call i32 @kqfile_end_processing(%struct.kqueue* %216)
  store i32 0, i32* %18, align 4
  br label %218

218:                                              ; preds = %215, %209
  br label %219

219:                                              ; preds = %218, %196
  %220 = load i32, i32* %18, align 4
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* @KEVENT_FLAG_PARKING, align 4
  %225 = and i32 %223, %224
  %226 = call i32 @assert(i32 %225)
  br label %96

227:                                              ; preds = %219
  %228 = load i32, i32* %17, align 4
  store i32 %228, i32* %6, align 4
  br label %229

229:                                              ; preds = %227, %93, %79, %56
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @kqworkq_begin_processing(%struct.TYPE_7__*, %struct.kqrequest*, i32) #1

declare dso_local i32 @kqworkloop_begin_processing(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @kqfile_begin_processing(%struct.kqueue*) #1

declare dso_local %struct.knote* @TAILQ_FIRST(%struct.kqtailq*) #1

declare dso_local i32 @knote_process(%struct.knote*, i32, i8*, %struct.filt_process_s*) #1

declare dso_local i32 @kqworkq_end_processing(%struct.TYPE_7__*, %struct.kqrequest*, i32) #1

declare dso_local i32 @kqworkloop_end_processing(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @kqfile_end_processing(%struct.kqueue*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
