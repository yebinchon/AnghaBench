; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_autoconfig.c_CopyParamCallback.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_autoconfig.c_CopyParamCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@M64ERR_SUCCESS = common dso_local global i32 0, align 4
@M64MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unknown source parameter type %i in copy callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @CopyParamCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyParamCallback(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca [1024 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %7, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %67 [
    i32 129, label %14
    i32 131, label %14
    i32 130, label %31
    i32 128, label %48
  ]

14:                                               ; preds = %3, %3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i8*, i32, ...) @ConfigGetParameter(i32 %17, i8* %18, i32 %19, i32* %8, i64 4)
  %21 = load i32, i32* @M64ERR_SUCCESS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, i32, ...) @ConfigSetParameter(i32 %26, i8* %27, i32 %28, i32* %8)
  br label %30

30:                                               ; preds = %23, %14
  br label %71

31:                                               ; preds = %3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32, i8*, i32, ...) @ConfigGetParameter(i32 %34, i8* %35, i32 %36, float* %9, i64 4)
  %38 = load i32, i32* @M64ERR_SUCCESS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i32, i8*, i32, ...) @ConfigSetParameter(i32 %43, i8* %44, i32 %45, float* %9)
  br label %47

47:                                               ; preds = %40, %31
  br label %71

48:                                               ; preds = %3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %55 = call i32 (i32, i8*, i32, ...) @ConfigGetParameter(i32 %51, i8* %52, i32 %53, i8* %54, i32 1024)
  %56 = load i32, i32* @M64ERR_SUCCESS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %65 = call i32 (i32, i8*, i32, ...) @ConfigSetParameter(i32 %61, i8* %62, i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %58, %48
  br label %71

67:                                               ; preds = %3
  %68 = load i32, i32* @M64MSG_ERROR, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @DebugMessage(i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %66, %47, %30
  ret void
}

declare dso_local i32 @ConfigGetParameter(i32, i8*, i32, ...) #1

declare dso_local i32 @ConfigSetParameter(i32, i8*, i32, ...) #1

declare dso_local i32 @DebugMessage(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
