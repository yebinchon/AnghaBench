; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_action_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_action_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__**, i32, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_19__*, i32**, i32*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_14__ }
%struct.TYPE_21__ = type { i64, i32*, %struct.TYPE_21__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }

@DTRACE_NHELPER_ACTIONS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dtrace_helper_actions_max = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DTRACEACT_DIFEXPR = common dso_local global i64 0, align 8
@dtrace_helptrace_nlocals = common dso_local global i64 0, align 8
@dtrace_helptrace_next = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.TYPE_20__*)* @dtrace_helper_action_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_helper_action_add(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DTRACE_NHELPER_ACTIONS, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %190

25:                                               ; preds = %19
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %8, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %31, i64 %33
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %10, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %12, align 8
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %50, %25
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %40 = icmp ne %struct.TYPE_19__* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = icmp eq %struct.TYPE_19__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %54

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %10, align 8
  br label %38

54:                                               ; preds = %48, %38
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @dtrace_helper_actions_max, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ENOSPC, align 4
  store i32 %59, i32* %4, align 4
  br label %190

60:                                               ; preds = %54
  %61 = load i32, i32* @KM_SLEEP, align 4
  %62 = call i8* @kmem_zalloc(i32 40, i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %9, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %13, align 8
  %73 = icmp ne %struct.TYPE_17__* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %60
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @dtrace_difo_hold(i32* %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  store i32* %87, i32** %89, align 8
  br label %90

90:                                               ; preds = %74, %60
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %11, align 8
  br label %94

94:                                               ; preds = %113, %90
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %96 = icmp ne %struct.TYPE_21__* %95, null
  br i1 %96, label %97, label %117

97:                                               ; preds = %94
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DTRACEACT_DIFEXPR, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %185

104:                                              ; preds = %97
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %185

110:                                              ; preds = %104
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  store %struct.TYPE_21__* %116, %struct.TYPE_21__** %11, align 8
  br label %94

117:                                              ; preds = %94
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = sext i32 %118 to i64
  %122 = mul i64 8, %121
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* @KM_SLEEP, align 4
  %125 = call i8* @kmem_zalloc(i32 %123, i32 %124)
  %126 = bitcast i8* %125 to i32**
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  store i32** %126, i32*** %128, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  store %struct.TYPE_21__* %131, %struct.TYPE_21__** %11, align 8
  store i32 0, i32* %16, align 4
  br label %132

132:                                              ; preds = %150, %117
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %134 = icmp ne %struct.TYPE_21__* %133, null
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @dtrace_difo_hold(i32* %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 2
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32*, i32** %145, i64 %148
  store i32* %142, i32** %149, align 8
  br label %150

150:                                              ; preds = %135
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %152, align 8
  store %struct.TYPE_21__* %153, %struct.TYPE_21__** %11, align 8
  br label %132

154:                                              ; preds = %132
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %156 = call i32 @dtrace_helper_validate(%struct.TYPE_19__* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  br label %185

159:                                              ; preds = %154
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %161 = icmp eq %struct.TYPE_19__* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %166, i64 %168
  store %struct.TYPE_19__* %163, %struct.TYPE_19__** %169, align 8
  br label %174

170:                                              ; preds = %159
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  store %struct.TYPE_19__* %171, %struct.TYPE_19__** %173, align 8
  br label %174

174:                                              ; preds = %170, %162
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @dtrace_helptrace_nlocals, align 8
  %179 = icmp sgt i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* @dtrace_helptrace_nlocals, align 8
  store i64 0, i64* @dtrace_helptrace_next, align 8
  br label %184

184:                                              ; preds = %180, %174
  store i32 0, i32* %4, align 4
  br label %190

185:                                              ; preds = %158, %109, %103
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %188 = call i32 @dtrace_helper_action_destroy(%struct.TYPE_19__* %186, %struct.TYPE_16__* %187)
  %189 = load i32, i32* @EINVAL, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %185, %184, %58, %23
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_difo_hold(i32*) #1

declare dso_local i32 @dtrace_helper_validate(%struct.TYPE_19__*) #1

declare dso_local i32 @dtrace_helper_action_destroy(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
