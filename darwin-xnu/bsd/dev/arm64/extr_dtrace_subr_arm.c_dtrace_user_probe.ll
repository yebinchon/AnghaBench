; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_subr_arm.c_dtrace_user_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_subr_arm.c_dtrace_user_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.proc = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }

@PSR_TF = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@FASTTRAP_THUMB32_RET_INSTR = common dso_local global i64 0, align 8
@FASTTRAP_ARM32_RET_INSTR = common dso_local global i64 0, align 8
@FASTTRAP_ARM64_RET_INSTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"dtrace_user_probe() should be calling aston()\0A\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@CPU = common dso_local global %struct.TYPE_9__* null, align 8
@FASTTRAP_THUMB32_INSTR = common dso_local global i64 0, align 8
@FASTTRAP_ARM32_INSTR = common dso_local global i64 0, align 8
@FASTTRAP_ARM64_INSTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_user_probe(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %17 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %17, %struct.proc** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = call i32 (...) @current_thread()
  %19 = call i32 @get_bsdthread_info(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = load %struct.proc*, %struct.proc** %5, align 8
  %24 = call i32 @kauth_cred_uthread_update(%struct.TYPE_6__* %22, %struct.proc* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @is_saved_state32(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = call %struct.TYPE_8__* @saved_state32(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PSR_TF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = load i32*, i32** %3, align 8
  %38 = call %struct.TYPE_8__* @saved_state32(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @copyin(i32 %41, i64* %8, i32 8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %45, i32* %2, align 4
  br label %201

46:                                               ; preds = %36
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @FASTTRAP_THUMB32_RET_INSTR, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %6, align 4
  br label %66

51:                                               ; preds = %28
  %52 = load i32*, i32** %3, align 8
  %53 = call %struct.TYPE_8__* @saved_state32(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @copyin(i32 %56, i64* %9, i32 8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %60, i32* %2, align 4
  br label %201

61:                                               ; preds = %51
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @FASTTRAP_ARM32_RET_INSTR, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %46
  br label %82

67:                                               ; preds = %1
  %68 = load i32*, i32** %3, align 8
  %69 = call %struct.TYPE_7__* @saved_state64(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @copyin(i32 %72, i64* %10, i32 8)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %76, i32* %2, align 4
  br label %201

77:                                               ; preds = %67
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @FASTTRAP_ARM64_RET_INSTR, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %66
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %129

85:                                               ; preds = %82
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %11, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %12, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %13, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %85
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %107, i32* %2, align 4
  br label %201

108:                                              ; preds = %101
  %109 = load i64, i64* %12, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @set_saved_state_pc(i32* %112, i32 %113)
  %115 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %115, i32* %2, align 4
  br label %201

116:                                              ; preds = %108
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CPU, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i32* %118, i32** %4, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @lck_rw_lock_shared(i32* %119)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @dtrace_return_probe_ptr(i32* %121)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @lck_rw_unlock_shared(i32* %123)
  %125 = load i32*, i32** %3, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @set_saved_state_pc(i32* %125, i32 %126)
  %128 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %128, i32* %2, align 4
  br label %201

129:                                              ; preds = %82
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CPU, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32* %131, i32** %4, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @lck_rw_lock_shared(i32* %132)
  %134 = load i32*, i32** %3, align 8
  %135 = call i64 @dtrace_pid_probe_ptr(i32* %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @lck_rw_unlock_shared(i32* %138)
  %140 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %140, i32* %2, align 4
  br label %201

141:                                              ; preds = %129
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @lck_rw_unlock_shared(i32* %142)
  %144 = load i32*, i32** %3, align 8
  %145 = call i64 @is_saved_state32(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %184

147:                                              ; preds = %141
  %148 = load i32*, i32** %3, align 8
  %149 = call %struct.TYPE_8__* @saved_state32(i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @PSR_TF, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %147
  %156 = load i32*, i32** %3, align 8
  %157 = call %struct.TYPE_8__* @saved_state32(i32* %156)
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @fuword16(i64 %159, i64* %14)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* @FASTTRAP_THUMB32_INSTR, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %167, i32* %2, align 4
  br label %201

168:                                              ; preds = %162, %155
  br label %183

169:                                              ; preds = %147
  %170 = load i32*, i32** %3, align 8
  %171 = call %struct.TYPE_8__* @saved_state32(i32* %170)
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @fuword32(i64 %173, i64* %15)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* @FASTTRAP_ARM32_INSTR, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %181, i32* %2, align 4
  br label %201

182:                                              ; preds = %176, %169
  br label %183

183:                                              ; preds = %182, %168
  br label %198

184:                                              ; preds = %141
  %185 = load i32*, i32** %3, align 8
  %186 = call %struct.TYPE_7__* @saved_state64(i32* %185)
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @fuword32(i64 %188, i64* %16)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %184
  %192 = load i64, i64* %16, align 8
  %193 = load i64, i64* @FASTTRAP_ARM64_INSTR, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %196, i32* %2, align 4
  br label %201

197:                                              ; preds = %191, %184
  br label %198

198:                                              ; preds = %197, %183
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %199, %195, %180, %166, %137, %116, %111, %106, %75, %59, %44
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i32 @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @kauth_cred_uthread_update(%struct.TYPE_6__*, %struct.proc*) #1

declare dso_local i64 @is_saved_state32(i32*) #1

declare dso_local %struct.TYPE_8__* @saved_state32(i32*) #1

declare dso_local i64 @copyin(i32, i64*, i32) #1

declare dso_local %struct.TYPE_7__* @saved_state64(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @set_saved_state_pc(i32*, i32) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @dtrace_return_probe_ptr(i32*) #1

declare dso_local i32 @lck_rw_unlock_shared(i32*) #1

declare dso_local i64 @dtrace_pid_probe_ptr(i32*) #1

declare dso_local i64 @fuword16(i64, i64*) #1

declare dso_local i64 @fuword32(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
