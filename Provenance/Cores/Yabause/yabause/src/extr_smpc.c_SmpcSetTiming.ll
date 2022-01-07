; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcSetTiming.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcSetTiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SmpcRegs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"smpc\09: MSHON not implemented\0A\00", align 1
@SmpcInternalVars = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"smpc\09: CDON not implemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"smpc\09: CDOFF not implemented\0A\00", align 1
@intback_wait_for_line = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"smpc\09: unimplemented command: %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SmpcSetTiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SmpcSetTiming() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 8
  switch i32 %3, label %97 [
    i32 0, label %4
    i32 8, label %8
    i32 9, label %12
    i32 13, label %16
    i32 14, label %16
    i32 15, label %16
    i32 16, label %19
    i32 23, label %85
    i32 2, label %88
    i32 3, label %91
    i32 6, label %94
    i32 7, label %94
    i32 24, label %94
    i32 25, label %94
    i32 26, label %94
  ]

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  br label %104

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  br label %104

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  br label %104

16:                                               ; preds = %0, %0, %0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %104

19:                                               ; preds = %0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 16000, i32* %26, align 4
  store i32 1, i32* @intback_wait_for_line, align 4
  br label %84

27:                                               ; preds = %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 250, i32* %44, align 4
  br label %83

45:                                               ; preds = %34, %27
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 250, i32* %62, align 4
  br label %82

63:                                               ; preds = %52, %45
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 16000, i32* %80, align 4
  store i32 1, i32* @intback_wait_for_line, align 4
  br label %81

81:                                               ; preds = %78, %70, %63
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %42
  br label %84

84:                                               ; preds = %83, %24
  br label %104

85:                                               ; preds = %0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  br label %104

88:                                               ; preds = %0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  br label %104

91:                                               ; preds = %0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %104

94:                                               ; preds = %0, %0, %0, %0, %0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  br label %104

97:                                               ; preds = %0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %4, %8, %12, %16, %84, %85, %88, %91, %94, %97
  ret void
}

declare dso_local i32 @SMPCLOG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
