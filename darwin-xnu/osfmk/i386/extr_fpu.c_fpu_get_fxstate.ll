; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_get_fxstate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_get_fxstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_fx_thread_state = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.x86_fx_thread_state* }
%struct.x86_avx_thread_state = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.x86_avx512_thread_state = type { i32, i32, i32, i32 }
%union.anon = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@fpu_capability = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@initial_fp_state = common dso_local global i32 0, align 4
@fp_state_size = common dso_local global i32* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"fpu_get_fxstate() UNDEFINED xstate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_get_fxstate(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x86_fx_thread_state*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.x86_avx_thread_state*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.x86_avx512_thread_state*, align 8
  %16 = alloca %union.anon, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* @fpu_capability, align 8
  %19 = icmp eq i64 %18, 132
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %21, i32* %4, align 4
  br label %221

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 129
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 128
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %22
  %29 = load i64, i64* @fpu_capability, align 8
  %30 = icmp slt i64 %29, 135
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %32, i32* %4, align 4
  br label %221

33:                                               ; preds = %28, %25
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 131
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 130
  br i1 %38, label %39, label %45

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @thread_xstate(i64 %40)
  %42 = icmp ne i32 %41, 134
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %44, i32* %4, align 4
  br label %221

45:                                               ; preds = %39, %36
  %46 = load i64, i64* %6, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %9, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @THREAD_NULL, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = call %struct.TYPE_11__* @THREAD_TO_PCB(i64 %53)
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %11, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @simple_lock(i32* %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %59, align 8
  store %struct.x86_fx_thread_state* %60, %struct.x86_fx_thread_state** %8, align 8
  %61 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %62 = icmp eq %struct.x86_fx_thread_state* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %45
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = bitcast i32* %65 to i8*
  %67 = load i32*, i32** @fp_state_size, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 133
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bcopy(i8* bitcast (i32* @initial_fp_state to i8*), i8* %66, i32 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = call i32 @simple_unlock(i32* %72)
  %74 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %74, i32* %4, align 4
  br label %221

75:                                               ; preds = %45
  %76 = load i64, i64* %5, align 8
  %77 = call i64 (...) @current_thread()
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @ml_set_interrupts_enabled(i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = call i32 (...) @clear_ts()
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @fp_save(i64 %83)
  %85 = call i32 (...) @clear_fpu()
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @ml_set_interrupts_enabled(i32 %86)
  br label %88

88:                                               ; preds = %79, %75
  %89 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %90 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %216

93:                                               ; preds = %88
  %94 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %95 = bitcast %struct.x86_fx_thread_state* %94 to i8*
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = bitcast i32* %97 to i8*
  %99 = load i32*, i32** @fp_state_size, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 133
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @bcopy(i8* %95, i8* %98, i32 %101)
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @thread_xstate(i64 %103)
  switch i32 %104, label %214 [
    i32 132, label %105
    i32 133, label %107
    i32 135, label %108
    i32 134, label %135
  ]

105:                                              ; preds = %93
  %106 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %214

107:                                              ; preds = %93
  br label %214

108:                                              ; preds = %93
  %109 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %110 = bitcast %struct.x86_fx_thread_state* %109 to i8*
  %111 = bitcast i8* %110 to %struct.x86_avx_thread_state*
  store %struct.x86_avx_thread_state* %111, %struct.x86_avx_thread_state** %13, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %113 = bitcast %struct.TYPE_7__* %112 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %14, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp eq i64 %114, 129
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %13, align 8
  %118 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = call i32 @bcopy_nochk(i32 %119, i32* %121, i32 32)
  br label %134

123:                                              ; preds = %108
  %124 = load i64, i64* %7, align 8
  %125 = icmp eq i64 %124, 128
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %13, align 8
  %128 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = call i32 @bcopy_nochk(i32 %129, i32* %131, i32 64)
  br label %133

133:                                              ; preds = %126, %123
  br label %134

134:                                              ; preds = %133, %116
  br label %214

135:                                              ; preds = %93
  %136 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %137 = bitcast %struct.x86_fx_thread_state* %136 to i8*
  %138 = bitcast i8* %137 to %struct.x86_avx512_thread_state*
  store %struct.x86_avx512_thread_state* %138, %struct.x86_avx512_thread_state** %15, align 8
  %139 = bitcast %union.anon* %16 to i64*
  %140 = load i64, i64* %6, align 8
  store i64 %140, i64* %139, align 8
  %141 = load i64, i64* %7, align 8
  switch i64 %141, label %213 [
    i64 131, label %142
    i64 129, label %166
    i64 130, label %174
    i64 128, label %205
  ]

142:                                              ; preds = %135
  %143 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %144 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = bitcast %union.anon* %16 to %struct.TYPE_10__**
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = call i32 @bcopy_nochk(i32 %145, i32* %148, i32 32)
  %150 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %151 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = bitcast %union.anon* %16 to %struct.TYPE_10__**
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = call i32 @bcopy_nochk(i32 %152, i32* %155, i32 32)
  %157 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %158 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = bitcast %union.anon* %16 to %struct.TYPE_10__**
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = call i32 @bcopy_nochk(i32 %159, i32* %162, i32 32)
  %164 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %165 = call i32 @DBG_AVX512_STATE(%struct.x86_avx512_thread_state* %164)
  br label %213

166:                                              ; preds = %135
  %167 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %168 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = bitcast %union.anon* %16 to %struct.TYPE_10__**
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = call i32 @bcopy_nochk(i32 %169, i32* %172, i32 32)
  br label %213

174:                                              ; preds = %135
  %175 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %176 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = bitcast %union.anon* %16 to %struct.TYPE_9__**
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  %181 = call i32 @bcopy_nochk(i32 %177, i32* %180, i32 32)
  %182 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %183 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = bitcast %union.anon* %16 to %struct.TYPE_9__**
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = call i32 @bcopy_nochk(i32 %184, i32* %187, i32 64)
  %189 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %190 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = bitcast %union.anon* %16 to %struct.TYPE_9__**
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = call i32 @bcopy_nochk(i32 %191, i32* %194, i32 64)
  %196 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %197 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = bitcast %union.anon* %16 to %struct.TYPE_9__**
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = call i32 @bcopy_nochk(i32 %198, i32* %201, i32 64)
  %203 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %204 = call i32 @DBG_AVX512_STATE(%struct.x86_avx512_thread_state* %203)
  br label %213

205:                                              ; preds = %135
  %206 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %15, align 8
  %207 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = bitcast %union.anon* %16 to %struct.TYPE_9__**
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = call i32 @bcopy_nochk(i32 %208, i32* %211, i32 64)
  br label %213

213:                                              ; preds = %135, %205, %174, %166, %142
  br label %214

214:                                              ; preds = %93, %213, %134, %107, %105
  %215 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %214, %88
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = call i32 @simple_unlock(i32* %218)
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %216, %63, %43, %31, %20
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @thread_xstate(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @THREAD_TO_PCB(i64) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @clear_ts(...) #1

declare dso_local i32 @fp_save(i64) #1

declare dso_local i32 @clear_fpu(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bcopy_nochk(i32, i32*, i32) #1

declare dso_local i32 @DBG_AVX512_STATE(%struct.x86_avx512_thread_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
