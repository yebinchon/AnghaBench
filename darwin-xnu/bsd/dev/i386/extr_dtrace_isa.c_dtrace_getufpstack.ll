; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getufpstack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getufpstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@cpu_core = common dso_local global %struct.TYPE_15__* null, align 8
@CPU = common dso_local global %struct.TYPE_16__* null, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@RETURN_OFFSET64 = common dso_local global i64 0, align 8
@RETURN_OFFSET = common dso_local global i64 0, align 8
@DATAMODEL_NATIVE = common dso_local global i64 0, align 8
@EBP = common dso_local global i64 0, align 8
@EIP = common dso_local global i64 0, align 8
@REG_FP = common dso_local global i64 0, align 8
@REG_PC = common dso_local global i64 0, align 8
@lwp = common dso_local global %struct.TYPE_14__* null, align 8
@p = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_getufpstack(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call i32* (...) @current_thread()
  store i32* %13, i32** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cpu_core, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CPU, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store i32* %19, i32** %11, align 8
  %20 = call i32 (...) @current_proc()
  %21 = call i64 @proc_is64bit(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load volatile i32, i32* %22, align 4
  %24 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %123

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %123

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %115

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @find_user_regs(i32* %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %8, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = icmp eq %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %115

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
  br label %123

53:                                               ; preds = %43
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @dtrace_adjust_stack(i8*** %4, i32* %6, i64* %9, i64 %62)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %53
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %5, align 8
  store i8* null, i8** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %123

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %113, %72
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %73
  %77 = load i64, i64* %9, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %4, align 8
  store i8* %78, i8** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %5, align 8
  store i8* %82, i8** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %114

90:                                               ; preds = %76
  %91 = load i64, i64* %10, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %114

94:                                               ; preds = %90
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @RETURN_OFFSET64, align 8
  %100 = add i64 %98, %99
  %101 = call i64 @dtrace_fuword64(i64 %100)
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @dtrace_fuword64(i64 %102)
  store i64 %103, i64* %10, align 8
  br label %113

104:                                              ; preds = %94
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @RETURN_OFFSET, align 8
  %107 = add i64 %105, %106
  %108 = call i8* @dtrace_fuword32(i64 %107)
  %109 = ptrtoint i8* %108 to i64
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i8* @dtrace_fuword32(i64 %110)
  %112 = ptrtoint i8* %111 to i64
  store i64 %112, i64* %10, align 8
  br label %113

113:                                              ; preds = %104, %97
  br label %73

114:                                              ; preds = %93, %89, %73
  br label %115

115:                                              ; preds = %114, %42, %35
  br label %116

116:                                              ; preds = %120, %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %6, align 4
  %119 = icmp sgt i32 %117, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i8**, i8*** %4, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i32 1
  store i8** %122, i8*** %4, align 8
  store i8* null, i8** %121, align 8
  br label %116

123:                                              ; preds = %27, %31, %52, %70, %116
  ret void
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i64 @find_user_regs(i32*) #1

declare dso_local i64 @dtrace_proc_selfpid(...) #1

declare dso_local i32 @dtrace_adjust_stack(i8***, i32*, i64*, i64) #1

declare dso_local i64 @dtrace_fuword64(i64) #1

declare dso_local i8* @dtrace_fuword32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
