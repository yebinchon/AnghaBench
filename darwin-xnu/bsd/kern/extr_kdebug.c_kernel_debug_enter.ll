; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_enter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i32* }
%struct.kd_bufinfo = type { %union.kds_ptr }
%union.kds_ptr = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }
%struct.kd_storage = type { i64, i64, i32, %struct.TYPE_4__* }

@kd_ctrl_page = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SLOW_NOLOG = common dso_local global i32 0, align 4
@kdebug_enable = common dso_local global i32 0, align 4
@KDEBUG_ENABLE_TRACE = common dso_local global i32 0, align 4
@KDEBUG_ENABLE_PPT = common dso_local global i32 0, align 4
@KDBG_TYPEFILTER_CHECK = common dso_local global i32 0, align 4
@kdbg_typefilter = common dso_local global i32 0, align 4
@KDBG_RANGECHECK = common dso_local global i32 0, align 4
@kdlog_beg = common dso_local global i64 0, align 8
@kdlog_end = common dso_local global i64 0, align 8
@KDBG_VALCHECK = common dso_local global i32 0, align 4
@KDBG_EVENTID_MASK = common dso_local global i64 0, align 8
@kdlog_value1 = common dso_local global i64 0, align 8
@kdlog_value2 = common dso_local global i64 0, align 8
@kdlog_value3 = common dso_local global i64 0, align 8
@kdlog_value4 = common dso_local global i64 0, align 8
@kdbip = common dso_local global %struct.kd_bufinfo* null, align 8
@KDBG_TIMESTAMP_MASK = common dso_local global i64 0, align 8
@KDS_PTR_NULL = common dso_local global i64 0, align 8
@EVENTS_PER_STORAGE_UNIT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@kds_waiter = common dso_local global i64 0, align 8
@n_storage_threshold = common dso_local global i64 0, align 8
@KDEBUG_ENABLE_SERIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_debug_enter(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca %struct.kd_bufinfo*, align 8
  %20 = alloca %struct.kd_storage*, align 8
  %21 = alloca %union.kds_ptr, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %98

24:                                               ; preds = %8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 8
  %26 = load i32, i32* @SLOW_NOLOG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @kdebug_enable, align 4
  %31 = load i32, i32* @KDEBUG_ENABLE_TRACE, align 4
  %32 = load i32, i32* @KDEBUG_ENABLE_PPT, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29, %24
  br label %200

37:                                               ; preds = %29
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 1), align 4
  %39 = load i32, i32* @KDBG_TYPEFILTER_CHECK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @kdbg_typefilter, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @typefilter_is_debugid_allowed(i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %99

48:                                               ; preds = %42
  br label %200

49:                                               ; preds = %37
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 1), align 4
  %51 = load i32, i32* @KDBG_RANGECHECK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @kdlog_beg, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @kdlog_end, align 8
  %61 = icmp ule i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %99

63:                                               ; preds = %58, %54
  br label %200

64:                                               ; preds = %49
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 1), align 4
  %66 = load i32, i32* @KDBG_VALCHECK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %64
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @KDBG_EVENTID_MASK, align 8
  %72 = and i64 %70, %71
  %73 = load i64, i64* @kdlog_value1, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @KDBG_EVENTID_MASK, align 8
  %78 = and i64 %76, %77
  %79 = load i64, i64* @kdlog_value2, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @KDBG_EVENTID_MASK, align 8
  %84 = and i64 %82, %83
  %85 = load i64, i64* @kdlog_value3, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @KDBG_EVENTID_MASK, align 8
  %90 = and i64 %88, %89
  %91 = load i64, i64* @kdlog_value4, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %200

94:                                               ; preds = %87, %81, %75, %69
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %8
  br label %99

99:                                               ; preds = %98, %62, %47
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 2), align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %200

104:                                              ; preds = %99
  %105 = call i32 (...) @disable_preemption()
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 3), align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %198

109:                                              ; preds = %104
  %110 = load %struct.kd_bufinfo*, %struct.kd_bufinfo** @kdbip, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.kd_bufinfo, %struct.kd_bufinfo* %110, i64 %111
  store %struct.kd_bufinfo* %112, %struct.kd_bufinfo** %19, align 8
  %113 = load i64, i64* @KDBG_TIMESTAMP_MASK, align 8
  %114 = load i64, i64* %11, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %156, %147, %109
  %117 = load %struct.kd_bufinfo*, %struct.kd_bufinfo** %19, align 8
  %118 = getelementptr inbounds %struct.kd_bufinfo, %struct.kd_bufinfo* %117, i32 0, i32 0
  %119 = bitcast %union.kds_ptr* %21 to i8*
  %120 = bitcast %union.kds_ptr* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 8, i1 false)
  %121 = bitcast %union.kds_ptr* %21 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @KDS_PTR_NULL, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %116
  %126 = getelementptr inbounds %union.kds_ptr, %union.kds_ptr* %21, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call %struct.kd_storage* @POINTER_FROM_KDS_PTR(i64 %127)
  store %struct.kd_storage* %128, %struct.kd_storage** %20, align 8
  %129 = load %struct.kd_storage*, %struct.kd_storage** %20, align 8
  %130 = getelementptr inbounds %struct.kd_storage, %struct.kd_storage* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %17, align 8
  br label %134

132:                                              ; preds = %116
  store %struct.kd_storage* null, %struct.kd_storage** %20, align 8
  %133 = load i64, i64* @EVENTS_PER_STORAGE_UNIT, align 8
  store i64 %133, i64* %17, align 8
  br label %134

134:                                              ; preds = %132, %125
  %135 = load %struct.kd_storage*, %struct.kd_storage** %20, align 8
  %136 = icmp eq %struct.kd_storage* %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* %17, align 8
  %139 = load i64, i64* @EVENTS_PER_STORAGE_UNIT, align 8
  %140 = icmp uge i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137, %134
  %142 = load i64, i64* %9, align 8
  %143 = call i64 @allocate_storage_unit(i64 %142)
  %144 = load i64, i64* @FALSE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %198

147:                                              ; preds = %141
  br label %116

148:                                              ; preds = %137
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %17, align 8
  %151 = add i64 %150, 1
  %152 = load %struct.kd_storage*, %struct.kd_storage** %20, align 8
  %153 = getelementptr inbounds %struct.kd_storage, %struct.kd_storage* %152, i32 0, i32 0
  %154 = call i32 @OSCompareAndSwap(i64 %149, i64 %151, i64* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %148
  br label %116

157:                                              ; preds = %148
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.kd_storage*, %struct.kd_storage** %20, align 8
  %160 = getelementptr inbounds %struct.kd_storage, %struct.kd_storage* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load i64, i64* %11, align 8
  %165 = load %struct.kd_storage*, %struct.kd_storage** %20, align 8
  %166 = getelementptr inbounds %struct.kd_storage, %struct.kd_storage* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %163, %157
  %168 = load %struct.kd_storage*, %struct.kd_storage** %20, align 8
  %169 = getelementptr inbounds %struct.kd_storage, %struct.kd_storage* %168, i32 0, i32 3
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i64, i64* %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %171
  store %struct.TYPE_4__* %172, %struct.TYPE_4__** %18, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load i64, i64* %13, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  store i64 %182, i64* %184, align 8
  %185 = load i64, i64* %15, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  store i64 %185, i64* %187, align 8
  %188 = load i64, i64* %16, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 5
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* %9, align 8
  %194 = call i32 @kdbg_set_timestamp_and_cpu(%struct.TYPE_4__* %191, i64 %192, i64 %193)
  %195 = load %struct.kd_storage*, %struct.kd_storage** %20, align 8
  %196 = getelementptr inbounds %struct.kd_storage, %struct.kd_storage* %195, i32 0, i32 2
  %197 = call i32 @OSAddAtomic(i32 1, i32* %196)
  br label %198

198:                                              ; preds = %167, %146, %108
  %199 = call i32 (...) @enable_preemption()
  br label %200

200:                                              ; preds = %198, %103, %93, %63, %48, %36
  %201 = load i64, i64* @kds_waiter, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 4), align 8
  %205 = load i64, i64* @n_storage_threshold, align 8
  %206 = icmp sge i64 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = call i32 (...) @kdbg_wakeup()
  br label %209

209:                                              ; preds = %207, %203, %200
  ret void
}

declare dso_local i64 @typefilter_is_debugid_allowed(i32, i64) #1

declare dso_local i32 @disable_preemption(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.kd_storage* @POINTER_FROM_KDS_PTR(i64) #1

declare dso_local i64 @allocate_storage_unit(i64) #1

declare dso_local i32 @OSCompareAndSwap(i64, i64, i64*) #1

declare dso_local i32 @kdbg_set_timestamp_and_cpu(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local i32 @kdbg_wakeup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
