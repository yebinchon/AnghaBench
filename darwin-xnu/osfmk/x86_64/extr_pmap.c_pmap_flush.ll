; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_flush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@PMAP__FLUSH_DELAYED_TLBS = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@real_ncpus = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@MP_TLB_FLUSH = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@TLBTimeOut = common dso_local global i64 0, align 8
@LockTimeOut = common dso_local global i64 0, align 8
@PMAP__FLUSH_TLBS_TO = common dso_local global i32 0, align 4
@NMIPI_acks = common dso_local global i64 0, align 8
@TLB_FLUSH_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"Uninterruptible processor(s): CPU bitmap: 0x%llx, NMIPI acks: 0x%lx, now: 0x%lx, deadline: %llu\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_flush(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* @FALSE, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = call i32 (...) @mp_disable_preemption()
  %16 = call i32 (...) @cpu_number()
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @PMAP__FLUSH_DELAYED_TLBS, align 4
  %21 = call i32 @PMAP_CODE(i32 %20)
  %22 = load i32, i32* @DBG_FUNC_START, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i32*, i32, ...) @PMAP_TRACE_CONSTANT(i32 %23, i32* null, i32 %24)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %88, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @real_ncpus, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i1 [ false, %26 ], [ %32, %30 ]
  br i1 %34, label %35, label %93

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %87

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @cpu_is_running(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %88

49:                                               ; preds = %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i8*, i8** @TRUE, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call %struct.TYPE_5__* @cpu_datap(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  br label %66

61:                                               ; preds = %49
  %62 = load i8*, i8** @TRUE, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call %struct.TYPE_5__* @cpu_datap(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %61, %56
  %67 = call i32 (...) @mfence()
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** @TRUE, align 8
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %9, align 4
  br label %88

74:                                               ; preds = %66
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @CPU_CR3_IS_ACTIVE(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @MP_TLB_FLUSH, align 4
  %84 = load i32, i32* @ASYNC, align 4
  %85 = call i32 @i386_signal_cpu(i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %74
  br label %87

87:                                               ; preds = %86, %35
  br label %88

88:                                               ; preds = %87, %71, %48
  %89 = load i32, i32* %4, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = shl i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %26

93:                                               ; preds = %33
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* %3, align 4
  %99 = call %struct.TYPE_5__* @cpu_datap(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @FALSE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = call i32 (...) @process_pmap_updates()
  br label %106

106:                                              ; preds = %104, %97, %93
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %205

109:                                              ; preds = %106
  %110 = call i64 (...) @mach_absolute_time()
  %111 = load i64, i64* @TLBTimeOut, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i64, i64* @TLBTimeOut, align 8
  br label %117

115:                                              ; preds = %109
  %116 = load i64, i64* @LockTimeOut, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i64 [ %114, %113 ], [ %116, %115 ]
  %119 = add nsw i64 %110, %118
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* @FALSE, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %203, %185, %184, %177, %117
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %204

125:                                              ; preds = %122
  store i64 0, i64* %12, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %162, %125
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @real_ncpus, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %167

130:                                              ; preds = %126
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %130
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @cpu_is_running(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load i32, i32* %4, align 4
  %141 = call %struct.TYPE_5__* @cpu_datap(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @FALSE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %4, align 4
  %148 = call i64 @CPU_CR3_IS_ACTIVE(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %146, %139, %135
  %151 = load i32, i32* %5, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %150, %146
  %156 = call i32 (...) @cpu_pause()
  br label %157

157:                                              ; preds = %155, %130
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %167

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %4, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %5, align 4
  %166 = shl i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %126

167:                                              ; preds = %160, %126
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %203

170:                                              ; preds = %167
  %171 = call i64 (...) @mach_absolute_time()
  %172 = load i64, i64* %10, align 8
  %173 = icmp sgt i64 %171, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %170
  %175 = call i64 (...) @machine_timeout_suspended()
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %122

178:                                              ; preds = %174
  %179 = load i64, i64* @TLBTimeOut, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %122

185:                                              ; preds = %181
  %186 = load i32, i32* @PMAP__FLUSH_TLBS_TO, align 4
  %187 = call i32 @PMAP_CODE(i32 %186)
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %6, align 4
  %190 = call i32 (i32, i32*, i32, ...) @PMAP_TRACE_CONSTANT(i32 %187, i32* null, i32 %188, i32 %189)
  %191 = load i8*, i8** @TRUE, align 8
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %11, align 4
  br label %122

193:                                              ; preds = %178
  %194 = load i64, i64* @NMIPI_acks, align 8
  store i64 %194, i64* %12, align 8
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @TLB_FLUSH_TIMEOUT, align 4
  %197 = call i32 @NMIPI_panic(i32 %195, i32 %196)
  %198 = load i32, i32* %6, align 4
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* @NMIPI_acks, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @panic(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %198, i64 %199, i64 %200, i64 %201)
  br label %203

203:                                              ; preds = %193, %170, %167
  br label %122

204:                                              ; preds = %122
  br label %205

205:                                              ; preds = %204, %106
  %206 = load i32, i32* @PMAP__FLUSH_DELAYED_TLBS, align 4
  %207 = call i32 @PMAP_CODE(i32 %206)
  %208 = load i32, i32* @DBG_FUNC_END, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %9, align 4
  %212 = call i32 (i32, i32*, i32, ...) @PMAP_TRACE_CONSTANT(i32 %209, i32* null, i32 %210, i32 %211)
  %213 = call i32 (...) @mp_enable_preemption()
  ret void
}

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @PMAP_TRACE_CONSTANT(i32, i32*, i32, ...) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local i32 @cpu_is_running(i32) #1

declare dso_local %struct.TYPE_5__* @cpu_datap(i32) #1

declare dso_local i32 @mfence(...) #1

declare dso_local i64 @CPU_CR3_IS_ACTIVE(i32) #1

declare dso_local i32 @i386_signal_cpu(i32, i32, i32) #1

declare dso_local i32 @process_pmap_updates(...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i64 @machine_timeout_suspended(...) #1

declare dso_local i32 @NMIPI_panic(i32, i32) #1

declare dso_local i32 @panic(i8*, i32, i64, i64, i64) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
