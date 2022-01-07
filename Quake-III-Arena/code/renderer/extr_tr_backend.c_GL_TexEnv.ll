; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_GL_TexEnv.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_GL_TexEnv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32)* }

@glState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GL_TEXTURE_ENV = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV_MODE = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"GL_TexEnv: invalid env '%d' passed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_TexEnv(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 1), align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 1), align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %32 [
    i32 129, label %16
    i32 128, label %20
    i32 130, label %24
    i32 131, label %28
  ]

16:                                               ; preds = %10
  %17 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %18 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %19 = call i32 @qglTexEnvf(i32 %17, i32 %18, i32 129)
  br label %37

20:                                               ; preds = %10
  %21 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %22 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %23 = call i32 @qglTexEnvf(i32 %21, i32 %22, i32 128)
  br label %37

24:                                               ; preds = %10
  %25 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %26 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %27 = call i32 @qglTexEnvf(i32 %25, i32 %26, i32 130)
  br label %37

28:                                               ; preds = %10
  %29 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %30 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %31 = call i32 @qglTexEnvf(i32 %29, i32 %30, i32 131)
  br label %37

32:                                               ; preds = %10
  %33 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %34 = load i32, i32* @ERR_DROP, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 %33(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %9, %32, %28, %24, %20, %16
  ret void
}

declare dso_local i32 @qglTexEnvf(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
