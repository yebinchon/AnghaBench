; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_pid_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_pid_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32, i64, i64, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32* }

@PROC_NULL = common dso_local global %struct.TYPE_21__* null, align 8
@CS_KILL = common dso_local global i32 0, align 4
@CS_HARD = common dso_local global i32 0, align 4
@DTRACE_NCLIENTS = common dso_local global i32 0, align 4
@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"process doesn't allow invalid code pages, failing to install fasttrap probe\0A\00", align 1
@FASTTRAP_ENABLE_FAIL = common dso_local global i32 0, align 4
@FASTTRAP_ENABLE_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @fasttrap_pid_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_pid_enable(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %8, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %16 = icmp ne %struct.TYPE_22__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = call i32 @lck_mtx_lock(i32* %36)
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = call i32 @lck_mtx_unlock(i32* %47)
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %182

56:                                               ; preds = %3
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_21__* @sprlock(i32 %59)
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %9, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PROC_NULL, align 8
  %62 = icmp eq %struct.TYPE_21__* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %182

64:                                               ; preds = %56
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CS_KILL, align 4
  %69 = load i32, i32* @CS_HARD, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %116

73:                                               ; preds = %64
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %75 = call i32 @proc_unlock(%struct.TYPE_21__* %74)
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %100, %73
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @DTRACE_NCLIENTS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = call %struct.TYPE_23__* @dtrace_state_get(i32 %81)
  store %struct.TYPE_23__* %82, %struct.TYPE_23__** %12, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %84 = icmp eq %struct.TYPE_23__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %100

86:                                               ; preds = %80
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %100

93:                                               ; preds = %86
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %99 = call i32 @mac_proc_check_get_task(i32* %97, %struct.TYPE_21__* %98)
  br label %100

100:                                              ; preds = %93, %92, %85
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %76

103:                                              ; preds = %76
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %105 = call i32 @cs_allow_invalid(%struct.TYPE_21__* %104)
  store i32 %105, i32* %11, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %107 = call i32 @proc_lock(%struct.TYPE_21__* %106)
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %112 = call i32 @sprunlock(%struct.TYPE_21__* %111)
  %113 = load i32, i32* @CE_WARN, align 4
  %114 = call i32 @cmn_err(i32 %113, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %182

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %64
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %123 = call i32 @dtrace_ptss_enable(%struct.TYPE_21__* %122)
  br label %124

124:                                              ; preds = %121, %116
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %126 = call i32 @proc_unlock(%struct.TYPE_21__* %125)
  %127 = call i32 (...) @fasttrap_enable_callbacks()
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %172, %124
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %175

135:                                              ; preds = %128
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @fasttrap_tracepoint_enable(%struct.TYPE_21__* %136, %struct.TYPE_22__* %137, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %171

141:                                              ; preds = %135
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @FASTTRAP_ENABLE_FAIL, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %10, align 4
  br label %154

148:                                              ; preds = %141
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @FASTTRAP_ENABLE_PARTIAL, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @ASSERT(i32 %152)
  br label %154

154:                                              ; preds = %148, %145
  br label %155

155:                                              ; preds = %158, %154
  %156 = load i32, i32* %10, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @fasttrap_tracepoint_disable(%struct.TYPE_21__* %159, %struct.TYPE_22__* %160, i32 %161)
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %10, align 4
  br label %155

165:                                              ; preds = %155
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %167 = call i32 @proc_lock(%struct.TYPE_21__* %166)
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %169 = call i32 @sprunlock(%struct.TYPE_21__* %168)
  %170 = call i32 (...) @fasttrap_disable_callbacks()
  store i32 0, i32* %4, align 4
  br label %182

171:                                              ; preds = %135
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %128

175:                                              ; preds = %128
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %177 = call i32 @proc_lock(%struct.TYPE_21__* %176)
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %179 = call i32 @sprunlock(%struct.TYPE_21__* %178)
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %175, %165, %110, %63, %55
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local %struct.TYPE_21__* @sprlock(i32) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_23__* @dtrace_state_get(i32) #1

declare dso_local i32 @mac_proc_check_get_task(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @cs_allow_invalid(%struct.TYPE_21__*) #1

declare dso_local i32 @proc_lock(%struct.TYPE_21__*) #1

declare dso_local i32 @sprunlock(%struct.TYPE_21__*) #1

declare dso_local i32 @cmn_err(i32, i8*) #1

declare dso_local i32 @dtrace_ptss_enable(%struct.TYPE_21__*) #1

declare dso_local i32 @fasttrap_enable_callbacks(...) #1

declare dso_local i32 @fasttrap_tracepoint_enable(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @fasttrap_tracepoint_disable(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @fasttrap_disable_callbacks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
