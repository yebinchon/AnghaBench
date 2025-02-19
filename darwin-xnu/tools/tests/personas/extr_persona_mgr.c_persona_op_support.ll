; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_mgr.c_persona_op_support.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_mgr.c_persona_op_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Persona subsystem is supported (id=%d)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Persona subsystem is not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @persona_op_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @persona_op_support() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  %4 = call i32 @kpersona_get(i32* %2)
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOSYS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %1, align 4
  br label %18

14:                                               ; preds = %7
  %15 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i64, i64* @ENOSYS, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @kpersona_get(i32*) #1

declare dso_local i32 @info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
