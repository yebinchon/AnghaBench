; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_worker_process_record.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_worker_process_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.au_record = type { i32, i32 }

@AR_COMMIT_USER = common dso_local global i32 0, align 4
@AR_PRESELECT_USER_TRAIL = common dso_local global i32 0, align 4
@AR_PRESELECT_TRAIL = common dso_local global i32 0, align 4
@audit_vp = common dso_local global i32 0, align 4
@audit_ctx = common dso_local global i32 0, align 4
@AR_PRESELECT_USER_PIPE = common dso_local global i32 0, align 4
@AR_COMMIT_KERNEL = common dso_local global i32 0, align 4
@AR_PRESELECT_PIPE = common dso_local global i32 0, align 4
@AR_PRESELECT_FILTER = common dso_local global i32 0, align 4
@AU_PRS_SUCCESS = common dso_local global i32 0, align 4
@AU_PRS_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"audit_worker_process_record: BSM_FAILURE\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"kaudit_to_bsm returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kaudit_record*)* @audit_worker_process_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_worker_process_record(%struct.kaudit_record* %0) #0 {
  %2 = alloca %struct.kaudit_record*, align 8
  %3 = alloca %struct.au_record*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kaudit_record* %0, %struct.kaudit_record** %2, align 8
  %10 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %11 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AR_COMMIT_USER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %18 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AR_PRESELECT_USER_TRAIL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %25 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %16
  %31 = call i32 (...) @AUDIT_WORKER_SX_XLOCK()
  store i32 1, i32* %9, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %35 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AR_COMMIT_USER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %42 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AR_PRESELECT_USER_TRAIL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = call i32 (...) @AUDIT_WORKER_SX_ASSERT()
  %49 = load i32, i32* @audit_vp, align 4
  %50 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %51 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %54 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @audit_record_write(i32 %49, i32* @audit_ctx, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %47, %40, %33
  %58 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %59 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AR_COMMIT_USER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %66 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @AR_PRESELECT_USER_PIPE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %73 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %76 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @audit_pipe_submit_user(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %64, %57
  %80 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %81 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AR_COMMIT_KERNEL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %79
  %87 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %88 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AR_PRESELECT_PIPE, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %95 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %102 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AR_PRESELECT_FILTER, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100, %79
  br label %203

108:                                              ; preds = %100, %93, %86
  %109 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %110 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %6, align 4
  %113 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %114 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @au_event_class(i32 %117)
  store i32 %118, i32* %4, align 4
  %119 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %120 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %108
  %125 = load i32, i32* @AU_PRS_SUCCESS, align 4
  store i32 %125, i32* %8, align 4
  br label %128

126:                                              ; preds = %108
  %127 = load i32, i32* @AU_PRS_FAILURE, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %130 = call i32 @kaudit_to_bsm(%struct.kaudit_record* %129, %struct.au_record** %3)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  switch i32 %131, label %136 [
    i32 129, label %132
    i32 130, label %133
    i32 128, label %135
  ]

132:                                              ; preds = %128
  br label %203

133:                                              ; preds = %128
  %134 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %203

135:                                              ; preds = %128
  br label %139

136:                                              ; preds = %128
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %136, %135
  %140 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %141 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = call i32 (...) @AUDIT_WORKER_SX_ASSERT()
  %148 = load i32, i32* @audit_vp, align 4
  %149 = load %struct.au_record*, %struct.au_record** %3, align 8
  %150 = getelementptr inbounds %struct.au_record, %struct.au_record* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.au_record*, %struct.au_record** %3, align 8
  %153 = getelementptr inbounds %struct.au_record, %struct.au_record* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @audit_record_write(i32 %148, i32* @audit_ctx, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %146, %139
  %157 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %158 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @AR_PRESELECT_PIPE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %156
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %169 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @AR_PRESELECT_TRAIL, align 4
  %172 = and i32 %170, %171
  %173 = load %struct.au_record*, %struct.au_record** %3, align 8
  %174 = getelementptr inbounds %struct.au_record, %struct.au_record* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.au_record*, %struct.au_record** %3, align 8
  %177 = getelementptr inbounds %struct.au_record, %struct.au_record* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @audit_pipe_submit(i32 %164, i32 %165, i32 %166, i32 %167, i32 %172, i32 %175, i32 %178)
  br label %180

180:                                              ; preds = %163, %156
  %181 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %182 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @AR_PRESELECT_FILTER, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %180
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.kaudit_record*, %struct.kaudit_record** %2, align 8
  %190 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.au_record*, %struct.au_record** %3, align 8
  %194 = getelementptr inbounds %struct.au_record, %struct.au_record* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.au_record*, %struct.au_record** %3, align 8
  %197 = getelementptr inbounds %struct.au_record, %struct.au_record* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @audit_sdev_submit(i32 %188, i32 %192, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %187, %180
  %201 = load %struct.au_record*, %struct.au_record** %3, align 8
  %202 = call i32 @kau_free(%struct.au_record* %201)
  br label %203

203:                                              ; preds = %200, %133, %132, %107
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = call i32 (...) @AUDIT_WORKER_SX_XUNLOCK()
  br label %208

208:                                              ; preds = %206, %203
  ret void
}

declare dso_local i32 @AUDIT_WORKER_SX_XLOCK(...) #1

declare dso_local i32 @AUDIT_WORKER_SX_ASSERT(...) #1

declare dso_local i32 @audit_record_write(i32, i32*, i32, i32) #1

declare dso_local i32 @audit_pipe_submit_user(i32, i32) #1

declare dso_local i32 @au_event_class(i32) #1

declare dso_local i32 @kaudit_to_bsm(%struct.kaudit_record*, %struct.au_record**) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @audit_pipe_submit(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @audit_sdev_submit(i32, i32, i32, i32) #1

declare dso_local i32 @kau_free(%struct.au_record*) #1

declare dso_local i32 @AUDIT_WORKER_SX_XUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
