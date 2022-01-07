; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_KeyMove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_KeyMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i32 }

@in_speed = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@cl_run = common dso_local global %struct.TYPE_9__* null, align 8
@BUTTON_WALKING = common dso_local global i32 0, align 4
@in_strafe = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@in_right = common dso_local global i32 0, align 4
@in_left = common dso_local global i32 0, align 4
@in_moveright = common dso_local global i32 0, align 4
@in_moveleft = common dso_local global i32 0, align 4
@in_up = common dso_local global i32 0, align 4
@in_down = common dso_local global i32 0, align 4
@in_forward = common dso_local global i32 0, align 4
@in_back = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_KeyMove(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @in_speed, i32 0, i32 0), align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cl_run, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  store i32 127, i32* %3, align 4
  %14 = load i32, i32* @BUTTON_WALKING, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @BUTTON_WALKING, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  store i32 64, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %13
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @in_strafe, i32 0, i32 0), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @CL_KeyState(i32* @in_right)
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @CL_KeyState(i32* @in_left)
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %29, %26
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @CL_KeyState(i32* @in_moveright)
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @CL_KeyState(i32* @in_moveleft)
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @CL_KeyState(i32* @in_up)
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @CL_KeyState(i32* @in_down)
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @CL_KeyState(i32* @in_forward)
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @CL_KeyState(i32* @in_back)
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i8* @ClampChar(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i8* @ClampChar(i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i8* @ClampChar(i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  ret void
}

declare dso_local i32 @CL_KeyState(i32*) #1

declare dso_local i8* @ClampChar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
