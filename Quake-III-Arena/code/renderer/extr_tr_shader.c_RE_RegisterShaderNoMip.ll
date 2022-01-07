; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_RE_RegisterShaderNoMip.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_RE_RegisterShaderNoMip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@MAX_QPATH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Shader name exceeds MAX_QPATH\0A\00", align 1
@LIGHTMAP_2D = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RE_RegisterShaderNoMip(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = load i64, i64* @MAX_QPATH, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @LIGHTMAP_2D, align 4
  %14 = load i32, i32* @qfalse, align 4
  %15 = call %struct.TYPE_3__* @R_FindShader(i8* %12, i32 %13, i32 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %25

21:                                               ; preds = %11
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %20, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local %struct.TYPE_3__* @R_FindShader(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
