; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_subr_x86.c_dtrace_user_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_subr_x86.c_dtrace_user_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i8* }
%struct.proc = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i8* }

@TRUE = common dso_local global i64 0, align 8
@T_DTRACE_RET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"dtrace_user_probe() should be calling aston()\0A\00", align 1
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@CPU = common dso_local global %struct.TYPE_13__* null, align 8
@T_INT3 = common dso_local global i32 0, align 4
@FASTTRAP_INSTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_user_probe(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @is_saved_state64(i32* %18)
  %20 = load i64, i64* @TRUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.TYPE_10__* @saved_state64(i32* %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* @TRUE, align 8
  store i64 %29, i64* %7, align 8
  br label %44

30:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call %struct.TYPE_11__* @saved_state32(i32* %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %5, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %38, %30
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %22
  %45 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %45, %struct.proc** %9, align 8
  %46 = call i32 (...) @current_thread()
  %47 = call i32 @get_bsdthread_info(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = load %struct.proc*, %struct.proc** %9, align 8
  %55 = call i32 @kauth_cred_uthread_update(%struct.TYPE_12__* %53, %struct.proc* %54)
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @T_DTRACE_RET, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %122

60:                                               ; preds = %56
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %11, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %13, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %60
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %82, i32* %2, align 4
  br label %193

83:                                               ; preds = %76
  %84 = load i64, i64* %12, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = icmp ne %struct.TYPE_10__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i8*, i8** %13, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  br label %98

94:                                               ; preds = %86
  %95 = load i8*, i8** %13, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %99, i32* %2, align 4
  br label %193

100:                                              ; preds = %83
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CPU, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32* %102, i32** %8, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @lck_rw_lock_shared(i32* %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @dtrace_return_probe_ptr(i32* %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @lck_rw_unlock_shared(i32* %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = icmp ne %struct.TYPE_10__* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load i8*, i8** %13, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  br label %120

116:                                              ; preds = %100
  %117 = load i8*, i8** %13, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %121, i32* %2, align 4
  br label %193

122:                                              ; preds = %56
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @T_INT3, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %190

126:                                              ; preds = %122
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CPU, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  store i32* %128, i32** %8, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @lck_rw_lock_shared(i32* %129)
  %131 = load i32*, i32** %3, align 8
  %132 = call i64 @dtrace_pid_probe_ptr(i32* %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @lck_rw_unlock_shared(i32* %135)
  %137 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %137, i32* %2, align 4
  br label %193

138:                                              ; preds = %126
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @lck_rw_unlock_shared(i32* %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = icmp ne %struct.TYPE_10__* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  br label %152

148:                                              ; preds = %138
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  br label %152

152:                                              ; preds = %148, %143
  %153 = phi i8* [ %147, %143 ], [ %151, %148 ]
  store i8* %153, i8** %16, align 8
  %154 = load i8*, i8** %16, align 8
  %155 = getelementptr i8, i8* %154, i64 -1
  %156 = call i64 @fuword8(i8* %155, i64* %14)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %189

158:                                              ; preds = %152
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* @FASTTRAP_INSTR, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %189

162:                                              ; preds = %158
  %163 = load i64, i64* %14, align 8
  %164 = icmp eq i64 %163, 3
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i8*, i8** %16, align 8
  %167 = getelementptr i8, i8* %166, i64 -2
  %168 = call i64 @fuword8(i8* %167, i64* %15)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i64, i64* %15, align 8
  %172 = icmp eq i64 %171, 205
  br i1 %172, label %189, label %173

173:                                              ; preds = %170, %165, %162
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = icmp ne %struct.TYPE_10__* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 -1
  store i8* %181, i8** %179, align 8
  br label %187

182:                                              ; preds = %173
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 -1
  store i8* %186, i8** %184, align 8
  br label %187

187:                                              ; preds = %182, %176
  %188 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %188, i32* %2, align 4
  br label %193

189:                                              ; preds = %170, %158, %152
  br label %190

190:                                              ; preds = %189, %122
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %191, %187, %134, %120, %98, %81
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i64 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_10__* @saved_state64(i32*) #1

declare dso_local %struct.TYPE_11__* @saved_state32(i32*) #1

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i32 @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @kauth_cred_uthread_update(%struct.TYPE_12__*, %struct.proc*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @dtrace_return_probe_ptr(i32*) #1

declare dso_local i32 @lck_rw_unlock_shared(i32*) #1

declare dso_local i64 @dtrace_pid_probe_ptr(i32*) #1

declare dso_local i64 @fuword8(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
