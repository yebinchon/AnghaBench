; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_fasttrap_isa.c_fasttrap_return_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_fasttrap_isa.c_fasttrap_return_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i64, %struct.TYPE_25__*, %struct.TYPE_19__*, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i64, i64, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@DATAMODEL_LP64 = common dso_local global i32 0, align 4
@DATAMODEL_ILP32 = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_17__* null, align 8
@CPU = common dso_local global %struct.TYPE_18__* null, align 8
@fasttrap_tpoints = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@FASTTRAP_T_RET = common dso_local global i64 0, align 8
@FASTTRAP_T_RET16 = common dso_local global i64 0, align 8
@DTFTP_PROVIDER_ONESHOT = common dso_local global i64 0, align 8
@P_LNOATTACH = common dso_local global i32 0, align 4
@dtrace_probeid_error = common dso_local global i32 0, align 4
@DTRACEFLT_UPRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64)* @fasttrap_return_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_return_common(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 1, i32* %12, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @is_saved_state64(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32*, i32** %5, align 8
  %25 = call %struct.TYPE_21__* @saved_state64(i32* %24)
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %10, align 8
  %26 = load i32, i32* @DATAMODEL_LP64, align 4
  store i32 %26, i32* %11, align 4
  br label %31

27:                                               ; preds = %4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call %struct.TYPE_22__* @saved_state32(i32* %28)
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %10, align 8
  %30 = load i32, i32* @DATAMODEL_ILP32, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cpu_core, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** @CPU, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  store i32* %37, i32** %17, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = call i32 @lck_mtx_lock(i32* %38)
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @FASTTRAP_TPOINTS_INDEX(i64 %41, i64 %42)
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i64 %43
  store %struct.TYPE_26__* %44, %struct.TYPE_26__** %15, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %14, align 8
  br label %48

48:                                               ; preds = %72, %31
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %50 = icmp ne %struct.TYPE_23__* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %76

71:                                               ; preds = %63, %57, %51
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  store %struct.TYPE_23__* %75, %struct.TYPE_23__** %14, align 8
  br label %48

76:                                               ; preds = %70, %48
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %78 = icmp eq %struct.TYPE_23__* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %17, align 8
  %81 = call i32 @lck_mtx_unlock(i32* %80)
  br label %211

82:                                               ; preds = %76
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %84, align 8
  store %struct.TYPE_25__* %85, %struct.TYPE_25__** %16, align 8
  br label %86

86:                                               ; preds = %204, %82
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %88 = icmp ne %struct.TYPE_25__* %87, null
  br i1 %88, label %89, label %208

89:                                               ; preds = %86
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %91, align 8
  store %struct.TYPE_24__* %92, %struct.TYPE_24__** %18, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FASTTRAP_T_RET, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %89
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @FASTTRAP_T_RET16, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %204

115:                                              ; preds = %104, %98, %89
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DTFTP_PROVIDER_ONESHOT, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 3
  %126 = call i64 @atomic_or_8(i32* %125, i32 1)
  store i64 %126, i64* %19, align 8
  %127 = load i64, i64* %19, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %204

130:                                              ; preds = %123
  br label %132

131:                                              ; preds = %115
  store i32 0, i32* %12, align 4
  br label %132

132:                                              ; preds = %131, %130
  %133 = call i32 (...) @dtrace_interrupt_disable()
  store i32 %133, i32* %13, align 4
  %134 = load i64, i64* %6, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cpu_core, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** @CPU, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  store i64 %134, i64* %140, align 8
  %141 = call %struct.TYPE_16__* (...) @current_proc()
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @P_LNOATTACH, align 4
  %145 = call i64 @ISSET(i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %132
  %148 = load i32, i32* @dtrace_probeid_error, align 4
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DTRACEFLT_UPRIV, align 4
  %153 = call i32 @dtrace_probe(i32 %148, i64 0, i32 %151, i32 1, i32 -1, i32 %152)
  br label %195

154:                                              ; preds = %132
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @DATAMODEL_LP64, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %176

158:                                              ; preds = %154
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %6, align 8
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %162, %167
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @dtrace_probe(i32 %161, i64 %168, i32 %171, i32 %174, i32 0, i32 0)
  br label %194

176:                                              ; preds = %154
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i64, i64* %6, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %180, %185
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @dtrace_probe(i32 %179, i64 %186, i32 %189, i32 %192, i32 0, i32 0)
  br label %194

194:                                              ; preds = %176, %158
  br label %195

195:                                              ; preds = %194, %147
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cpu_core, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** @CPU, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @dtrace_interrupt_enable(i32 %202)
  br label %204

204:                                              ; preds = %195, %129, %114
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %206, align 8
  store %struct.TYPE_25__* %207, %struct.TYPE_25__** %16, align 8
  br label %86

208:                                              ; preds = %86
  %209 = load i32*, i32** %17, align 8
  %210 = call i32 @lck_mtx_unlock(i32* %209)
  br label %211

211:                                              ; preds = %208, %79
  ret void
}

declare dso_local i64 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_21__* @saved_state64(i32*) #1

declare dso_local %struct.TYPE_22__* @saved_state32(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @FASTTRAP_TPOINTS_INDEX(i64, i64) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @atomic_or_8(i32*, i32) #1

declare dso_local i32 @dtrace_interrupt_disable(...) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local %struct.TYPE_16__* @current_proc(...) #1

declare dso_local i32 @dtrace_probe(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dtrace_interrupt_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
