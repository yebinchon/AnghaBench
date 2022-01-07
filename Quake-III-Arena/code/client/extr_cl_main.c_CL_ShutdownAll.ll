; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ShutdownAll.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ShutdownAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*)* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@re = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@qfalse = common dso_local global i8* null, align 8
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ShutdownAll() #0 {
  %1 = call i32 (...) @S_DisableSounds()
  %2 = call i32 (...) @CL_ShutdownCGame()
  %3 = call i32 (...) @CL_ShutdownUI()
  %4 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %5 = icmp ne i32 (i8*)* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %8 = load i8*, i8** @qfalse, align 8
  %9 = call i32 %7(i8* %8)
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i8*, i8** @qfalse, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 3), align 8
  %12 = load i8*, i8** @qfalse, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 2), align 8
  %13 = load i8*, i8** @qfalse, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 1), align 8
  %14 = load i8*, i8** @qfalse, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @S_DisableSounds(...) #1

declare dso_local i32 @CL_ShutdownCGame(...) #1

declare dso_local i32 @CL_ShutdownUI(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
