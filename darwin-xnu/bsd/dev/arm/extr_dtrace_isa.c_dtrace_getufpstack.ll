; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_getufpstack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_getufpstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }

@cpu_core = common dso_local global %struct.TYPE_13__* null, align 8
@CPU = common dso_local global %struct.TYPE_14__* null, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_ENTRY = common dso_local global i32 0, align 4
@RETURN_OFFSET = common dso_local global i64 0, align 8
@DATAMODEL_NATIVE = common dso_local global i64 0, align 8
@EBP = common dso_local global i64 0, align 8
@EIP = common dso_local global i64 0, align 8
@REG_FP = common dso_local global i64 0, align 8
@REG_PC = common dso_local global i64 0, align 8
@lwp = common dso_local global %struct.TYPE_12__* null, align 8
@p = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_getufpstack(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32* (...) @current_thread()
  store i32* %12, i32** %7, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cpu_core, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @CPU, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load volatile i32, i32* %19, align 4
  %21 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %117

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %117

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %109

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @find_user_regs(i32* %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %8, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = icmp eq %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %109

40:                                               ; preds = %33
  %41 = call i64 (...) @dtrace_proc_selfpid()
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %4, align 8
  store i8* %42, i8** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %117

50:                                               ; preds = %40
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %58 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %50
  %61 = load i64, i64* %9, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %4, align 8
  store i8* %62, i8** %63, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %5, align 8
  store i8* null, i8** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %117

72:                                               ; preds = %60
  %73 = load i64, i64* %10, align 8
  %74 = call i8* @dtrace_fuword32(i64 %73)
  %75 = ptrtoint i8* %74 to i64
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %72, %50
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ false, %77 ], [ %82, %80 ]
  br i1 %84, label %85, label %108

85:                                               ; preds = %83
  %86 = load i64, i64* %9, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %4, align 8
  store i8* %87, i8** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %5, align 8
  store i8* %91, i8** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %108

99:                                               ; preds = %85
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @RETURN_OFFSET, align 8
  %102 = add i64 %100, %101
  %103 = call i8* @dtrace_fuword32(i64 %102)
  %104 = ptrtoint i8* %103 to i64
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i8* @dtrace_fuword32(i64 %105)
  %107 = ptrtoint i8* %106 to i64
  store i64 %107, i64* %10, align 8
  br label %77

108:                                              ; preds = %98, %83
  br label %109

109:                                              ; preds = %108, %39, %32
  br label %110

110:                                              ; preds = %114, %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %6, align 4
  %113 = icmp sgt i32 %111, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i8**, i8*** %4, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i32 1
  store i8** %116, i8*** %4, align 8
  store i8* null, i8** %115, align 8
  br label %110

117:                                              ; preds = %24, %28, %49, %71, %110
  ret void
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i64 @find_user_regs(i32*) #1

declare dso_local i64 @dtrace_proc_selfpid(...) #1

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i8* @dtrace_fuword32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
