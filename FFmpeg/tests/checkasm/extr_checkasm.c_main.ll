; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_checkasm.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_checkasm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32, i32, i32 }

@tests = common dso_local global %struct.TYPE_4__* null, align 8
@cpus = common dso_local global %struct.TYPE_6__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"checkasm: no tests to perform\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--bench\00", align 1
@state = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--test=\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"checkasm: using random seed %u\0A\00", align 1
@checkasm_lfg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"checkasm: %d of %d tests have failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"checkasm: all %d tests passed\0A\00", align 1
@checkasm_checked_call = common dso_local global i32 0, align 4
@checkasm_checked_call_vfp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @av_get_random_seed()
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpus, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %72, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %77

28:                                               ; preds = %25
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %28
  %35 = call i64 (...) @bench_init()
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %132

38:                                               ; preds = %34
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 7
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 61
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 0), align 8
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 0), align 8
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 5), align 4
  br label %54

53:                                               ; preds = %38
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 0), align 8
  br label %54

54:                                               ; preds = %53, %46
  br label %72

55:                                               ; preds = %28
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strncmp(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 7
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 1), align 8
  br label %71

66:                                               ; preds = %55
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strtoul(i8* %69, i32* null, i32 10)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %4, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %5, align 8
  br label %25

77:                                               ; preds = %25
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @av_lfg_init(i32* @checkasm_lfg, i32 %81)
  %83 = call i32 @check_cpu_flag(i32* null, i64 0)
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %106, %77
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpus, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %84
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpus, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpus, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @check_cpu_flag(i32* %98, i64 %104)
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %84

109:                                              ; preds = %84
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 2), align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* @stderr, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 2), align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 3), align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %115)
  store i32 1, i32* %8, align 4
  br label %127

117:                                              ; preds = %109
  %118 = load i32, i32* @stderr, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 3), align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 0), align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 4), align 8
  %125 = call i32 @print_benchs(i32 %124)
  br label %126

126:                                              ; preds = %123, %117
  br label %127

127:                                              ; preds = %126, %112
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 4), align 8
  %129 = call i32 @destroy_func_tree(i32 %128)
  %130 = call i32 (...) @bench_uninit()
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %37, %21
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @av_get_random_seed(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @bench_init(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @av_lfg_init(i32*, i32) #1

declare dso_local i32 @check_cpu_flag(i32*, i64) #1

declare dso_local i32 @print_benchs(i32) #1

declare dso_local i32 @destroy_func_tree(i32) #1

declare dso_local i32 @bench_uninit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
