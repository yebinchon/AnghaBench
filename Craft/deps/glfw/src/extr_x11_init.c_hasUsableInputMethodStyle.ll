; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_init.c_hasUsableInputMethodStyle.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_init.c_hasUsableInputMethodStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32* }

@GL_FALSE = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@XNQueryInputStyle = common dso_local global i32 0, align 4
@XIMPreeditNothing = common dso_local global i32 0, align 4
@XIMStatusNothing = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hasUsableInputMethodStyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hasUsableInputMethodStyle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = load i32, i32* @GL_FALSE, align 4
  store i32 %5, i32* %3, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0, i32 0), align 4
  %7 = load i32, i32* @XNQueryInputStyle, align 4
  %8 = call i32* @XGetIMValues(i32 %6, i32 %7, %struct.TYPE_7__** %4, i32* null)
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @GL_FALSE, align 4
  store i32 %11, i32* %1, align 4
  br label %41

12:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %2, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XIMPreeditNothing, align 4
  %28 = load i32, i32* @XIMStatusNothing, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @GL_TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %2, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %13

37:                                               ; preds = %31, %13
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = call i32 @XFree(%struct.TYPE_7__* %38)
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %37, %10
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32* @XGetIMValues(i32, i32, %struct.TYPE_7__**, i32*) #1

declare dso_local i32 @XFree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
