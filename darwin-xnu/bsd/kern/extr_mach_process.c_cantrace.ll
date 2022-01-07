; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_process.c_cantrace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_process.c_cantrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@P_LTRACED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@P_SUGID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@P_LNOATTACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cantrace(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %5, align 4
  br label %80

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @P_LTRACED, align 4
  %26 = call i64 @ISSET(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EBUSY, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %5, align 4
  br label %80

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @kauth_cred_getruid(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = call i32 @proc_ucred(%struct.TYPE_9__* %34)
  %36 = call i64 @kauth_cred_getruid(i32 %35)
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @P_SUGID, align 4
  %43 = call i64 @ISSET(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38, %31
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = call i32 @suser(i32 %46, i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %5, align 4
  br label %80

54:                                               ; preds = %45, %38
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @P_LTRACED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = call i64 @isinferior(%struct.TYPE_9__* %62, %struct.TYPE_9__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EPERM, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %5, align 4
  br label %80

69:                                               ; preds = %61, %54
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @P_LNOATTACH, align 4
  %74 = call i64 @ISSET(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EBUSY, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %5, align 4
  br label %80

79:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %76, %66, %51, %28, %18
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i64 @kauth_cred_getruid(i32) #1

declare dso_local i32 @proc_ucred(%struct.TYPE_9__*) #1

declare dso_local i32 @suser(i32, i32*) #1

declare dso_local i64 @isinferior(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
