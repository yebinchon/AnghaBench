; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_ast.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.ledger*, i32, %struct.TYPE_8__*, %struct.ledger* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32 }
%struct.ledger = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Ledger AST for %p\0A\00", align 1
@TASK_RUSECPU_FLAGS_PERTHR_LIMIT = common dso_local global i64 0, align 8
@TH_OPT_PRVT_CPULIMIT = common dso_local global i32 0, align 4
@TH_OPT_PROC_CPULIMIT = common dso_local global i32 0, align 4
@THREAD_CPULIMIT_EXCEPTION = common dso_local global i32 0, align 4
@THREAD_CPULIMIT_DISABLE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ledger_ast(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.ledger*, align 8
  %4 = alloca %struct.ledger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load %struct.ledger*, %struct.ledger** %16, align 8
  store %struct.ledger* %17, %struct.ledger** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %11, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = bitcast %struct.TYPE_7__* %21 to i8*
  %23 = call i32 @lprintf(i8* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = call %struct.TYPE_7__* (...) @current_thread()
  %30 = icmp eq %struct.TYPE_7__* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  br label %33

33:                                               ; preds = %179, %171, %1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %35 = call i32 @task_lock(%struct.TYPE_8__* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = call i32 @task_unlock(%struct.TYPE_8__* %45)
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @TASK_RUSECPU_FLAGS_PERTHR_LIMIT, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %33
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TH_OPT_PRVT_CPULIMIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %51
  %59 = call i32 @thread_get_cpulimit(i32* %14, i64* %12, i64* %13)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TH_OPT_PROC_CPULIMIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70, %66, %58
  %75 = load i32, i32* @THREAD_CPULIMIT_EXCEPTION, align 4
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @thread_set_cpulimit(i32 %75, i64 %76, i64 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @TH_OPT_PROC_CPULIMIT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  br label %87

87:                                               ; preds = %74, %70
  br label %120

88:                                               ; preds = %51, %33
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @TASK_RUSECPU_FLAGS_PERTHR_LIMIT, align 8
  %91 = and i64 %89, %90
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TH_OPT_PROC_CPULIMIT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %93
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TH_OPT_PRVT_CPULIMIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32, i32* @THREAD_CPULIMIT_DISABLE, align 4
  %110 = call i32 @thread_set_cpulimit(i32 %109, i64 0, i64 0)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TH_OPT_PROC_CPULIMIT, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  br label %119

119:                                              ; preds = %100, %93, %88
  br label %120

120:                                              ; preds = %119, %87
  %121 = load %struct.ledger*, %struct.ledger** %3, align 8
  %122 = icmp eq %struct.ledger* %121, null
  br i1 %122, label %138, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133, %128, %123, %120
  br label %181

139:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  %140 = call i64 (...) @mach_absolute_time()
  store i64 %140, i64* %6, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load %struct.ledger*, %struct.ledger** %142, align 8
  store %struct.ledger* %143, %struct.ledger** %4, align 8
  %144 = load %struct.ledger*, %struct.ledger** %4, align 8
  %145 = call i64 @LEDGER_VALID(%struct.ledger* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load %struct.ledger*, %struct.ledger** %4, align 8
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @ledger_check_needblock(%struct.ledger* %148, i64 %149)
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %147, %139
  %154 = load %struct.ledger*, %struct.ledger** %3, align 8
  %155 = load i64, i64* %6, align 8
  %156 = call i32 @ledger_check_needblock(%struct.ledger* %154, i64 %155)
  %157 = load i32, i32* %5, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %153
  %162 = load %struct.ledger*, %struct.ledger** %4, align 8
  %163 = call i64 @LEDGER_VALID(%struct.ledger* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load %struct.ledger*, %struct.ledger** %4, align 8
  %167 = call i64 @ledger_perform_blocking(%struct.ledger* %166)
  store i64 %167, i64* %10, align 8
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* @KERN_SUCCESS, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %33

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %161
  %174 = load %struct.ledger*, %struct.ledger** %3, align 8
  %175 = call i64 @ledger_perform_blocking(%struct.ledger* %174)
  store i64 %175, i64* %10, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* @KERN_SUCCESS, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %33

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %138, %180, %153
  ret void
}

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_7__* @current_thread(...) #1

declare dso_local i32 @task_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @thread_get_cpulimit(i32*, i64*, i64*) #1

declare dso_local i32 @thread_set_cpulimit(i32, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i64 @LEDGER_VALID(%struct.ledger*) #1

declare dso_local i32 @ledger_check_needblock(%struct.ledger*, i64) #1

declare dso_local i64 @ledger_perform_blocking(%struct.ledger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
