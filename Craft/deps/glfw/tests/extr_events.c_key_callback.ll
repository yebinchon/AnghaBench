; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_events.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_events.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"%08x to %i at %0.3f: Key 0x%04x Scancode 0x%04x (%s) (with%s) was %s\0A\00", align 1
@counter = common dso_local global i32 0, align 4
@GLFW_PRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"(( closing %s ))\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.TYPE_3__* @glfwGetWindowUserPointer(i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %11, align 8
  %14 = load i32, i32* @counter, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @counter, align 4
  %16 = sext i32 %14 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call double (...) @glfwGetTime()
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @get_key_name(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = call i8* @get_mods_name(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @get_action_name(i32 %28)
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20, double %21, i32 %22, i32 %23, i8* %25, i8* %27, i8* %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @GLFW_PRESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %53

35:                                               ; preds = %5
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %53 [
    i32 128, label %37
  ]

37:                                               ; preds = %35
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %34, %35, %37
  ret void
}

declare dso_local %struct.TYPE_3__* @glfwGetWindowUserPointer(i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i8* @get_key_name(i32) #1

declare dso_local i8* @get_mods_name(i32) #1

declare dso_local i8* @get_action_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
