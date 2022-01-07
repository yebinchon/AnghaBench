; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_isa.c_dtrace_getufpstack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_isa.c_dtrace_getufpstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@cpu_core = common dso_local global %struct.TYPE_11__* null, align 8
@CPU = common dso_local global %struct.TYPE_12__* null, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_ENTRY = common dso_local global i32 0, align 4
@RETURN_OFFSET64 = common dso_local global i64 0, align 8
@RETURN_OFFSET = common dso_local global i64 0, align 8
@DATAMODEL_NATIVE = common dso_local global i64 0, align 8
@EBP = common dso_local global i64 0, align 8
@EIP = common dso_local global i64 0, align 8
@REG_FP = common dso_local global i64 0, align 8
@REG_PC = common dso_local global i64 0, align 8
@lwp = common dso_local global %struct.TYPE_10__* null, align 8
@p = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_getufpstack(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call i32* (...) @current_thread()
  store i32* %13, i32** %7, align 8
  %14 = call i32 (...) @current_proc()
  %15 = call i64 @proc_is64bit_data(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_core, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CPU, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load volatile i32, i32* %22, align 4
  %24 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %136

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %136

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %128

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @find_user_regs(i32* %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %128

43:                                               ; preds = %36
  %44 = call i64 (...) @dtrace_proc_selfpid()
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8**, i8*** %4, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %4, align 8
  store i8* %45, i8** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %136

53:                                               ; preds = %43
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @get_saved_state_pc(i32* %54)
  store i64 %55, i64* %10, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @get_saved_state_lr(i32* %56)
  store i64 %57, i64* %11, align 8
  %58 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %59 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %53
  %62 = load i64, i64* %10, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %4, align 8
  store i8* %63, i8** %64, align 8
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %5, align 8
  store i8* null, i8** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %136

73:                                               ; preds = %61
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @dtrace_fuword64(i64 %77)
  store i64 %78, i64* %10, align 8
  br label %83

79:                                               ; preds = %73
  %80 = load i64, i64* %11, align 8
  %81 = call i8* @dtrace_fuword32(i64 %80)
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83, %53
  br label %85

85:                                               ; preds = %126, %84
  %86 = load i64, i64* %10, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi i1 [ false, %85 ], [ %90, %88 ]
  br i1 %92, label %93, label %127

93:                                               ; preds = %91
  %94 = load i64, i64* %10, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load i8**, i8*** %4, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %4, align 8
  store i8* %95, i8** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %5, align 8
  store i8* %99, i8** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %127

107:                                              ; preds = %93
  %108 = load i64, i64* %8, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* @RETURN_OFFSET64, align 8
  %113 = add i64 %111, %112
  %114 = call i64 @dtrace_fuword64(i64 %113)
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @dtrace_fuword64(i64 %115)
  store i64 %116, i64* %11, align 8
  br label %126

117:                                              ; preds = %107
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* @RETURN_OFFSET, align 8
  %120 = add i64 %118, %119
  %121 = call i8* @dtrace_fuword32(i64 %120)
  %122 = ptrtoint i8* %121 to i64
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i8* @dtrace_fuword32(i64 %123)
  %125 = ptrtoint i8* %124 to i64
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %117, %110
  br label %85

127:                                              ; preds = %106, %91
  br label %128

128:                                              ; preds = %127, %42, %35
  br label %129

129:                                              ; preds = %133, %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %6, align 4
  %132 = icmp sgt i32 %130, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i8**, i8*** %4, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %4, align 8
  store i8* null, i8** %134, align 8
  br label %129

136:                                              ; preds = %27, %31, %52, %72, %129
  ret void
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i64 @proc_is64bit_data(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i64 @find_user_regs(i32*) #1

declare dso_local i64 @dtrace_proc_selfpid(...) #1

declare dso_local i64 @get_saved_state_pc(i32*) #1

declare dso_local i64 @get_saved_state_lr(i32*) #1

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i64 @dtrace_fuword64(i64) #1

declare dso_local i8* @dtrace_fuword32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
