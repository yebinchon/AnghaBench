; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_systemcalls.c_arm_prepare_u32_syscall_return.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_systemcalls.c_arm_prepare_u32_syscall_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysent = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@ERESTART = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@PSR_CF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"error: setting carry to trigger cerror call\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unix_syscall: unknown return type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysent*, i32*, %struct.TYPE_5__*, i32)* @arm_prepare_u32_syscall_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_prepare_u32_syscall_return(%struct.sysent* %0, i32* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca %struct.sysent*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.sysent* %0, %struct.sysent** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @is_saved_state32(i32* %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_6__* @saved_state32(i32* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ERESTART, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 4
  store i32 %22, i32* %20, align 4
  br label %71

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @EJUSTRETURN, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @PSR_CF, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = call i32 @unix_syscall_return_kprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %69

42:                                               ; preds = %27
  %43 = load %struct.sysent*, %struct.sysent** %5, align 8
  %44 = getelementptr inbounds %struct.sysent, %struct.sysent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %66 [
    i32 134, label %46
    i32 128, label %46
    i32 132, label %46
    i32 135, label %46
    i32 131, label %46
    i32 130, label %46
    i32 129, label %46
    i32 133, label %61
  ]

46:                                               ; preds = %42, %42, %42, %42, %42, %42, %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %68

61:                                               ; preds = %42
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 4
  br label %68

66:                                               ; preds = %42
  %67 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61, %46
  br label %69

69:                                               ; preds = %68, %30
  br label %70

70:                                               ; preds = %69, %23
  br label %71

71:                                               ; preds = %70, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_saved_state32(i32*) #1

declare dso_local %struct.TYPE_6__* @saved_state32(i32*) #1

declare dso_local i32 @unix_syscall_return_kprintf(i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
