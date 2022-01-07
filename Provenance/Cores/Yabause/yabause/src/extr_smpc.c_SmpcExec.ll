; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcExec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@SmpcInternalVars = common dso_local global %struct.TYPE_6__* null, align 8
@intback_wait_for_line = common dso_local global i64 0, align 8
@yabsys = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SmpcRegs = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"smpc\09: MSHON not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"smpc\09: SSHON\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"smpc\09: SSHOFF\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"smpc\09: SNDON\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"smpc\09: SNDOFF\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"smpc\09: CDON not implemented\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"smpc\09: CDOFF not implemented\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"smpc\09: SYSRES not implemented\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"smpc\09: CKCHG352\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"smpc\09: CKCHG320\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"smpc\09: INTBACK\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"smpc\09: SETSMEM\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"smpc\09: NMIREQ\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"smpc\09: RESENAB\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"smpc\09: RESDISA\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"smpc\09: Command %02X not implemented\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SmpcExec(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %83

7:                                                ; preds = %1
  %8 = load i64, i64* @intback_wait_for_line, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @yabsys, i32 0, i32 0), align 4
  %12 = icmp eq i32 %11, 207
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  store i64 0, i64* @intback_wait_for_line, align 8
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %7
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcInternalVars, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %74 [
    i32 0, label %33
    i32 2, label %35
    i32 3, label %38
    i32 6, label %41
    i32 7, label %44
    i32 8, label %47
    i32 9, label %49
    i32 13, label %51
    i32 14, label %53
    i32 15, label %56
    i32 16, label %59
    i32 23, label %62
    i32 24, label %65
    i32 25, label %68
    i32 26, label %71
  ]

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %79

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 (...) @SmpcSSHON()
  br label %79

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 (...) @SmpcSSHOFF()
  br label %79

41:                                               ; preds = %29
  %42 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 (...) @SmpcSNDON()
  br label %79

44:                                               ; preds = %29
  %45 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 (...) @SmpcSNDOFF()
  br label %79

47:                                               ; preds = %29
  %48 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %79

49:                                               ; preds = %29
  %50 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %79

51:                                               ; preds = %29
  %52 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %79

53:                                               ; preds = %29
  %54 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %55 = call i32 (...) @SmpcCKCHG352()
  br label %79

56:                                               ; preds = %29
  %57 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %58 = call i32 (...) @SmpcCKCHG320()
  br label %79

59:                                               ; preds = %29
  %60 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %61 = call i32 (...) @SmpcINTBACK()
  br label %79

62:                                               ; preds = %29
  %63 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %64 = call i32 (...) @SmpcSETSMEM()
  br label %79

65:                                               ; preds = %29
  %66 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %67 = call i32 (...) @SmpcNMIREQ()
  br label %79

68:                                               ; preds = %29
  %69 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %70 = call i32 (...) @SmpcRESENAB()
  br label %79

71:                                               ; preds = %29
  %72 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %73 = call i32 (...) @SmpcRESDISA()
  br label %79

74:                                               ; preds = %29
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @SMPCLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %71, %68, %65, %62, %59, %56, %53, %51, %49, %47, %44, %41, %38, %35, %33
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %17
  br label %83

83:                                               ; preds = %82, %1
  ret void
}

declare dso_local i32 @SMPCLOG(i8*, ...) #1

declare dso_local i32 @SmpcSSHON(...) #1

declare dso_local i32 @SmpcSSHOFF(...) #1

declare dso_local i32 @SmpcSNDON(...) #1

declare dso_local i32 @SmpcSNDOFF(...) #1

declare dso_local i32 @SmpcCKCHG352(...) #1

declare dso_local i32 @SmpcCKCHG320(...) #1

declare dso_local i32 @SmpcINTBACK(...) #1

declare dso_local i32 @SmpcSETSMEM(...) #1

declare dso_local i32 @SmpcNMIREQ(...) #1

declare dso_local i32 @SmpcRESENAB(...) #1

declare dso_local i32 @SmpcRESDISA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
