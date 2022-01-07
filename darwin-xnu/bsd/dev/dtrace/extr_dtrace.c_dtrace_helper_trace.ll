; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_trace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32, i32, i32* }

@cpu_core = common dso_local global %struct.TYPE_13__* null, align 8
@CPU = common dso_local global %struct.TYPE_14__* null, align 8
@dtrace_helptrace_enabled = common dso_local global i32 0, align 4
@dtrace_helptrace_nlocals = common dso_local global i32 0, align 4
@dtrace_helptrace_next = common dso_local global i32 0, align 4
@dtrace_helptrace_bufsize = common dso_local global i32 0, align 4
@dtrace_helptrace_buffer = common dso_local global i32* null, align 8
@DTRACE_MSTATE_FLTOFFS = common dso_local global i32 0, align 4
@NCPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, %struct.TYPE_9__*, i32)* @dtrace_helper_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_helper_trace(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cpu_core, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @CPU, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @dtrace_helptrace_enabled, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %156

26:                                               ; preds = %4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @dtrace_helptrace_nlocals, align 4
  %31 = icmp sle i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32, i32* @dtrace_helptrace_nlocals, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = add i64 40, %36
  %38 = sub i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %54, %26
  %41 = load i32, i32* @dtrace_helptrace_next, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @dtrace_helptrace_bufsize, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %11, align 4
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @dtrace_cas32(i32* @dtrace_helptrace_next, i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %40, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32*, i32** @dtrace_helptrace_buffer, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = bitcast i32* %69 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %13, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 6
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DTRACE_MSTATE_FLTOFFS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %65
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  br label %93

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i32 [ %91, %88 ], [ -1, %92 ]
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @DTRACE_FLAGS2FLT(i32 %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cpu_core, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** @CPU, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %153, %93
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %110
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %119, i64 %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  store %struct.TYPE_10__* %123, %struct.TYPE_10__** %15, align 8
  %124 = icmp eq %struct.TYPE_10__* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %153

126:                                              ; preds = %116
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* @NCPU, align 8
  %132 = trunc i64 %131 to i32
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = icmp uge i64 %130, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @ASSERT(i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i32*
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** @CPU, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  br label %153

153:                                              ; preds = %126, %125
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %110

156:                                              ; preds = %25, %110
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_cas32(i32*, i32, i32) #1

declare dso_local i32 @DTRACE_FLAGS2FLT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
